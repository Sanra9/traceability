class EntriesController < ApplicationController
 before_action :authenticate_user!

  def index
    @entries = Entry.all
  end

  def import
    Entry.import(params[:attachment],current_user)
    redirect_to root_path, notice: 'Data imported with success'
  end

  def show
    
  end
end
