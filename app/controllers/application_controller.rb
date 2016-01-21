class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def active_members
    @active_members ||= Member.where("status_id = 1").order('LOWER(user_name)')
  end

  def active_members_title_filter(title)
    active_members.map do |member|
      member if member.rank.title == title
    end.compact
  end


end
