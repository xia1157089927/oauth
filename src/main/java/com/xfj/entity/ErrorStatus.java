package com.xfj.entity;

/**
 * 自定义请求状态码
 * @author ScienJus
 * @date 2015/7/15.
 */
public enum ErrorStatus {
	/**   */
	PARAM_NOT_NULL(40001, "缺少参数"),
	/** 参数异常 */
	INVALID_DATA(40002, "数据类型不合法"),
	/** 未认证 */
	UNAUTHORIZED(40003, "未认证"),
	/** 无效的token */
	INVALID_TOKEN(40008, "无效的token"),
	/** 系统异常，请联系开发人员！ */
	SYSTEM_EXCEPTION(50001, "系统异常，请联系开发人员！"),
	/** 数据不存在 */
	DATA_NOT_EXIST(40004, "数据不存在"),
	/** 用户名或密码错误 */
	USERNAME_OR_PASSWORD_ERROR(40005, "用户名或密码错误"),
	/** 验证码错误 */
	
	ILLEGAL_SOCKET(40005, "非法的socket请求"),
	
	SUCCESS(100, "成功"), 
	INVALID_VALID_CODE(400008, "验证码错误"),
	VALIDATOR_DATA_FAULT(-10004, "数据检验不通过"),
	JPUSH_FAULT(-10005, "消息推送失败"),
	JPUSH_BATCH_FAULT(-10006, "批量发送消息部分未成功"),
	WEB_PUSH_SYSTEM_REMOTE_ERROR(-10007, "web端远程登录");
	
	/**
	 * 返回码
	 */
	private int errcode;

	/**
	 * 返回结果描述
	 */
	private String errmsg;

	public int getErrcode() {
		return errcode;
	}

	public void setErrcode(int errcode) {
		this.errcode = errcode;
	}

	public String getErrmsg() {
		return errmsg;
	}

	public void setErrmsg(String errmsg) {
		if (errmsg != null) {
			this.errmsg = errmsg;
		}
	}

	private ErrorStatus(int errcode, String errmsg) {
		this.errcode = errcode;
		this.errmsg = errmsg;
	}

}
