class EntriesController < ApplicationController

  def index
    @entries = Entry.all
  end

  def import
    Entry.import(params[:file])
    redirect_to root_path, notice: 'Data imported with success'
  end

  def show

  end
end
