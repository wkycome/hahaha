package com.wky.system.entity;

public class User {
	private int userId;
	private String username;
	private String passworld;
	private String phone;
	private String e_mail;
	private String u_gender;
	
	
	public User() {
		
	}
	
	
	public User(int id, String username, String passworld, String phone, String e_mail, String u_gender) {
		super();
		this.userId = id;
		this.username = username;
		this.passworld = passworld;
		this.phone = phone;
		this.e_mail = e_mail;
		this.u_gender = u_gender;
	}


	/**
	 * @return the userId
	 */
	public int getUserId() {
		return userId;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(int userId) {
		this.userId = userId;
	}
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return the passworld
	 */
	public String getPassworld() {
		return passworld;
	}
	/**
	 * @param passworld the passworld to set
	 */
	public void setPassworld(String passworld) {
		this.passworld = passworld;
	}
	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}
	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}
	/**
	 * @return the e_mail
	 */
	public String getE_mail() {
		return e_mail;
	}
	/**
	 * @param e_mail the e_mail to set
	 */
	public void setE_mail(String e_mail) {
		this.e_mail = e_mail;
	}
	/**
	 * @return the u_gender
	 */
	public String getU_gender() {
		return u_gender;
	}
	/**
	 * @param u_gender the u_gender to set
	 */
	public void setU_gender(String u_gender) {
		this.u_gender = u_gender;
	}
	
	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return super.hashCode();
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		return super.equals(obj);
	}
	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "User [userId=" + userId + ", username=" + username + ", passworld=" + passworld + ", phone=" + phone
				+ ", e_mail=" + e_mail + ", u_gender=" + u_gender + "]";
	}

	
	
	

}
