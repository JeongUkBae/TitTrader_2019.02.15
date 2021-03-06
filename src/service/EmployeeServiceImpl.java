package service;

import java.util.List;

import dao.EmployeeDAO;
import dao.EmployeeDAOImpl;
import domain.EmployeeDTO;



public class EmployeeServiceImpl implements EmployeeService{
	
	private static EmployeeServiceImpl instance = new EmployeeServiceImpl();
	private EmployeeServiceImpl() {dao = EmployeeDAOImpl.getInstance();}
	public static EmployeeServiceImpl getInstance() {return instance;}
	EmployeeDAO dao ;


	@Override
	public void registEmployee(EmployeeDTO emp) {
		System.out.println("---EMP serviceImpl---");
			dao.insertEmployee(emp);				
	}

	@Override
	public List<EmployeeDTO> bringAllEmployeeList() {
				
		return dao.selectAllEmployeeList();
	}

	@Override
	public List<EmployeeDTO> retrieveEmployees(String searchWord) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EmployeeDTO retrieveEmployee(String searchWord) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countEmployees() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean existsEmployee(EmployeeDTO emp) {
		
		return dao.existsEmployee(emp);
	}

	@Override
	public void modifyEmployee(EmployeeDTO emp) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeEmployee(EmployeeDTO emp) {
		// TODO Auto-generated method stub
		
	}

}
