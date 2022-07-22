package com.nayeon.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ItemVO {
	private Integer code;
	private String iname;
	private Integer price;
	private String pictureurl;
	private String description;
}
