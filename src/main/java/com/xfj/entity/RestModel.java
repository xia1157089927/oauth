package com.xfj.entity;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

import io.swagger.annotations.ApiModelProperty;

/**
 * @author fujl
 * @version 1.0
 * @date 2017-04-13 10:29:46
 */
public class RestModel<T> {
	@ApiModelProperty("错误码")
	private int errcode;
	@ApiModelProperty("错误消息")
	private String errmsg;
	@ApiModelProperty("数据")
	@JsonInclude(Include.NON_NULL)
	private T result;

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

	public T getResult() {
		return result;
	}

	public void setResult(T result) {
		if (result != null) {
			this.result = result;
		}
	}

	public RestModel() {
		super();
	}

	public RestModel(int errcode, String errmsg) {
		super();
		this.errcode = errcode;
		this.errmsg = errmsg;
	}

	public RestModel(int errcode, String errmsg, T result) {
		super();
		this.errcode = errcode;
		this.errmsg = errmsg;
		this.result = result;
	}
	
	public RestModel(ErrorStatus errorStatus){
		super();
		this.errcode = errorStatus.getErrcode();
		this.errmsg = errorStatus.getErrmsg();
	}
	
	public RestModel(ErrorStatus errorStatus, T result){
		super();
		this.errcode = errorStatus.getErrcode();
		this.errmsg = errorStatus.getErrmsg();
		this.result = result;
	}
	
	public static <T> ResponseEntity<RestModel<T>> success() {
		return new ResponseEntity<RestModel<T>>(new RestModel<T>(0, "SUCCESS"), HttpStatus.OK);
	}

	public static <T> ResponseEntity<RestModel<T>> success(T result) {
		return new ResponseEntity<RestModel<T>>(new RestModel<T>(0, "SUCCESS", result), HttpStatus.OK);
	}

	public static <T> ResponseEntity<RestModel<T>> error(HttpStatus httpStatus, ErrorStatus resultStatus) {
		return new ResponseEntity<RestModel<T>>(new RestModel<T>(resultStatus.getErrcode(), resultStatus.getErrmsg()), httpStatus);
	}

	public static <T> ResponseEntity<RestModel<T>> error(HttpStatus httpStatus, ErrorStatus resultStatus, String errorMsg) {
		return new ResponseEntity<RestModel<T>>(new RestModel<T>(resultStatus.getErrcode(), errorMsg), httpStatus);
	}
	
	public static <T> ResponseEntity<RestModel<T>> error(HttpStatus httpStatus, ErrorStatus resultStatus, T errorMsg) {
		return new ResponseEntity<RestModel<T>>(new RestModel<T>(resultStatus.getErrcode(), resultStatus.getErrmsg(), errorMsg), httpStatus);
	}

}
