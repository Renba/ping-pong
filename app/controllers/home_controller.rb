class HomeController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  def index
  end

  def history
  end

  def log
    @game = Game.new
  end
end
