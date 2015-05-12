class DocumentsController < ApplicationController

  before_action :set_document, only: [:show, :edit, :update, :destroy]

 # GET /documents
  # GET /documents.json
  def index
    @documents = Document.all
    render json: @documents
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
    @document = Document.find(params[:id])
    render json: @document, root: false
  end

  # GET /documents/new
  def new
    @document = Document.new
  end

  # PATCH/PUT /documents/1
  # PATCH/PUT /documents/1.json
  def update
    if @document.update(document_params)
      render json: @document
    else
      render json: @document.errors, status: :unprocessable_entity
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @document.destroy
    respond_to do |format|
      format.html { redirect_to documents_url, notice: 'Document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_document
      @document = Document.find(params[:id])
      # puts '@@@@@@@@@@'
      # puts  @document.body
    end

    def document_params
      params.require(:document).permit(:body,:title)
    end
end
