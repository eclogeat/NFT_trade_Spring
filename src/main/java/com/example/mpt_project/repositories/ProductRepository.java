package com.example.mpt_project.repositories;

import com.example.mpt_project.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
List<Product> findByTitle(String title);
}
