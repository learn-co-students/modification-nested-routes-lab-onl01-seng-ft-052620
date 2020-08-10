module SongsHelper
    def artist_select(artist_editable,song)
        if artist_editable || song.artist.nil?
            artist_id = song.artist.nil? ? nil : song.artist.id
            select_tag "song[artist_id]", options_from_collection_for_select(Artist.all,:id,:name,artist_id)
        else
            hidden_field_tag "song[artist_id]", song.artist_id
        end
    end
end
