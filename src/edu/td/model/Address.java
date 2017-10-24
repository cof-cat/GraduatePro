package edu.td.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Address entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class Address implements java.io.Serializable {

	// Fields

	private String addId;
	private String deail;
	@SuppressWarnings("rawtypes")
	private Set uinfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public Address() {
	}

	/** minimal constructor */
	public Address(String addId) {
		this.addId = addId;
	}

	/** full constructor */
	@SuppressWarnings("rawtypes")
	public Address(String addId, String deail, Set uinfos) {
		this.addId = addId;
		this.deail = deail;
		this.uinfos = uinfos;
	}

	// Property accessors

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

	@SuppressWarnings("rawtypes")
	public Set getUinfos() {
		return this.uinfos;
	}

	@SuppressWarnings("rawtypes")
	public void setUinfos(Set uinfos) {
		this.uinfos = uinfos;
	}

}