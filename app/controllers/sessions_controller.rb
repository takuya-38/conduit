class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      reset_session
      log_in user
      redirect_to root_path
    else
      # エラーメッセージを作成する
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
  end
end
