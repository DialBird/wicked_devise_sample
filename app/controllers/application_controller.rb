class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  add_flash_types :success, :info, :warning, :danger, :notice, :alert

  private

  def complete_profile?
    if current_user.status_id != 2
      redirect_to after_signup_index_path, notice: 'まだログイン処理が完了してません'
    end
  end
end
