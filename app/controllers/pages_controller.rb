class PagesController < ApplicationController
  def index
    @lyrics = Lyric.all
  end
end
