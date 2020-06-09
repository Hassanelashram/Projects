class LyricsController < ApplicationController
  require 'json'
  require 'open-uri'

  def index
    @lyrics = Lyric.all
  end

  def show
    @lyric = Lyric.find(params[:id])
  end

  def new
    @lyric = Lyric.new
  end

  def create
    @lyric = Lyric.new(post_params)
    artist = @lyric.artist
    song = @lyric.song
    artist = artist.gsub(' ', '%20')
    song = song.gsub(' ', '%20')
    @lyric.lyrics = fetched(artist, song)
    @lyric.save
    redirect_to @lyric
  end

  private

  def fetched(artist, song)
    url = open("https://api.lyrics.ovh/v1/#{artist}/#{song}").read
    lyrics = JSON.parse(url)
    lyrics['lyrics']
  end

  def post_params
    params.require(:lyric).permit(:artist, :song, :lyrics)
  end
end
