class HomeController < ApplicationController
  before_action :complete_profile?

  def index
  end
end
