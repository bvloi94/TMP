/**
 * 
 */
package net.techeco.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Duy Beo
 *
 */
@Controller
@RequestMapping("usr")
public class UserController {

	@RequestMapping(value="ManageTrips.htm", method = RequestMethod.GET)
	public String manageTrips(){
		return "ManageTrips";
	}

	@RequestMapping(value="CreateNewTrip.htm", method= RequestMethod.GET)
	public String createNewTrip(){
		return "CreateNewTrip";
	}
}
