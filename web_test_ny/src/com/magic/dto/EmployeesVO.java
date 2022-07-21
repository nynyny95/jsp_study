package com.magic.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class EmployeesVO {
	private String eid, pass, ename, lev, phone;
	private Date enter;
	private Integer gender;
}