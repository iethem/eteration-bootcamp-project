package com.eteration.demo.controller;

import com.eteration.demo.model.Album;
import com.eteration.demo.model.Artist;
import com.eteration.demo.model.Track;
import com.eteration.demo.repositories.AlbumRepository;
import com.eteration.demo.repositories.ArtistRepository;
import com.eteration.demo.repositories.TrackRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/track")
public class TrackController {
    @Autowired
    AlbumRepository albumRepository;

    @Autowired
    ArtistRepository artistRepository;

    @Autowired
    TrackRepository trackRepository;

    @GetMapping("/all")
    public List<Track> getAll() {
        return trackRepository.findAll();
    }

    @GetMapping("/{id}")
    public Track getTrackById(@PathVariable("id") Long id) {
        Track track = trackRepository.findById(id).get();
        if (track == null)
            return null;

        return track;
    }

    @PostMapping
    public Track saveTrack(@RequestBody Track track) {
        Artist artist = artistRepository.findByNameAndSurname(track.getArtist().getName(), track.getArtist().getSurname());
        Album album = albumRepository.findByName(track.getAlbum().getName());
        //Track savedTrack = trackRepository.findByName(track.getFileName());
        if (artist != null)
            track.setArtist(artist);

        if (album != null)
            track.setAlbum(album);

//        if (savedTrack != null)
//            return null;

        trackRepository.save(track);
        return track;
    }

//    @DeleteMapping("/{year}")
//    public String deleteTrackByYear(@PathVariable("year") String year) {
//        Track track = trackRepository.findByReleaseYear(year);
//        albumRepository.delete(album);
//
//        return "OK";
//    }
}
