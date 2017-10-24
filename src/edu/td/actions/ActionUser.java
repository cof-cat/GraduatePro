package edu.td.actions;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import edu.td.dao.DAO;
import edu.td.model.Address;
import edu.td.model.AllInfo;
import edu.td.model.Uinfo;
import edu.td.model.User;

public class ActionUser extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private DAO operationDao, userDao, allInfoDao;
	private List<Object> list = new ArrayList<Object>();
	private String account;
	private String pw;
	private String sex;
	private String phone;
	private String addId;
	private String deail;
	private String newpass;
	

	public void setNewpass(String newpass) {
		this.newpass = newpass;
	}

	private int role;

	public void setRole(int role) {
		this.role = role;
	}

	public void setOperationDao(DAO operationDao) {
		this.operationDao = operationDao;
	}

	public void setUserDao(DAO userDao) {
		this.userDao = userDao;
	}

	public void setAllInfoDao(DAO allInfoDao) {
		this.allInfoDao = allInfoDao;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setAddId(String addId) {
		this.addId = addId;
	}

	public void setDeail(String deail) {
		this.deail = deail;
	}

	/**
	 * 注册
	 * 
	 * @return
	 */
	public String regist() {		
		User userForm = new User(account);
		userForm.setPw(pw);
		userForm.setRole(role);

		Address addressForm = new Address(addId);
		addressForm.setDeail(deail);

		Uinfo uinfoForm = new Uinfo();
		uinfoForm.setSex(sex);
		uinfoForm.setPhone(phone);

		// 关联
		uinfoForm.setAddress(addressForm);
		userForm.setUinfo(uinfoForm);		
		uinfoForm.setUser(userForm);
	
		if (this.operationDao.insert(userForm) == 1)
			return ActionUser.SUCCESS;
		else
			return ActionUser.INPUT;
	}

	/**
	 * 登录
	 * 
	 * @return
	 */
	public String login() {		
		String hql = "from User where account="+"'"+this.account+"'";
		
		User uDB = (User) userDao.findById(hql);
		
		if(uDB==null)
		{
			return "Error";
		}
		
		boolean b = uDB.getPw().trim().equals(this.pw.trim())&&uDB.getRole()==this.role;
		
		String roletype="";
		
		
		switch(role)
		{
		   case 1: roletype="1"; break;
		   case 2: roletype="2"; break;
		   case 3: roletype="3"; break;
		   case 4: roletype="4"; break;
		}
		
		if (b) 
		{
			this.list.clear();
			this.list = this.userDao.findAll("from User");
			HttpServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("list", this.list);
			return roletype;
		} else
			return "Error";
	}
	
	
	/**
	 * 修改密码
	 * 
	 */
	
	
	public String changePass() {
		
		User userForm = new User(account);
		
		String hql = "from User where account="+"'"+this.account+"'";
				
		User uDB = (User) userDao.findById(hql);
		
		if(uDB==null)
		{
			return "Error";
		}
		
		boolean b = uDB.getPw().trim().equals(this.pw.trim());
		
		if(b)
			{
				userForm.setPw(newpass);
				userForm.setRole(role);
			}
		
		
		if (this.operationDao.update(userForm)==1) 
		{
			return SUCCESS;
		} else
			return INPUT;
	}
	
	

	/**
	 * 查询单个的详细信息
	 * 
	 * @return
	 */
	public String infoquery() {
		HttpServletRequest request = ServletActionContext.getRequest();
		if (request.getParameter("id") != null) {
			this.account = request.getParameter("id");
		}

		String hql = "from AllInfo where account='" + this.account + "'";
		
		AllInfo allInfoDB = (AllInfo) allInfoDao.findById(hql);
		if (allInfoDB != null) {

			request.setAttribute("allInfoDB", allInfoDB);
			return ActionUser.SUCCESS;
		} else
			return ActionUser.INPUT;
	}

	/**
	 * 编辑单个的详细信息
	 * 
	 * @return
	 */
	public String edit() {
		HttpServletRequest request = ServletActionContext.getRequest();
		this.account = request.getParameter("id");
		String hql = "from AllInfo where account='" + this.account + "'";
		AllInfo allInfoDB = (AllInfo) allInfoDao.findById(hql);
		if (allInfoDB != null) {

			request.setAttribute("allInfoDB", allInfoDB);
			return ActionUser.SUCCESS;
		} else
			return ActionUser.INPUT;
	}

	/**
	 * 更新单个的详细信息
	 * 
	 * @return
	 */
	public String update() {		
		User userFrom = new User(account);
		userFrom.setPw(pw);

		Address addressFrom = new Address(addId);
		addressFrom.setDeail(deail);

		Uinfo uinfoFrom = new Uinfo();
		uinfoFrom.setAccount(account);		
		uinfoFrom.setSex(sex);
		uinfoFrom.setPhone(phone);
		//关联
		uinfoFrom.setUser(userFrom);
		uinfoFrom.setAddress(addressFrom);
		userFrom.setUinfo(uinfoFrom);	
	
	
		if (this.operationDao.update(userFrom) == 1) {
			
			return ActionUser.SUCCESS;
		} else {

			return ActionUser.INPUT;
		}
	}

	/**
	 * 删除单个对象
	 * 
	 * @return
	 */
	public String delete() {
		HttpServletRequest request = ServletActionContext.getRequest();
		this.account = request.getParameter("id");	
		if (this.operationDao.delete(this.account) == 1) {
			this.list.clear();
			this.list = this.userDao.findAll("from User");			
			request.setAttribute("list", this.list);
			return ActionUser.SUCCESS;
		} else {
			return ActionUser.INPUT;
		}

	}
}
