package org.ABC.Services;



import java.util.List;
import java.util.Optional;

import org.ABC.Entity.Budget;
import org.ABC.Repository.BudgetRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Getter
@Setter
@Service

public class BudgetServices {
    @Autowired
	BudgetRepository budgetRepo;
	

	public Budget saveBudget(Budget budget)
	{
		return budgetRepo.save(budget);
		
	}
	
	public Iterable<Budget> retrieveBudgets()
	{
		Iterable<Budget> budget_list = budgetRepo.findAll();
		return budget_list;
	}

	   public void delete(int id) {
		   System.out.print(id);
        budgetRepo.deleteById(id);
        
    }

	  
	    public Budget update(Budget b,int id) {
	    	 
	    	 
	    	 Budget savedBudget = budgetRepo.findById(b.getBudgetid()).get();
	    	
	       
	    	return  budgetRepo.save(savedBudget);
	   }
		    

		    //check if memberFromRest has name or position and update that to memberFromDb

		
	
}
