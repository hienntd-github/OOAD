package dao;

import java.util.List;

import entity.Account;

public interface IAccountDao {
	public void insertAccount(String user, String pass, int type, String email);
	public void deleteAccount(String user);
	public List<Account> getAllAccount();
}
