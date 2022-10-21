package org.ABC.Services;

import java.util.List;

import org.ABC.Entity.BudgetingPeriod;
import org.ABC.Repository.BudgetingPeriodRepository;

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

public class BudgetingPeriodServices {

	@Autowired
	BudgetingPeriodRepository budgetperiodRepo;
	
	public BudgetingPeriod saveBudgetingPeriod(BudgetingPeriod budgetPeriod)
	{
		return budgetperiodRepo.save(budgetPeriod);
		
	}
	public List<BudgetingPeriod> retrieveBudgetingPeriod()
	{
		List<BudgetingPeriod> budget_period_list =  budgetperiodRepo.findAll();
		return budget_period_list;
	}
	
}
