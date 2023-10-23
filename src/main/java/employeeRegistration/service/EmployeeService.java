package employeeRegistration.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import employeeRegistration.dao.EmployeeDao;
import employeeRegistration.entities.Employee;

@Service
public class EmployeeService {

	@Autowired
	EmployeeDao employeeDao;

	public void saveEmployee(Employee employee) {
		//int savedEmployee = 
		employeeDao.saveEmployee(employee);
		//return savedEmployee;
	}

	public List<Employee> getAllEmployees() {
		List<Employee> allEmployees = this.employeeDao.getAllEmployees();
		return allEmployees;
	}

	public Employee getEmployee(int empId) {
		Employee individualEmployee = employeeDao.getIndividualEmployee(empId);
		return individualEmployee;
	}
	
	public void deleteEmployee(int empid) {
		employeeDao.deleteEmployee(empid);
	}

}
