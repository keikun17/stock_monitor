class StockFieldsController < ApplicationController
  before_action :set_stock_field, only: [:show, :edit, :update, :destroy]

  # GET /stock_fields
  # GET /stock_fields.json
  def index
    @stock_fields = StockField.all
  end

  # GET /stock_fields/1
  # GET /stock_fields/1.json
  def show
  end

  # GET /stock_fields/new
  def new
    @stock_field = StockField.new
  end

  # GET /stock_fields/1/edit
  def edit
  end

  # POST /stock_fields
  # POST /stock_fields.json
  def create
    @stock_field = StockField.new(stock_field_params)

    respond_to do |format|
      if @stock_field.save
        format.html { redirect_to @stock_field, notice: 'Stock field was successfully created.' }
        format.json { render :show, status: :created, location: @stock_field }
      else
        format.html { render :new }
        format.json { render json: @stock_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_fields/1
  # PATCH/PUT /stock_fields/1.json
  def update
    respond_to do |format|
      if @stock_field.update(stock_field_params)
        format.html { redirect_to @stock_field, notice: 'Stock field was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_field }
      else
        format.html { render :edit }
        format.json { render json: @stock_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_fields/1
  # DELETE /stock_fields/1.json
  def destroy
    @stock_field.destroy
    respond_to do |format|
      format.html { redirect_to stock_fields_url, notice: 'Stock field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_field
      @stock_field = StockField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_field_params
      params.require(:stock_field).permit(:stock_id, :float_value, :string_value, :text_value, :product_field_id)
    end
end
