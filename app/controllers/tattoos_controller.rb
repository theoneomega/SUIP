class TattoosController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  def index

    @tattoos = Tattoo.order('id DESC').paginate(:per_page => 10, :page => params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tattoos }

    end
  end

  # GET /tattoos/1
  # GET /tattoos/1.json
  def show
    @tattoo = Tattoo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tattoo }
    end
  end

  # GET /tattoos/new
  # GET /tattoos/new.json
  def new
    @tattoo = Tattoo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tattoo }
    end
  end

  # GET /tattoos/1/edit
  def edit
    @tattoo = Tattoo.find(params[:id])
  end

  # POST /tattoos
  # POST /tattoos.json
  def create
    @tattoo = Tattoo.new(params[:tattoo])

    respond_to do |format|
      if @tattoo.save
        format.html { redirect_to @tattoo, notice: 'Tattoo was successfully created.' }
        format.json { render json: @tattoo, status: :created, location: @tattoo }
      else
        format.html { render action: "new" }
        format.json { render json: @tattoo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tattoos/1
  # PUT /tattoos/1.json
  def update
    @tattoo = Tattoo.find(params[:id])

    respond_to do |format|
      if @tattoo.update_attributes(params[:tattoo])
        format.html { redirect_to @tattoo, notice: 'Tattoo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tattoo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tattoos/1
  # DELETE /tattoos/1.json
  def destroy
    @tattoo = Tattoo.find(params[:id])
    @tattoo.destroy

    respond_to do |format|
      format.html { redirect_to tattoos_url }
      format.json { head :no_content }
    end
  end
end
