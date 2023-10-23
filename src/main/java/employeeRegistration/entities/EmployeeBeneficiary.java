
package employeeRegistration.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "employee_beneficiary")
public class EmployeeBeneficiary {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "id")
	private long id;

	@Column(name = "beneficiary_name")
	private String benefName;

	@Column(name = "beneficiary_age")
	private int benefAge;

	@Column(name = "relation_with_beneficiary")
	private String benefRelation;

	@Column(name = "beneficiary_contact")
	private long benefContact;

	public String getBenefName() {
		return benefName;
	}

	public void setBenefName(String benefName) {
		this.benefName = benefName;
	}

	public int getBenefAge() {
		return benefAge;
	}

	public void setBenefAge(int benefAge) {
		this.benefAge = benefAge;
	}

	public String getBenefRelation() {
		return benefRelation;
	}

	public void setBenefRelation(String benefRelation) {
		this.benefRelation = benefRelation;
	}

	public long getBenefContact() {
		return benefContact;
	}

	public void setBenefContact(long benefContact) {
		this.benefContact = benefContact;
	}

	@Override
	public String toString() {
		return "EmployeeBeneficiary [benefName=" + benefName + ", benefAge=" + benefAge + ", benefRelation="
				+ benefRelation + ", benefContact=" + benefContact + "]";
	}

}

