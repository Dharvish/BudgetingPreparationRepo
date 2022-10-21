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


@Table(name="budget")
public class Budget {

	@Id
	private int budgetid;
	
	@Column(name="budgetstartperiod",length=15,nullable = false)
	private String budgetstartperiod;
	
	@Column(name="budgetendperiod",length=30,nullable = false)
	private String budgetendperiod;
	
	@Column(name="parentclassification",length=15,nullable = false)
	private String parentclassification;
	
	@Column(name="subclassification",length=20,nullable = false)
	private String subclassification;

	@Column(name="source",length=30,nullable = false)
	private String source;
	
	@Column(name="prevbudgetamt",nullable = false)
	private double prevbudgetamt;
	
	@Column(name="prevactualamt",nullable = false)
	private double prevactualamt;
	
	@Column(name="currentdate ",length=20,nullable = false)
	private String currentdate;
	
	@Column(name="curbudgetamt ",nullable = false)
	private double curbudgetamt;
	
	@Column(name="approvalstatus ",length=30,nullable = false)
	private String approvalstatus;


public Budget() {
	// TODO Auto-generated constructor stub
}



	public Budget(int budgetid, String parentclassification, String subclassification, String source, double prevbudgetamt,
		double prevactualamt, String currentdate, double curbudgetamt, String approvalstatus) {
	super();
	this.budgetid = budgetid;
	this.parentclassification = parentclassification;
	this.subclassification = subclassification;
	this.source = source;
	this.prevbudgetamt = prevbudgetamt;
	this.prevactualamt = prevactualamt;
	this.currentdate = currentdate;
	this.curbudgetamt = curbudgetamt;
	this.approvalstatus = approvalstatus;
}



	public Budget( String budgetstartperiod, String budgetendperiod, String parentclassification,
			String subclassification, String source, double prevbudgetamt, double prevactualamt, String currentdate,
			double curbudgetamt, String approvalstatus) {
		super();

		this.budgetstartperiod = budgetstartperiod;
		this.budgetendperiod = budgetendperiod;
		this.parentclassification = parentclassification;
		this.subclassification = subclassification;
		this.source = source;
		this.prevbudgetamt = prevbudgetamt;
		this.prevactualamt = prevactualamt;
		this.currentdate = currentdate;
		this.curbudgetamt = curbudgetamt;
		this.approvalstatus = approvalstatus;
	}

	public int getBudgetid() {
		return budgetid;
	}

	public void setBudgetid(int budgetid) {
		this.budgetid = budgetid;
	}

	public String getBudgetstartperiod() {
		return budgetstartperiod;
	}

	public void setBudgetstartperiod(String budgetstartperiod) {
		this.budgetstartperiod = budgetstartperiod;
	}

	public String getBudgetendperiod() {
		return budgetendperiod;
	}

	public void setBudgetendperiod(String budgetendperiod) {
		this.budgetendperiod = budgetendperiod;
	}

	public String getParentclassification() {
		return parentclassification;
	}

	public void setParentclassification(String parentclassification) {
		this.parentclassification = parentclassification;
	}

	public String getSubclassification() {
		return subclassification;
	}

	public void setSubclassification(String subclassification) {
		this.subclassification = subclassification;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public double getPrevbudgetamt() {
		return prevbudgetamt;
	}

	public void setPrevbudgetamt(double prevbudgetamt) {
		this.prevbudgetamt = prevbudgetamt;
	}

	public double getPrevactualamt() {
		return prevactualamt;
	}

	public void setPrevactualamt(double prevactualamt) {
		this.prevactualamt = prevactualamt;
	}

	public String getCurrentdate() {
		return currentdate;
	}

	public void setCurrentdate(String currentdate) {
		this.currentdate = currentdate;
	}

	public double getCurbudgetamt() {
		return curbudgetamt;
	}

	public void setCurbudgetamt(double curbudgetamt) {
		this.curbudgetamt = curbudgetamt;
	}

	public String getApprovalstatus() {
		return approvalstatus;
	}

	public void setApprovalstatus(String approvalstatus) {
		this.approvalstatus = approvalstatus;
	}

	@Override
	public String toString() {
		return "Budget [budgetid=" + budgetid + ", budgetstartperiod=" + budgetstartperiod + ", budgetendperiod="
				+ budgetendperiod + ", parentclassification=" + parentclassification + ", subclassification="
				+ subclassification + ", source=" + source + ", prevbudgetamt=" + prevbudgetamt + ", prevactualamt="
				+ prevactualamt + ", currentdate=" + currentdate + ", curbudgetamt=" + curbudgetamt
				+ ", approvalstatus=" + approvalstatus + "]";
	}
	
	
	

}
