package edu.td.model;

/**
 * AllInfo entity. @author MyEclipse Persistence Tools
 */

public class AllInfo implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 2494933749190123122L;
	private AllInfoId id;

	// Constructors

	/** default constructor */
	public AllInfo() {
	}

	/** full constructor */
	public AllInfo(AllInfoId id) {
		this.id = id;
	}

	// Property accessors

	public AllInfoId getId() {
		return this.id;
	}

	public void setId(AllInfoId id) {
		this.id = id;
	}

}