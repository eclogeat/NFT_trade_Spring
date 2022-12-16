package com.example.mpt_project.repositories;

import com.example.mpt_project.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {

}
