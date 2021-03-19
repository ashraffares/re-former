class UsersController < ApplicationController
  def new
    @user = User.new 
  end

  def show; end

  def edit
  end

  def create
    @user = User.new(username: params[:username], email: params[:email], password: params[:password])

    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def user_params
    params.require(:users).permit(:username, :email, :password)
  end

  
  def set_user
    @article = User.find(params[:id])
  end
end
