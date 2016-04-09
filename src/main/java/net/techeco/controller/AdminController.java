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
@RequestMapping("ad")
public class AdminController {

	@RequestMapping(value="/AdminHome.htm", method=RequestMethod.GET)
	public String statistic(){
		return "AdminHome";
	}

	@RequestMapping(value="/ManageUserAccount.htm", method=RequestMethod.GET)
	public String manageUserAccounts(){
		return "AdminManageUserAccount";
	}

	@RequestMapping(value="/ManageSelfAccount.htm", method=RequestMethod.GET)
	public String manageSelfAccount(){
		return "AdminManageSelfAccount";
	}

}
