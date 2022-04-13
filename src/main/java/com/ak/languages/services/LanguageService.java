package com.ak.languages.services;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.stereotype.Service;

import com.ak.languages.models.Language;
import com.ak.languages.repositories.LanguageRepo;

@Service
public class LanguageService {
	
	private final LanguageRepo languageRepo;

	public LanguageService(LanguageRepo languageRepo) {
		this.languageRepo = languageRepo;
	}
	
	public List<Language> allLanguages() {
		return languageRepo.findAll();
	}
	
	public Language createLanguage(Language x) {
		return languageRepo.save(x);
	}
	
	public Language findLanguage(Long id) {
		Optional<Language> optionalLanguage = languageRepo.findById(id);
		if(optionalLanguage.isPresent()) {
			return optionalLanguage.get();
		} else {
			return null;
		}
	}

	public Language updateLanguage(Language x) {
		return languageRepo.save(x);
		
	}
	
	public void deleteLanguage(Long id) {
		languageRepo.deleteById(id);
	}
}

