package com.example.hotel_management;

import javax.persistence.Id;

public class UserdetailsModelDTO {
	 public int getUserid() {
			return userid;
		}
		public void setUserid(int userid) {
			this.userid = userid;
		}
		public String getFirstname() {
			return firstname;
		}
		public void setFirstname(String firstname) {
			this.firstname = firstname;
		}
		public String getLastname() {
			return lastname;
		}
		public void setLastname(String lastname) {
			this.lastname = lastname;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public long getPhnumber() {
			return phnumber;
		}
		public void setPhnumber(long phnumber) {
			this.phnumber = phnumber;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getKeyword() {
			return keyword;
		}
		public void setKeyword(String keyword) {
			this.keyword = keyword;
		}
	@Id
	//   @GeneratedValue(strategy = GenerationType.AUTO)
		int userid;
		String firstname;
		String lastname;
		String email;
		long phnumber;
		String password;
		String keyword;
		
	}

