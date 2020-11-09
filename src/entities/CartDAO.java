package entities;

import java.util.List;

public interface CartDAO {
	
	public void insert(CartBean cart) throws Exception;
	public void update(CartBean cart) throws Exception;
	public CartBean findCartByUser(int user);
	public List<CartBean> findBoughtCartsByUser(int user);
	public CartBean findByID(int id);
	
}
