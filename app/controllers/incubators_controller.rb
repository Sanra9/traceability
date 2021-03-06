class IncubatorsController < ApplicationController
  before_action :authenticate_user!
    def index
      @incubators = current_user.incubators
    end

    def new
      @incubator = Incubator.new
    end

    def create
      @incubator = Incubator.new(incubator_params)
      @incubator.user_id = current_user.id
      if @incubator.save
        redirect_to incubators_path, notice: 'The new incubator has been added with success'
      else
        render :new
      end
    end

    def show
      @incubator = current_user.incubators.find(params[:id])
    end

    private

    def incubator_params
      params.require(:incubator).permit(:serial_code, :user_id)
    end
end
