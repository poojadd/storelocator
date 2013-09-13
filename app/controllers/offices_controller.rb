class OfficesController < ApplicationController

  def index
    @offices = Office.all
  end

  def new
    @office = Office.new
  end

  def create
    @office = Office.new(params[:office])
    respond_to do |format|
      if @office.save
        format.html { redirect_to(offices_path, :notice => 'Office address was successfully created.') }
        format.js
      else
        format.html { render :action => "new" }
      end
    end
  end

  def show
    @office = Office.find(params[:id])
  end

end
