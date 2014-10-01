class StockTemplatesController < ApplicationController
  before_action :set_stock_template, only: [:show, :edit, :update, :destroy]

  # GET /stock_templates
  # GET /stock_templates.json
  def index
    @stock_templates = StockTemplate.all
  end

  # GET /stock_templates/1
  # GET /stock_templates/1.json
  def show
  end

  # GET /stock_templates/new
  def new
    @stock_template = StockTemplate.new
  end

  # GET /stock_templates/1/edit
  def edit
  end

  # POST /stock_templates
  # POST /stock_templates.json
  def create
    @stock_template = StockTemplate.new(stock_template_params)

    respond_to do |format|
      if @stock_template.save
        format.html { redirect_to @stock_template, notice: 'Stock template was successfully created.' }
        format.json { render :show, status: :created, location: @stock_template }
      else
        format.html { render :new }
        format.json { render json: @stock_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_templates/1
  # PATCH/PUT /stock_templates/1.json
  def update
    respond_to do |format|
      if @stock_template.update(stock_template_params)
        format.html { redirect_to @stock_template, notice: 'Stock template was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_template }
      else
        format.html { render :edit }
        format.json { render json: @stock_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_templates/1
  # DELETE /stock_templates/1.json
  def destroy
    @stock_template.destroy
    respond_to do |format|
      format.html { redirect_to stock_templates_url, notice: 'Stock template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_template
      @stock_template = StockTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_template_params
      params.require(:stock_template).permit(:name)
    end
end
