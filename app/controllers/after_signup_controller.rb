class AfterSignupController < ApplicationController
  include Wicked::Wizard
  steps :common, :address

  def show
    @user = current_user
    render_wizard
  end

  def update
    @user = current_user
    case step
    when :common
      params[:user][:status_id] = 1
    when :address
      params[:user][:status_id] = 2
    end
    @user.attributes = user_params
    render_wizard @user
  end

  private

  def user_params
    params.require(:user).permit(User::ATTRIBUTES)
  end
end
