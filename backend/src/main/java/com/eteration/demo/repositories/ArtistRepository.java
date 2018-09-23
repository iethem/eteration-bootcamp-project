package com.eteration.demo.repositories;

import com.eteration.demo.model.Artist;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ArtistRepository extends JpaRepository<Artist, Long> {

    Artist findByNameAndSurname(String name, String surname);

}
