package employeeRegistration.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import employeeRegistration.entities.Employee;

@Repository
public class EmployeeDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public EmployeeDao() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Transactional
	public int saveEmployee(Employee employee) {
		Integer employeeId = (Integer) this.hibernateTemplate.save(employee);
		System.out.println(employeeId);
		return employeeId;
	}

	public List<Employee> getAllEmployees() {
		List<Employee> empList = this.hibernateTemplate.loadAll(Employee.class);
		return empList;
	}

	public Employee getIndividualEmployee(int empId) {
		Employee emp = this.hibernateTemplate.load(Employee.class, empId);
		return emp;
	}
	
	@Transactional
	public void deleteEmployee(int empId) {
		Employee emp = this.hibernateTemplate.load(Employee.class,empId);
		this.hibernateTemplate.delete(emp);
	}

}
