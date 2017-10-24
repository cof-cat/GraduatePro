package edu.td.model;

/**
 * Uinfo entity. @author MyEclipse Persistence Tools
 */

public class Uinfo implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -6018259466306090808L;
	private String account;
	private User user;//关联表的持久对象
	private Address address;//关联表的持久对象
	private String sex;
	private String phone;

	// Constructors

	/** default constructor */
	public Uinfo() {
	}

	/** minimal constructor */
	public Uinfo(User user) {
		this.user = user;
	}

	/** full constructor */
	public Uinfo(User user, Address address, String sex, String phone) {
		this.user = user;
		this.address = address;
		this.sex = sex;
		this.phone = phone;
	}

	// Property accessors

	public String getAccount() {
		return this.account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Address getAddress() {
		return this.address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}