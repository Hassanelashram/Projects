class Lyric < ApplicationRecord
  validates :artist, presence: true
  validates :song, presence: true
end
