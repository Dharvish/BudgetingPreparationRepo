package org.ABC.Controller;





import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import javax.servlet.http.HttpServletRequest;
import javax.websocket.Session;

import org.ABC.Entity.Budget;
import org.ABC.Entity.BudgetClassification;
import org.ABC.Entity.BudgetingPeriod;
import org.ABC.Services.BudgetClassificationServices;
import org.ABC.Services.BudgetServices;
import org.ABC.Services.BudgetingPeriodServices;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;





@Controller

public class BudgetController {
	
	
	@Autowired
	BudgetClassificationServices budgetclassification;
	
	@Autowired
	BudgetingPeriodServices budgetperiod;
	
	@Autowired
	BudgetServices budget;
	
	@PostMapping("/createbudgetperiod")
	public BudgetingPeriod saveBudgetingPeriod( BudgetingPeriod bp)
	{
		return budgetperiod.saveBudgetingPeriod(bp);
		
	}	
	@PostMapping("/createbudgetclassification")
	public BudgetClassification saveBudgetClassification( BudgetClassification bc) {
	
		return budgetclassification.saveBudgetClassification(bc);
}
	@PostMapping("/budgetpreparation")
	public Budget saveBudget( Budget budgets,HttpServletRequest request) {
		
	
		
		String budgetstartperiod = request.getParameter("budgetstartperiod");
		String budgetendperiod = request.getParameter("budgetendperiod");
		String parentclassification = request.getParameter("parentclassification");
		String subclassification = request.getParameter("subclassification");
		String source = request.getParameter("source");
		double prevbudgetamt = Double.parseDouble(request.getParameter("prevbudgetamt"));
		double prevactualamt = Double.parseDouble(request.getParameter("prevactualamt"));
		String currentdate = request.getParameter("currentdate");
		double curbudgetamt = Double.parseDouble(request.getParameter("curbudgetamt"));
		String approval = request.getParameter("approval");
		
	         
		System.out.println(budgetstartperiod);
		System.out.println(parentclassification);
		System.out.println("Hello");
		budgets = new Budget( budgetstartperiod, budgetendperiod, parentclassification, subclassification, source, prevbudgetamt, prevactualamt, currentdate, curbudgetamt, approval);
		return budget.saveBudget(budgets);
		
}
	@GetMapping("/getbudgetperiod")
	public List<BudgetingPeriod> getBudgetingPeriod()
	{	      
		
		return budgetperiod.retrieveBudgetingPeriod();
	}
	
	@GetMapping("/getbudgetclassification")
	public List<BudgetClassification> getBudgetClassifications()
	{
		return budgetclassification.retrieveBudgetClassifications();
	}
	@PostMapping("/budgetpreparation/edit/{budgetid}")
	@ResponseStatus(value = HttpStatus.OK)
    public Budget update(Budget b,@PathVariable("budgetid") int id, HttpServletRequest request) {
   	 
      id = Integer.parseInt(request.getParameter("updatebudgetid")); 
		String parentclassification = request.getParameter("updateparentclassification");
		String subclassification = request.getParameter("updatesubclassification");
		String source = request.getParameter("updatesource");
		double prevbudgetamt = Double.parseDouble(request.getParameter("updateprevbudgetamt").trim());
		double prevactualamt = Double.parseDouble(request.getParameter("updateprevactualamt").trim());
		String currentdate = request.getParameter("updatecurrentdate");
		double curbudgetamt = Double.parseDouble(request.getParameter("updatecurbudgetamt").trim());
		String approval = request.getParameter("updateapproval");
       b = new Budget(id, parentclassification, subclassification, source, prevbudgetamt, prevactualamt, currentdate, curbudgetamt, approval);
 
       return  budget.update(b, id);
   	 
   	
  }
	@GetMapping("/budgetpreparation")
	public Iterable<Budget> getBudgets(ModelMap map)
	{
       
        map.put("budget", budget.retrieveBudgets());
       
		return budget.retrieveBudgets();
	}

	@PostMapping("/budgetpreparation/{budgetid}")
	@ResponseStatus(value = HttpStatus.OK)
	public String delete(@PathVariable("budgetid") int id, HttpServletRequest request) {
    // delete the user
		System.out.print("Hi");
         id = Integer.valueOf(request.getParameter("budgetid"));
	        budget.delete(id);
	        return "redirect:/budgetpreparation";
		
	}

}