class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @super_power = SuperPower.all
  end
end
