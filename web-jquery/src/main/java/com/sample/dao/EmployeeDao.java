package com.sample.dao;

import java.util.List;

import com.sample.util.SqlMapper;
import com.sample.vo.Employee;

public class EmployeeDao {
	
	private static EmployeeDao instance = new EmployeeDao();
	private EmployeeDao() {}
	public static EmployeeDao getInstance() {
		return instance;
	}

	@SuppressWarnings("unchecked")
	public List<Employee> getEmployeesByDepartmentId(int departmentId) {
		return (List<Employee>) SqlMapper.selectList("employees.getEmployeesByDepartmentId", departmentId);
	}
	
	public Employee getEmployeeById(int employeeId) {
		return (Employee) SqlMapper.selectOne("employees.getEmployeeById", employeeId);
	}
}
