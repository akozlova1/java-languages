package com.ak.languages.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ak.languages.models.Language;
import com.ak.languages.services.LanguageService;


@Controller
public class MainController {
	private final LanguageService languageService;

	public MainController(LanguageService languageService) {
		this.languageService = languageService;
	}

	@RequestMapping("/languages")
	public String index(
			Model model,
			@ModelAttribute("language") Language language
			) {
		List<Language> languages = languageService.allLanguages();
		model.addAttribute("languages", languages);
		return "index.jsp";
	}


	@RequestMapping(value="/languages", method=RequestMethod.POST)
	public String create(@Valid @ModelAttribute("language") Language language, BindingResult result) {
		if (!result.hasErrors()) {
			languageService.createLanguage(language);
			return "redirect:/languages";
		}else {
			return "index.jsp";
		}
	}
	
	@RequestMapping("/language/{id}")
	public String info(@PathVariable("id") Long id, Model model) {
		Language language = languageService.findLanguage(id);
	     model.addAttribute("language", language);
		return "language.jsp";
		
	}
	     @RequestMapping("/language/edit/{id}")
	 public String edit(@PathVariable("id") Long id, Model model) {
	     Language language = languageService.findLanguage(id);
	     model.addAttribute("language", language);
	     return "edit.jsp";
	 }
	 
	 @RequestMapping(value="/language/edit/{id}", method=RequestMethod.PUT)
	 public String update(@Valid @ModelAttribute("language") Language language, BindingResult result) {
	     if (result.hasErrors()) {
	         return "edit.jsp";
	     } else {
	         languageService.updateLanguage(language);
	         return "redirect:/languages";
	     }
	 }
	
	 @RequestMapping(value="/language/delete/{id}", method=RequestMethod.DELETE)
	 public String destroy(@PathVariable("id") Long id) {
	     languageService.deleteLanguage(id);
	     return "redirect:/languages";
	 }
}
