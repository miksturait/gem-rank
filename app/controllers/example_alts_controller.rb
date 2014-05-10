class ExampleAltsController < ApplicationController
  before_action :set_example_alt, only: [:show, :edit, :update, :destroy]

  # GET /example_alts
  # GET /example_alts.json
  def index
    @example_alts = ExampleAlt.all
  end

  # GET /example_alts/1
  # GET /example_alts/1.json
  def show
  end

  # GET /example_alts/new
  def new
    @example_alt = ExampleAlt.new
  end

  # GET /example_alts/1/edit
  def edit
  end

  # POST /example_alts
  # POST /example_alts.json
  def create
    @example_alt = ExampleAlt.new(example_alt_params)

    respond_to do |format|
      if @example_alt.save
        format.html { redirect_to @example_alt, notice: 'Example alt was successfully created.' }
        format.json { render :show, status: :created, location: @example_alt }
      else
        format.html { render :new }
        format.json { render json: @example_alt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /example_alts/1
  # PATCH/PUT /example_alts/1.json
  def update
    respond_to do |format|
      if @example_alt.update(example_alt_params)
        format.html { redirect_to @example_alt, notice: 'Example alt was successfully updated.' }
        format.json { render :show, status: :ok, location: @example_alt }
      else
        format.html { render :edit }
        format.json { render json: @example_alt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /example_alts/1
  # DELETE /example_alts/1.json
  def destroy
    @example_alt.destroy
    respond_to do |format|
      format.html { redirect_to example_alts_url, notice: 'Example alt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_example_alt
      @example_alt = ExampleAlt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def example_alt_params
      params.require(:example_alt).permit(:user_id, :example_id, :description, :votes, :rank)
    end
end
