class IncubatorsController < ApplicationController

    def index
      @incubators = Incubator.all
    end

    def new
      @incubator = Incubator.new
    end
end
