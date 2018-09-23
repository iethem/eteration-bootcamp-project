package com.eteration.demo.controller;

import com.eteration.demo.model.Album;
import com.eteration.demo.model.Artist;
import com.eteration.demo.repositories.AlbumRepository;
import com.eteration.demo.repositories.ArtistRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/album")
public class AlbumController {

    @Autowired
    AlbumRepository albumRepository;

    @Autowired
    ArtistRepository artistRepository;

    @GetMapping("/all")
    public List<Album> getAll() {
        return albumRepository.findAll();
    }

    @GetMapping("/{id}")
    public Album getAlbumById(@PathVariable("id") Long id) {
        Album album = albumRepository.findById(id).get();
        if (album == null)
            return null;

        return album;
    }

//    @PostMapping
//    public Album saveAlbum(@RequestBody Album album) {
//        Artist artist = artistRepository.findByNameAndSurname(album.getArtist().getName(), album.getArtist().getSurname());
//
//        if (artist != null)
//            album.setArtist(artist);
//
//        Album savedAlbum = albumRepository.save(album);
//        return savedAlbum;
//    }

    @PostMapping
    public Album saveAlbum(@RequestBody Album album) {
        Artist artist = artistRepository.findById(album.getArtist().getId()).get();

        if (artist != null)
            album.setArtist(artist);

        Album savedAlbum = albumRepository.save(album);
        return savedAlbum;
    }

    @DeleteMapping("delete/{number}")
    public String deleteAlbumByYear(@PathVariable Long number) {
        Album album = albumRepository.findById(number).get();
        if(album==null)
            return null;

        albumRepository.delete(album);
        return "OK";
    }

//    @RequestMapping(path="/{artistName", method = RequestMethod.GET)
//    public List<Album> getAlbumsByArtistName(@PathVariable("artistname") String artistName){
//        return albumRepository.findByArtistName(artistName);
//    }
}
