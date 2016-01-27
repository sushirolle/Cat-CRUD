package com.CRUD;

import com.sun.deploy.resources.Deployment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.data.web.PageableHandlerMethodArgumentResolver;
import org.springframework.data.web.PagedResourcesAssembler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ValidationUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;

import javax.websocket.server.PathParam;
import java.util.List;

@Controller
public class CrudController {
@Autowired

CatRepository catRepository;


	@RequestMapping(value = "/")
	public String index(ModelMap cat) {

		return "index";
	}



	@RequestMapping(value = "/create")
	public String create(ModelMap cat) {

		return "create";
	}

	@RequestMapping(value = "/createerrorpage")
	public String createerror(ModelMap cat) {

		return "createerrorpage";
	}

	@RequestMapping(value = "/updateerror")
	public String updateerror(ModelMap cat) {

		return "updateerror";
	}

	@RequestMapping(value = "/searcherr")
	public String searcherr(ModelMap cat) {

		return "searcherr";
	}

	@RequestMapping(value = "/update/{id}")
	public String update(ModelMap cat, @PathVariable("id") Long id) {

		CatEntity kitty = catRepository.findOne(id);
		cat.put("Kitty", kitty);

		return "update";
	}

	private Sort sortByIdAsc() {
		return new Sort(Sort.Direction.ASC, "id");
	}

	@RequestMapping(value="/delete/{id}", method = RequestMethod.POST )
	public String delete(@PathVariable("id") Long id)
	{
		catRepository.delete(id);
		return "redirect:/CRUD/";
	}

	@RequestMapping(value="/save/{id}" , method = RequestMethod.POST )
	public String save(@PathVariable("id") Long id, @RequestParam String catName, @RequestParam String fluffyRating)
	{
		if(catName=="" || fluffyRating=="")
		{
			return "updateerror";
		}

		else if(catName.length() > 20 || fluffyRating.length() > 30)
		{
			return "updateerror";
		}

		else {
			CatEntity kitty = catRepository.findOne(id);
			kitty.setCatName(catName);
			kitty.setFluffyRating(fluffyRating);
			catRepository.save(kitty);
			return "redirect:/CRUD/";
		}
	}

	@RequestMapping(value="/add" , method = RequestMethod.POST )
	public String add(@RequestParam String catName, @RequestParam  String fluffyRating)
	{
		if(catName=="" || fluffyRating=="")
		{
			return "createerrorpage";
		}

		else if(catName.length() > 20 || fluffyRating.length() > 30)
		{
			return "createerrorpage";
		}


		else {
			catRepository.save(new CatEntity(catName, fluffyRating));
			return "redirect:/CRUD/";
		}

	}


	@RequestMapping(value="/search" , method = RequestMethod.POST )
	public String search(@RequestParam Long id, ModelMap cat)
	{
		if(catRepository.findOne(id)==null) {
			return "searcherr";
		}
		else {
			CatEntity kitty = catRepository.findOne(id);
			cat.put("kitty", kitty);
			return "index";
		}
	}



	@ModelAttribute("CATS")
	public Page<CatEntity> data(@PageableDefault(value=5,page=0,sort = {"id"}) Pageable pageable){
		Page<CatEntity> allTheCats=catRepository.findAll(pageable);
		return allTheCats;
	}


}
