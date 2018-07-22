class AfterSignupController < ApplicationController
  include Wicked::Wizard
  steps :common, :address

  def show
    @user = current_user
    render_wizard
  end

  def update
    @user = current_user
    @user.attributes = user_params
    render_wizard @user
  end

  private

  def user_params
    params.require(:user).permit(User::ATTRIBUTES)
  end
end
