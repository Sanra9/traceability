class IncubatorsController < ApplicationController

    def index
      @incubators=Incubator.all
    end
end
