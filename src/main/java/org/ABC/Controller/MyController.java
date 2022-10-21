package org.ABC.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MyController {
    
	@RequestMapping("/home")
	public String home() {
		return "index";
	}	
	@RequestMapping("/budget")
	public String budget() {
		return "Budget";
	}
	@RequestMapping("/financehead")
	public String financehead() {
		return "financehead";
	}
	@RequestMapping("/financeuser")
	public String financeuser() {
		return "financeuser";
	}
	@RequestMapping("/budgetowner")
	public String budgetowner() {
		return "budgetowner";
	}
	@RequestMapping("/budgetpreparation")
	public String budgetpreparation() {
		return "budgetpreparation";
	}
	@RequestMapping("/headofdepartment")
	public String headofdepartment() {
		return "headofdepartment";
	}
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	@RequestMapping("/signup")
	public String signup() {
		return "signup";
	}
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}
	@RequestMapping("/team")
	public String team() {
		return "team";
	}
	@RequestMapping("/faq")
	public String faq() {
		return "faq";
	}
	@RequestMapping("/blog")
	public String blog() {
		return "blog";
	}
}
