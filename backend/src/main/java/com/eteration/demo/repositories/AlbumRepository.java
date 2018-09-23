package com.eteration.demo.repositories;

import com.eteration.demo.model.Album;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AlbumRepository extends JpaRepository<Album, Long> {

    //Album findByName(String name);

    Album findByReleaseYear(String releaseYear);

    List<Album> findByArtistId(Long id);
    Album findByName(String name);
    //Album findTopByOrderByNameDesc();

//    @Query("select album from Album album where album.artist.name=:artistName")
//    List<Album> findByArtistName(@Param("artistName") String artistName);
}
