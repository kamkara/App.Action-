class MembershipController < ApplicationController
  before_action :authenticate_user!, except: %i[ adherant admin]


  def adherant
  end

  def admin

  end

  def memberslist
  
  end

  def espaceAdmin
    @MembersList = User.where("category = ?", "Adherent" || "organisation").order('created_at desc')
    @MembersMonthly = @MembersList.where(:created_at => (Time.now.midnight - 30.day)..Time.now.midnight)
    @MembersWeekly = @MembersMonthly.where(:created_at => (Time.now.midnight - 7.day)..Time.now.midnight)

  end

  def espaceMember

  end
end
