package com.ak.languages.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ak.languages.models.Language;

@Repository
public interface LanguageRepo extends CrudRepository<Language, Long>{
	
	
	List<Language> findAll();
	
	void deleteById(Long id);
	
	Language save(Language x);
	
	Optional<Language> findById(Long id);
	

}




