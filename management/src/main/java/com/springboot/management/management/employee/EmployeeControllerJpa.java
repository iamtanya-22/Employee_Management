package com.springboot.management.management.employee;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.validation.Valid;

@Controller
public class EmployeeControllerJpa {

	private EmployeeRepository repo;

	public EmployeeControllerJpa(EmployeeRepository repo) {
		super();
		this.repo = repo;
	}
	
	@GetMapping("list-emp")
	public String showEmpPage(ModelMap model){
	    List<Employee> employee=repo.findAll();
		model.put("employee", employee);
		return "listofemp";
	}
	
	@GetMapping("add-emp")
	public String showAddEmpPage(ModelMap model) {
		Employee employee=new Employee(0,"abc","XYZ","abc@gmail.com",000,000);
		model.put("employee", employee);
		return "showemp";
	}
	
	@PostMapping("add-emp")
	public String addNewEmp(ModelMap model,@Valid Employee employee,BindingResult result) {
		if(result.hasErrors())
			return "showemp";
		repo.save(employee);
		return "redirect:list-emp";
	}
	
	@GetMapping("delete-emp")
	public String deleteEmp(@RequestParam int id) {
		repo.deleteById(id);
		return "redirect:list-emp";
	}
	
	@GetMapping("update-emp")
	public String showUpdateEmpPage(ModelMap model,@RequestParam int id) {
		Optional<Employee> employee=repo.findById(id);
		model.put("employee", employee);
		return "showemp";
	}
	
	@PostMapping("update-emp")
	public String addUpdatedEmp(ModelMap model,@Valid Employee employee,BindingResult result) {
		if(result.hasErrors())
			return "showemp";
		repo.save(employee);
		return "redirect:list-emp";
	}
}
