package com.ccniit.graduation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
/**
 * 首页控制器
 */
public class IndexController {

	protected static final String VIEW_INDEX = "../index";

	@RequestMapping(value = { "/", "index", "index.html", "home" }, method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		return VIEW_INDEX;
	}

}
