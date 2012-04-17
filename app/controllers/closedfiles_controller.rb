class ClosedfilesController < ApplicationController
  # GET /closedfiles
  # GET /closedfiles.json
  
  before_filter :authorize, only: [:edit, :update]  
  
  def index
    @closedfiles = Closedfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @closedfiles }
    end
  end

  # GET /closedfiles/1
  # GET /closedfiles/1.json
  def show
    @closedfile = Closedfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @closedfile }
    end
  end

  # GET /closedfiles/new
  # GET /closedfiles/new.json
  def new
    @closedfile = Closedfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @closedfile }
    end
  end

  # GET /closedfiles/1/edit
  def edit
    @closedfile = Closedfile.find(params[:id])
  end

  # POST /closedfiles
  # POST /closedfiles.json
  def create
    @closedfile = Closedfile.new(params[:closedfile])

    respond_to do |format|
      if @closedfile.save
        format.html { redirect_to @closedfile, notice: 'Closedfile was successfully created.' }
        format.json { render json: @closedfile, status: :created, location: @closedfile }
      else
        format.html { render action: "new" }
        format.json { render json: @closedfile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /closedfiles/1
  # PUT /closedfiles/1.json
  def update
    @closedfile = Closedfile.find(params[:id])

    respond_to do |format|
      if @closedfile.update_attributes(params[:closedfile])
        format.html { redirect_to @closedfile, notice: 'Closedfile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @closedfile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /closedfiles/1
  # DELETE /closedfiles/1.json
  def destroy
    @closedfile = Closedfile.find(params[:id])
    @closedfile.destroy

    respond_to do |format|
      format.html { redirect_to closedfiles_url }
      format.json { head :no_content }
    end
  end
end
