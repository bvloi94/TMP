/**
 * 
 */
package net.techeco.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author CongThanh
 *
 */
@Controller
public class Home {
	@RequestMapping(value="/Home.htm", method=RequestMethod.GET)
	public String goToHome(Model model){
		return "Home";
	}
}
