package com.sw.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class MemberVO {
	private String uname;
	private String userid;
	private String pwd;
	private String email;
	private String phone;
	private int uadmin;
}
