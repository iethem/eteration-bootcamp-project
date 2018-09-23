package com.eteration.demo.repositories;

import com.eteration.demo.model.Track;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TrackRepository extends JpaRepository<Track, Long>{
    Track findByAlbumAndArtist(String albumName, String artistName);
    //Track findByName(String name);
}
