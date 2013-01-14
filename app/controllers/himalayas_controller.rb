class HimalayasController < ApplicationController
  # GET /himalayas
  # GET /himalayas.json
  def index
    @himalayas = Himalaya.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @himalayas }
    end
  end

  # GET /himalayas/1
  # GET /himalayas/1.json
  def show
    @himalaya = Himalaya.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @himalaya }
    end
  end

  # GET /himalayas/new
  # GET /himalayas/new.json
  def new
    @himalaya = Himalaya.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @himalaya }
    end
  end

  # GET /himalayas/1/edit
  def edit
    @himalaya = Himalaya.find(params[:id])
  end

  # POST /himalayas
  # POST /himalayas.json
  def create
    @himalaya = Himalaya.new(params[:himalaya])

    respond_to do |format|
      if @himalaya.save
        format.html { redirect_to @himalaya, notice: 'Himalaya was successfully created.' }
        format.json { render json: @himalaya, status: :created, location: @himalaya }
      else
        format.html { render action: "new" }
        format.json { render json: @himalaya.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /himalayas/1
  # PUT /himalayas/1.json
  def update
    @himalaya = Himalaya.find(params[:id])

    respond_to do |format|
      if @himalaya.update_attributes(params[:himalaya])
        format.html { redirect_to @himalaya, notice: 'Himalaya was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @himalaya.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /himalayas/1
  # DELETE /himalayas/1.json
  def destroy
    @himalaya = Himalaya.find(params[:id])
    @himalaya.destroy

    respond_to do |format|
      format.html { redirect_to himalayas_url }
      format.json { head :no_content }
    end
  end
end
