package com.ccniit.graduation.plus.emil;

import java.io.Serializable;
import java.util.List;

/**
 * 邮箱模版
 */
public class EmailTemplate implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4436088358424703498L;
	private String subject;// 主题
	private String content;// 内容
	private List<String> to;// 接收者

	public EmailTemplate() {
		super();
	}

	public EmailTemplate(String subject, String content) {
		super();
		this.subject = subject;
		this.content = content;
	}

	public EmailTemplate(String subject, String content, List<String> to) {
		super();
		this.subject = subject;
		this.content = content;
		this.to = to;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public List<String> getTo() {
		return to;
	}

	public void setTo(List<String> to) {
		this.to = to;
	}

}
