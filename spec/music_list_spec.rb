require 'music_list'

RSpec.describe MusicList do
  context "When the input is nil or an empty string" do
    it "fails when input is nil" do
      list1 = MusicList.new
      expect {list1.add_track(nil)}.to raise_error "Input is nil"
    end
  
    it "returns empty list when input is empty" do
      list1 = MusicList.new
      list1.add_track("")
      expect(list1.view_tracks).to eq []
    end
  end
  
  it "returns 'Song 1' in a list" do
    list1 = MusicList.new
    list1.add_track("Song 1")
    expect(list1.view_tracks).to eq ["Song 1"]
  end
  
  it "returns 'Song 1', 'Song 2' in a list" do
    list1 = MusicList.new
    list1.add_track("Song 1")
    list1.add_track("Song 2")
    expect(list1.view_tracks).to eq ["Song 1", "Song 2"]
  end
  
end