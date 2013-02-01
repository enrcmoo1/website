class OvalsController < ApplicationController
  # GET /ovals
  # GET /ovals.json
  def index
    @ovals = Oval.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ovals }
    end
  end

  # GET /ovals/1
  # GET /ovals/1.json
  def show
    @oval = Oval.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @oval }
    end
  end

  # GET /ovals/new
  # GET /ovals/new.json
  def new
    @oval = Oval.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @oval }
    end
  end

  # GET /ovals/1/edit
  def edit
    @oval = Oval.find(params[:id])
  end

  # POST /ovals
  # POST /ovals.json
  def create
    @oval = Oval.new(params[:oval])

    respond_to do |format|
      if @oval.save
        format.html { redirect_to @oval, notice: 'Oval was successfully created.' }
        format.json { render json: @oval, status: :created, location: @oval }
      else
        format.html { render action: "new" }
        format.json { render json: @oval.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ovals/1
  # PUT /ovals/1.json
  def update
    @oval = Oval.find(params[:id])

    respond_to do |format|
      if @oval.update_attributes(params[:oval])
        format.html { redirect_to @oval, notice: 'Oval was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @oval.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ovals/1
  # DELETE /ovals/1.json
  def destroy
    @oval = Oval.find(params[:id])
    @oval.destroy

    respond_to do |format|
      format.html { redirect_to ovals_url }
      format.json { head :no_content }
    end
  end
end
