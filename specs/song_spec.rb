require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < Minitest::Test
  def setup
    @song1 = Song.new("Gravel Pit", "Wu-tang Clan", "Hip Hop")
    @song2 = Song.new("Song 2", "Blur", "Britpop")
  end

  def test_can_create_song
    assert_equal("Gravel Pit", @song1.name)
    assert_equal("Blur", @song2.artist)
    assert_equal("Hip Hop", @song1.genre)
  end
end