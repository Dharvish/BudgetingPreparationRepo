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
@Table(name="budgetclassification")
public class BudgetClassification {

	@Id
	private int id;
	
	@Column(name="ParentClassification",length=20,nullable = false)
	private String ParentClassification;
	
	@Column(name="SubClassification",length=20,nullable = false)
	private String SubClassification;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getParentClassification() {
		return ParentClassification;
	}

	public void setParentClassification(String parentClassification) {
		ParentClassification = parentClassification;
	}

	public String getSubClassification() {
		return SubClassification;
	}

	public void setSubClassification(String subClassification) {
		SubClassification = subClassification;
	}

	@Override
	public String toString() {
		return "BudgetClassification [id=" + id + ", ParentClassification=" + ParentClassification
				+ ", SubClassification=" + SubClassification + "]";
	}
	
	
	
}
