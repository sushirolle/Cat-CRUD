package com.CRUD;

import com.sun.deploy.resources.Deployment;
import org.apache.commons.lang3.ArrayUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.server.PathParam;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class CrudController {
@Autowired

CatRepository catRepository;

	//PAGES

	//Controller for the main /CRUD/ page. Shows all cats + options
	@RequestMapping(value = "/")
	public String index(ModelMap cat) {

		return "index";
	}

	//Controller for the "create" page, which shows a form that lets you add a cat
	@RequestMapping(value = "/create")
	public String create(ModelMap cat) {

		return "create";
	}

	//Controller for the "Update" page, specific to cat.
	@RequestMapping(value = "/update/{id}")
	public String update(ModelMap cat, @PathVariable("id") Long id) {

		CatEntity kitty = catRepository.findOne(id);
		cat.put("Kitty", kitty);

		return "update";
	}

	//Controller for the image page, which allows you to add an image of a cat
	@RequestMapping(value = "/image/{id}")
	public String image(ModelMap cat, @PathVariable("id") Long id) {

		CatEntity catimg = catRepository.findOne(id);
		cat.put("Catimg", catimg);

		return "image";
	}


	//ERRORS


	//Page show whenever an error occurs during searching
	@RequestMapping(value = "/searcherr")
	public String searcherr(ModelMap cat) {

		return "searcherr";
	}

	//Page shown whenever error occurs during creating a cat
	@RequestMapping(value = "/createerrorpage")
	public String createerror(ModelMap cat) {

		return "createerrorpage";
	}

	//Page shown whenever error occurs while updating a cat
	@RequestMapping(value = "/updateerror")
	public String updateerror(ModelMap cat) {

		return "updateerror";
	}


	//ACTIONS

	//Allows you to delete a cat by it's ID-- displayed as a button on index page
	@RequestMapping(value="/delete/{id}", method = RequestMethod.POST )
	public String delete(@PathVariable("id") Long id)
	{
		catRepository.delete(id);
		return "redirect:/CRUD/";
	}


	//Allows you to update a cat on the update page
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


	//Allows you to add an image of a cat on the /image page
	@RequestMapping(value="/img/{id}" , method = RequestMethod.POST )
	public String img(@PathVariable("id") Long id,@RequestParam("image") MultipartFile image)
	{
		CatEntity catimg = catRepository.findOne(id);
		try {
			if (image.getSize() > 0) {
				catimg.setImage(image.getBytes());
			}
		} catch (IOException e) {
//			bindingResult.reject("Error uploading file.");
		}

		catRepository.save(catimg);
		return "redirect:/CRUD/";

	}





		@RequestMapping(value = "/imageDisplay", method = RequestMethod.GET)
		public void showImage(@RequestParam("id") Long id, HttpServletResponse response,HttpServletRequest request)
		throws ServletException, IOException {

			CatEntity cat = catRepository.findOne(id);
			response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
			response.getOutputStream().write(cat.getImage() == null ? new byte[0] : cat.getImage());
			response.getOutputStream().close();


	}





	//Allows you to add a cat on the /create page
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

	//Allows you to search cat by ID-- displayed as a search bar on index page
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


	//Allows you to search cat by ID-- displayed as a search bar on index page
	@RequestMapping(value="/searchname" , method = RequestMethod.POST )
	public String searchname(@RequestParam String catName, ModelMap cat)
	{
		List<CatEntity> list = catRepository.findAll();
		List<CatEntity> kitties = list.stream().filter(x -> x.getCatName().toUpperCase().contains(catName.toUpperCase())).collect(Collectors.toList());
		cat.put("kitties", kitties);
		return "index";

	}


	//Sort
	private Sort sortByIdAsc() {
		return new Sort(Sort.Direction.ASC, "id");
	}

	//Model
	@ModelAttribute("CATS")
	public Page<CatEntity> data(@PageableDefault(value=5,page=0,sort = {"id"}) Pageable pageable){
		Page<CatEntity> allTheCats=catRepository.findAll(pageable);
		return allTheCats;
	}


}
