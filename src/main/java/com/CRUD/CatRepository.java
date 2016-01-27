package com.CRUD;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

@Repository
public interface CatRepository extends JpaRepository<CatEntity, Long> {

	List<CatEntity> findByCatName(String catName);
	Page findAll(Pageable pageable);


}