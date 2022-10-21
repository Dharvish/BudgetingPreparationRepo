package org.ABC.Services;

import java.util.List;


import org.ABC.Entity.BudgetClassification;

import org.ABC.Repository.BudgetClassificationRepository;


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

public class BudgetClassificationServices {

    @Autowired
    BudgetClassificationRepository budgetclassrepo;
	

	public BudgetClassification saveBudgetClassification(BudgetClassification budgetclass)
	{
		return budgetclassrepo.save(budgetclass);
		
	}
	public List<BudgetClassification> retrieveBudgetClassifications()
	{
		List<BudgetClassification> budget_classification_list =  budgetclassrepo.findAll();
		return budget_classification_list;
	}
	
	
	

}
