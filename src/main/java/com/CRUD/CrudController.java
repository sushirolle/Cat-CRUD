package com.CRUD;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ValidationUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class CrudController {
@Autowired
CatRepository catRepository;
	@RequestMapping(value = "/")
	public String index(ModelMap cat) {

		List<CatEntity> cats = catRepository.findAll(sortByIdAsc());
		cat.put("CATS", cats);

		return "index";
	}

	private Sort sortByIdAsc() {
		return new Sort(Sort.Direction.ASC, "id");
	}

	@RequestMapping(value="/delete" , method = RequestMethod.POST )
	public String delete(@RequestParam Long id)
	{
		catRepository.delete(id);
		return "redirect:/CRUD/";
	}

	@RequestMapping(value="/add" , method = RequestMethod.POST )
	public String add(@RequestParam String catName, @RequestParam  String fluffyRating)
	{
		catRepository.save(new CatEntity(catName, fluffyRating));
		return "redirect:/CRUD/";
	}


	@RequestMapping(value="/update" , method = RequestMethod.POST )
	public String update(@RequestParam Long id, @RequestParam String catName, @RequestParam String fluffyRating)
	{
		CatEntity kitty = catRepository.findOne(id);
		kitty.setCatName(catName);
		kitty.setFluffyRating(fluffyRating);
		catRepository.save(kitty);
		return "redirect:/CRUD/";
	}

	@RequestMapping(value="/search" , method = RequestMethod.POST )
	public String search(@RequestParam Long id, ModelMap cat)
	{
		List<CatEntity> cats = catRepository.findAll(sortByIdAsc());
		cat.put("CATS", cats);
		CatEntity kitty = catRepository.findOne(id);
		cat.put("kitty", kitty);
		return "index";
	}


}
