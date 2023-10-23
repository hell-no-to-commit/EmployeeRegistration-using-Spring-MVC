package employeeRegistration.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import employeeRegistration.entities.Employee;
import employeeRegistration.entities.EmployeeAddress;
import employeeRegistration.entities.EmployeeBeneficiary;
import employeeRegistration.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;

	@ModelAttribute
	public void commonData(Model model) {
		model.addAttribute("abc", "REGISTRATION FORM");
	}

	// Handler for showing the employee registration form
	@RequestMapping(path = "/registerEmployee", method = RequestMethod.GET)
	public String showForm() {
		return "registerEmployee";
	}

	// Handleer for processing the registration for single employee
	@RequestMapping(path = "/processform", method = RequestMethod.POST)
	public String registerEmployee(@ModelAttribute Employee employee, @ModelAttribute EmployeeAddress employeeAddress,
			@ModelAttribute EmployeeBeneficiary employeeBeneficiary, Model model, BindingResult bindingResult) {
		employeeService.saveEmployee(employee);

//		List<Employee> allEmployees = employeeService.getAllEmployees();
//		model.addAttribute("employees", allEmployees);

		System.out.println(model.getAttribute("employees"));

		if (bindingResult.hasErrors()) {
			return "registerEmployee";
		}
//		System.out.println(allEmployees);
		return "successPage";
	}

	// Handleer for processing the registration for single employee
		@RequestMapping("/employee_list")
		public String retrieveEmployees(@ModelAttribute Employee employee, @ModelAttribute EmployeeAddress employeeAddress,
				@ModelAttribute EmployeeBeneficiary employeeBeneficiary, Model model) {

			List<Employee> allEmployees = employeeService.getAllEmployees();
			model.addAttribute("employees", allEmployees);

			//System.out.println(model.getAttribute("employees"));

			return "employee_list";
		}

	
	@RequestMapping("/delete/{empId}")
	public RedirectView deleteEmployee(@PathVariable("empId") int empId, HttpServletRequest request) {
		employeeService.deleteEmployee(empId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/registerEmployee");
		return redirectView;
	}

	// Handler for showing the processed google search page
	@RequestMapping("/googleSearch")
	public String searchPage() {
		return "searchPage";
	}

	// Handler for processing the search page and redirecting to google
	@RequestMapping("/searchform")
	public RedirectView searchform(@RequestParam("googleSearch") String query) {

		String url = "http://google.com/search?q=" + query;

		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(url);

		return redirectView;
	}
/*
	//Showing particular contact details
		@RequestMapping("/{cId}/contact")
		public String showContactDetail(@PathVariable("cId") Integer cId, Model model, Principal principal) {
			System.out.println("CID "+cId);
			
			Optional<Contact> contactOptional = this.contactRepository.findById(cId);
			Contact contact = contactOptional.get();
			
			String userName = principal.getName();
			User user = this.userRepository.getUserByUserName(userName);
			
			if(user.getId()==contact.getUser().getId()) {
				
				model.addAttribute("contact", contact);
				model.addAttribute("title", contact.getName());
			}
			
			return "normal/contact_detail";
		}
		*/
	
}
