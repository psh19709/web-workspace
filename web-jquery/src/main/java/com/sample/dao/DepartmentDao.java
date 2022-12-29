package com.sample.dao;

import java.util.List;

import com.sample.util.SqlMapper;
import com.sample.vo.Department;

public class DepartmentDao {
	
	private static DepartmentDao instance = new DepartmentDao();
	private DepartmentDao() {}
	public static DepartmentDao getInstance() {
		return instance;
	}

	@SuppressWarnings("unchecked")
	public List<Department> getAllDepartments() {
		return (List<Department>) SqlMapper.selectList("departments.getAllDepartments");
	}
}
