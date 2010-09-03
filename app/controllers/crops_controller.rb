class CropsController < ApplicationController
  layout nil

  # GET /crops
  # GET /crops.xml
  def index
    @crops = Crop.order(:market_order)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @crops }
    end
  end

  # GET /crops/1
  # GET /crops/1.xml
  def show
    @crop = Crop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @crop }
    end
  end

  # GET /crops/new
  # GET /crops/new.xml
  def new
    @crop = Crop.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @crop }
    end
  end

  # GET /crops/1/edit
  def edit
    @crop = Crop.find(params[:id])
  end

  # POST /crops
  # POST /crops.xml
  def create
    @crop = Crop.new(params[:crop])

    respond_to do |format|
      if @crop.save
        format.html { redirect_to(@crop, :notice => 'Crop was successfully created.') }
        format.xml  { render :xml => @crop, :status => :created, :location => @crop }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @crop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /crops/1
  # PUT /crops/1.xml
  def update
    @crop = Crop.find(params[:id])

    respond_to do |format|
      if @crop.update_attributes(params[:crop])
        format.html { redirect_to(@crop, :notice => 'Crop was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @crop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /crops/1
  # DELETE /crops/1.xml
  def destroy
    @crop = Crop.find(params[:id])
    @crop.destroy

    respond_to do |format|
      format.html { redirect_to(crops_url) }
      format.xml  { head :ok }
    end
  end
end
