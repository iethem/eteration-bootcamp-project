package com.eteration.demo.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;

@Entity
public class Track {
    @Id
    @GeneratedValue
    @Column(name = "TRACK_ID")
    private Long id;
    private String length;
    private String fileName;
    private String lyric;

    @ManyToOne
    @JoinColumn(name = "ALBUM_ID")
    @JsonIgnoreProperties(value = "trackList")
    private Album album;

    @ManyToOne
    @JoinColumn(name = "ARTIST_ID")
    @JsonIgnoreProperties(value = "trackList")
    private Artist artist;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLength() {
        return length;
    }

    public void setLength(String length) {
        this.length = length;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getLyric() {
        return lyric;
    }

    public void setLyric(String lyric) {
        this.lyric = lyric;
    }

    public Album getAlbum() {
        return album;
    }

    public void setAlbum(Album album) {
        this.album = album;
    }

    public Artist getArtist() {
        return artist;
    }

    public void setArtist(Artist artist) {
        this.artist = artist;
    }
}