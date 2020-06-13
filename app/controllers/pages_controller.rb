class PagesController < ApplicationController
  def index
    @lyrics = Lyric.all
  end

  def weather
  end
end
