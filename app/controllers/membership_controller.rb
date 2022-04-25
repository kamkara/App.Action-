class MembershipController < ApplicationController
  before_action :authenticate_user!, except: %i[ adherant admin]


  def adherant
  end

  def admin
  end

  def espaceAdmin
  end

  def espaceMember
  end
end
