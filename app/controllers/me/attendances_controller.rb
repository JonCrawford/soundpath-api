class Me::AttendancesController < ApplicationController
  # before_filter :get_current_user

  def index
    @attendances = current_user.attendances
    json_response(@attendances)
  end

  private

  # FIXME
  def current_user
    @current_user ||= User.first || User.new
  end

end
