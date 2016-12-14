class AdminUsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /documents
  # GET /documents.json
  def index
    @users = User.all
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
  end

  # GET /documents/new
  def new
    @user = User.new
  end

  # GET /documents/1/edit
  def edit
  end

  # POST /documents
  # POST /documents.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to admin_users_url, notice: 'Document was successfully created.' }
        format.json { render :show, status: :created, location: @user}
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documents/1
  # PATCH/PUT /documents/1.json
  def update
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to admin_users_url, notice: 'Document was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to admin_users_url, notice: 'Document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :role_id)
    end
end
