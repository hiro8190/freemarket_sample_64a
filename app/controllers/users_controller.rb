class UsersController < ApplicationController

  def mypage
  end

  def mypage_list
  end

  def exhibit1
  end

  def show
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def breadcrumb
  end

end
