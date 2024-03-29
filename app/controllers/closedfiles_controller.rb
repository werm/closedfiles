class ClosedfilesController < ApplicationController
  # GET /closedfiles
  # GET /closedfiles.json
  
  before_filter :authorize, only: [:edit, :update]  
  helper_method :sort_column, :sort_direction
  def index
    @closedfiles = Closedfile.all
    @closedfiles = Closedfile.search(params[:search]).order(sort_column + ' ' + sort_direction).paginate(:per_page => 50, :page => params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @closedfiles }
      format.js # index.js.erb
    end
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end
  
  private
  def sort_column
    params[:sort] || "file_number"
  end
  
  def sort_direction
    params[:direction] || "asc"
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
