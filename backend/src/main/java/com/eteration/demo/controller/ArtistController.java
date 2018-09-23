package com.eteration.demo.controller;

import com.eteration.demo.model.Album;
import com.eteration.demo.model.Artist;
import com.eteration.demo.repositories.AlbumRepository;
import com.eteration.demo.repositories.ArtistRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/artist")
public class ArtistController {
    @Autowired
    AlbumRepository albumRepository;

    @Autowired
    ArtistRepository artistRepository;

    @GetMapping("/all")
    public List<Artist> getAll() {
        return artistRepository.findAll();
    }

    @GetMapping("/{id}")
    public Artist getArtistById(@PathVariable("id") Long id) {
        Artist artist = artistRepository.findById(id).get();
        if (artist == null)
            return null;

        return artist;
    }

    @PostMapping
    public Artist saveArtist(@RequestBody Artist artist) {

        Artist savedArtist = artistRepository.findByNameAndSurname(artist.getName(), artist.getSurname());

        if (savedArtist != null)
            return null;

        return artistRepository.save(artist);
    }

    @DeleteMapping("/{id}")
    public String deleteArtistById(@PathVariable("id") Long id) {
        artistRepository.deleteById(id);

        return "OK";
    }
}
