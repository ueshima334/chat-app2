class ApplicationController < ActionController::Base
  before_action :authenticate_user!
    #ログイン済ユーザーのみにアクセスを許可し、ログインをしていないユーザーはログイン画面に遷移させる
  before_action :configure_permitted_parameters,if: :devise_controller?

  private

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:name])
    end

  end
