class QuotesController < ApplicationController
  load_and_authorize_resource
  before_action :set_quote, only: [:edit, :update, :destroy]

  # GET /quotes
  # GET /quotes.json
  def index
  end

  # GET /quotes/new
  def new
  end

  # GET /quotes/1/edit
  def edit
  end

  # POST /quotes
  # POST /quotes.json
  def create
    puts params
    respond_to do |format|
      if @quote.save
        format.html { redirect_to quotes_url, notice: 'Quote was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /quotes/1
  # PATCH/PUT /quotes/1.json
  def update
    respond_to do |format|
      if @quote.update(quote_params)
        format.html { redirect_to quotes_url, notice: 'Quote was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /quotes/1
  # DELETE /quotes/1.json
  def destroy
    @quote.destroy
    respond_to do |format|
      format.html { redirect_to quotes_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_params
      params.require(:quote).permit(:statement, :said_by, :comment_on, :commented_on)
    end
end
