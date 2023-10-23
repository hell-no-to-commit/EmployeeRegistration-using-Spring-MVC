package employeeRegistration.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "employee_details")
public class Employee {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "id")
	private int empId;

	@Column(name = "name")
	private String empName;

	@Column(name = "designation")
	private String empDesignation;

	@Column(name = "salary")
	private long empSalary;

	@Column(name = "contact")
	private long empContact;

	@OneToOne(cascade = CascadeType.ALL)
	// @JoinColumn(name = "employee_id1")
	private EmployeeAddress empAddress;

	@OneToOne(cascade = CascadeType.ALL)
	// @JoinColumn(name = "employee_id2")
	private EmployeeBeneficiary empBeneficiaryName;

	public long getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getEmpDesignation() {
		return empDesignation;
	}

	public void setEmpDesignation(String empDesignation) {
		this.empDesignation = empDesignation;
	}

	public long getEmpSalary() {
		return empSalary;
	}

	public void setEmpSalary(long empSalary) {
		this.empSalary = empSalary;
	}

	public long getEmpContact() {
		return empContact;
	}

	public void setEmpContact(long empContact) {
		this.empContact = empContact;
	}

	public EmployeeAddress getEmpAddress() {
		return empAddress;
	}

	public void setEmpAddress(EmployeeAddress empAddress) {
		this.empAddress = empAddress;
	}

	public EmployeeBeneficiary getEmpBeneficiaryName() {
		return empBeneficiaryName;
	}

	public void setEmpBeneficiaryName(EmployeeBeneficiary empBeneficiaryName) {
		this.empBeneficiaryName = empBeneficiaryName;
	}

	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", empName=" + empName + ", empDesignation=" + empDesignation
				+ ", empSalary=" + empSalary + ", empContact=" + empContact + ", empAddress=" + empAddress
				+ ", empBeneficiaryName=" + empBeneficiaryName + "]";
	}

}
