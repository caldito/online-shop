package entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import com.sun.istack.NotNull;

@Entity
public class ProductBean {
	
	@Id
	private int id;
	
	@Column(name="seller")
	@NotNull
	private int seller;
	
	@Column(name="name")
	@NotNull
	private String name;
	
	@Column(name="status")
	@NotNull
	private int status;
	
	@Column(name="category")
	@NotNull
	private int category;
	
	@Column(name="description")
	@NotNull
	private String description;
	
	@Column(name="image")
	@NotNull
	private String image;
	
	@Column(name="price")
	@NotNull
	private double price;

	public ProductBean(int seller, String name, int status, int category, String description, String image,
			double price) {
		this.seller = seller;
		this.name = name;
		this.status = status;
		this.category = category;
		this.description = description;
		this.image = image;
		this.price = price;
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the seller
	 */
	public int getSeller() {
		return seller;
	}

	/**
	 * @param seller the seller to set
	 */
	public void setSeller(int seller) {
		this.seller = seller;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the status
	 */
	public int getStatus() {
		return status;
	}

	/**
	 * @param status the status to set
	 */
	public void setStatus(int status) {
		this.status = status;
	}

	/**
	 * @return the category
	 */
	public int getCategory() {
		return category;
	}

	/**
	 * @param category the category to set
	 */
	public void setCategory(int category) {
		this.category = category;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the image
	 */
	public String getImage() {
		return image;
	}

	/**
	 * @param image the image to set
	 */
	public void setImage(String image) {
		this.image = image;
	}

	/**
	 * @return the price
	 */
	public double getPrice() {
		return price;
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(double price) {
		this.price = price;
	}
	

}