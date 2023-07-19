package com.springboot.management.management.employee;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import org.springframework.stereotype.Service;

import jakarta.validation.Valid;

//@Service
//public class EmployeeService {
//	
//	private static List<Employee> employee=new ArrayList<>();
//	private static int empcount=0;
//	static {
//		employee.add(new Employee(++empcount,"tanya","Noida","tanya.rast2212@gmail.com",1232434332,4320));
//	}
//
//	public List<Employee> findByUsername(String username){
//		Predicate<? super Employee> predicate =  emp -> emp.getName().equalsIgnoreCase(username);
//		return employee.stream().filter(predicate).toList();
//	}
//
//	public void addTodo(String username,String address,String email,Long phone,int salary) {
//		Employee emp=new Employee(++empcount,username,address,email,phone,salary);
//		employee.add(emp);
//	}
//	
//	public void deleteTodo(int id) {
//		Predicate <?super Employee> predicate=emp -> emp.getId()==id;
//		employee.removeIf(predicate);
//	}
//
//	public Employee findTodoById(int id) {
//		Predicate <?super Employee> predicate=emp -> emp.getId()==id;
//		Employee todo=employee.stream().filter(predicate).findFirst().get();
//		return todo;
//	}
//
//	public void updateTodo(@Valid Employee emp) {
//		deleteTodo(emp.getId());
//		employee.add(emp);
//	}
//}
//
