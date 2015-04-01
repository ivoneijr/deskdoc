class UsersDocumentsController < ApplicationController
  before_action :set_users_documents, only: [:show, :edit, :update, :destroy]

  # GET /users_documents
  # GET /users_documents.json
  def index
    @users_documents = UsersDocuments.all
    render json: @users_documents
  end

  # GET /users_documents/1
  # GET /users_documents/1.json
  def show
    format.json { render json: @users_documents }
  end

  # GET /users_documents/new
  def new
    @users_document = UsersDocument.new
  end

  # GET /users_documents/1/edit
  def edit
  end

  # POST /users_documents
  # POST /users_documents.json
  def create
    @users_documents = UsersDocuments.new(users_documents_params)

    respond_to do |format|
      if @users_documents.save
        format.html { redirect_to @users_documents, notice: 'Users document was successfully created.' }
        format.json { render json: @users_documents, status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @users_documents.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_documents/1
  # PATCH/PUT /users_documents/1.json
  def update
    respond_to do |format|
      if @users_documents.update(users_document_params)
        format.html { redirect_to @users_documents, notice: 'Users document was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @users_documents.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_documents/1
  # DELETE /users_documents/1.json
  def destroy
    @users_documents.destroy
    respond_to do |format|
      format.html { redirect_to users_documents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_documents
      @users_documents = UsersDocuments.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_documents_params
      params[:users_documents]
    end
end
