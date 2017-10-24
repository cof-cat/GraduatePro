package edu.td.model;

/**
 * AllInfoId entity. @author MyEclipse Persistence Tools
 */

public class AllInfoId implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 8836003488137387606L;
	private String account;
	private String pw;
	private String sex;
	private String phone;
	private String addId;
	private String deail;
	private int role;

	// Constructors

	/** default constructor */
	public AllInfoId() {
	}

	/** minimal constructor */
	public AllInfoId(String account, String addId) {
		this.account = account;
		this.addId = addId;
	}

	/** full constructor */
	public AllInfoId(String account, String pw, String sex, String phone,
			String addId, String deail) {
		this.account = account;
		this.pw = pw;
		this.sex = sex;
		this.phone = phone;
		this.addId = addId;
		this.deail = deail;
	}

	// Property accessors

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}
	
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

	public String getAddId() {
		return this.addId;
	}

	public void setAddId(String addId) {
		this.addId = addId;
	}

	public String getDeail() {
		return this.deail;
	}

	public void setDeail(String deail) {
		this.deail = deail;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof AllInfoId))
			return false;
		AllInfoId castOther = (AllInfoId) other;

		return ((this.getAccount() == castOther.getAccount()) || (this
				.getAccount() != null && castOther.getAccount() != null && this
				.getAccount().equals(castOther.getAccount())))
				&& ((this.getPw() == castOther.getPw()) || (this.getPw() != null
						&& castOther.getPw() != null && this.getPw().equals(
						castOther.getPw())))
				&& ((this.getSex() == castOther.getSex()) || (this.getSex() != null
						&& castOther.getSex() != null && this.getSex().equals(
						castOther.getSex())))
				&& ((this.getPhone() == castOther.getPhone()) || (this
						.getPhone() != null && castOther.getPhone() != null && this
						.getPhone().equals(castOther.getPhone())))
				&& ((this.getAddId() == castOther.getAddId()) || (this
						.getAddId() != null && castOther.getAddId() != null && this
						.getAddId().equals(castOther.getAddId())))
				&& ((this.getDeail() == castOther.getDeail()) || (this
						.getDeail() != null && castOther.getDeail() != null && this
						.getDeail().equals(castOther.getDeail())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getAccount() == null ? 0 : this.getAccount().hashCode());
		result = 37 * result + (getPw() == null ? 0 : this.getPw().hashCode());
		result = 37 * result
				+ (getSex() == null ? 0 : this.getSex().hashCode());
		result = 37 * result
				+ (getPhone() == null ? 0 : this.getPhone().hashCode());
		result = 37 * result
				+ (getAddId() == null ? 0 : this.getAddId().hashCode());
		result = 37 * result
				+ (getDeail() == null ? 0 : this.getDeail().hashCode());
		return result;
	}

}