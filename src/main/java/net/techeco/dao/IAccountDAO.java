package net.techeco.dao;

import net.techeco.model.Account;

import java.util.List;

public interface IAccountDAO {
	
	public boolean checkLogin(String email, String password);
	public void registerUser(Account account);
	public void updateUserInfo(Account account);
	
	public boolean deactiveUser(String email);
	public boolean activeUser(String email);
	
	
	public List<Account> getAllUser();
	
	
	public Object getAccount(String email);
}
