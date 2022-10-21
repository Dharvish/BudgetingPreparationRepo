package org.ABC.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString

@Table(name="budgetingperiod")
public class BudgetingPeriod {
	@Id
	private int id;
	
	@Column(name="StartBudgetPeriod", length=15,nullable = false)
	private String StartBudgetPeriod;
	
	@Column(name="EndBudgetPeriod", length=15,nullable = false)
	private String EndBudgetPeriod;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStartBudgetPeriod() {
		return StartBudgetPeriod;
	}

	public void setStartBudgetPeriod(String startBudgetPeriod) {
		StartBudgetPeriod = startBudgetPeriod;
	}

	public String getEndBudgetPeriod() {
		return EndBudgetPeriod;
	}

	public void setEndBudgetPeriod(String endBudgetPeriod) {
		EndBudgetPeriod = endBudgetPeriod;
	}

	@Override
	public String toString() {
		return "BudgetingPeriod [id=" + id + ", StartBudgetPeriod=" + StartBudgetPeriod + ", EndBudgetPeriod="
				+ EndBudgetPeriod + "]";
	}
	
	
	

}
