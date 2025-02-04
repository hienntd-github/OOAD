package service;

import java.util.List;

import entity.Order;

public interface ICartService {
	void insert(Order cart);
	void edit(Order cart);
	void delete(int id);
	Order get(int id);
	List<Order> getAll();
}
