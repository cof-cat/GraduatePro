package edu.td.model;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 4920668409271734828L;
	private String account;
	private String pw;
	private Uinfo uinfo;//关联表的持久对象
	private int role;

	// Constructors

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String account) {
		this.account = account;
	}

	/** full constructor */
	public User(String account, String pw, Uinfo uinfo) {
		this.account = account;
		this.pw = pw;
		this.uinfo = uinfo;
	}

	// Property accessors

	public String getAccount() {
		return this.account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPw() {
		return this.pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public Uinfo getUinfo() {
		return this.uinfo;
	}

	public void setUinfo(Uinfo uinfo) {
		this.uinfo = uinfo;
	}

}