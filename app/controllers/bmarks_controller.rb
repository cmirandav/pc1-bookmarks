class BmarksController < ApplicationController
  before_action :set_bmark, only: [:show, :edit, :update, :destroy]

  # GET /bmarks
  # GET /bmarks.json
  def index
    @bmarks = Bmark.all
  end

  # GET /bmarks/1
  # GET /bmarks/1.json
  def show
  end

  # GET /bmarks/new
  def new
    @bmark = Bmark.new
  end

  # GET /bmarks/1/edit
  def edit
  end

  # POST /bmarks
  # POST /bmarks.json
  def create
    @bmark = Bmark.new(bmark_params)

    respond_to do |format|
      if @bmark.save
        format.html { redirect_to @bmark, notice: 'Bmark was successfully created.' }
        format.json { render :show, status: :created, location: @bmark }
      else
        format.html { render :new }
        format.json { render json: @bmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bmarks/1
  # PATCH/PUT /bmarks/1.json
  def update
    respond_to do |format|
      if @bmark.update(bmark_params)
        format.html { redirect_to @bmark, notice: 'Bmark was successfully updated.' }
        format.json { render :show, status: :ok, location: @bmark }
      else
        format.html { render :edit }
        format.json { render json: @bmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bmarks/1
  # DELETE /bmarks/1.json
  def destroy
    @bmark.destroy
    respond_to do |format|
      format.html { redirect_to bmarks_url, notice: 'Bmark was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bmark
      @bmark = Bmark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bmark_params
      params.require(:bmark).permit(:url, :reference)
    end
end
