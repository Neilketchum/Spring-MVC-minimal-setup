package org.studyeasy;


import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.print.attribute.standard.DateTimeAtCompleted;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.studyeasy.model.User;


@Controller
public class MainController {
//	@RequestMapping(value = "/",method =RequestMethod.GET)
//	public String Welcome() {
//		return "hello";	
//	}
	@GetMapping("/")
	public ModelAndView Welcome() {
		ModelAndView modelAndView = new ModelAndView("userFormView");
		User user = new User();
		Map<String,String> sports = new HashMap<String, String>();
		sports.put("cricket", "Cricket");
		sports.put("football", "Football");
		sports.put("tennis", "Tennis");
		modelAndView.addObject("sports",sports);
		modelAndView.addObject("user",user);
		return modelAndView;
	}
	@PostMapping("/displayUserInfo")
	public ModelAndView displayUserInfo(@ModelAttribute User user) {
		ModelAndView modelAndView = new ModelAndView("displayUserInfo");
		System.out.println(user);
		modelAndView.addObject("user",user);
		return modelAndView;
	}
	@RequestMapping(value = "/displayname", method = RequestMethod.POST)
	public ModelAndView displayName(@RequestParam("firstName") String firstName,Model model) { //HttpServletRequest req
//		String firstName = req.getParameter("firstName");
//		req.setAttribute("firstName", firstName);
//		model.addAttribute("name",firstName);
		ModelAndView modelAndView = new ModelAndView("displayName");
		Date date = new Date();
		List<String> names = new ArrayList<>();
		names.add("apple");
		names.add("banana");
		names.add("cat");
		names.add("dog");
		names.add("elephant");
		names.add("Fish");
		modelAndView.addObject("date",date);
		modelAndView.addObject("name",firstName);
		modelAndView.addObject("team",names);
		return modelAndView;
	}
};
