class MusicList
    def initialize
        @track_list = []
    end
    
    def add_track(track_name)
        return fail "Input is nil" if track_name == nil
        if track_name == ""
            return "Requires a song name"
        else
            @track_list << track_name
        end
    end
    
    def view_tracks
       @track_list
    end
end