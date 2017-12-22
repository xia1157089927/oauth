package com.xfj.entity.oauth;

/**
 * Http请求返回
 * @author fujl
 * @version 1.0
 * @date 2017-05-15 00:34:35
 */
public class RespEntity {
    private String  result;
    private boolean success;

    public RespEntity() {
        super();
    }

    public RespEntity(String result, boolean success) {
        super();
        this.result  = result;
        this.success = success;
    }

    public static RespEntity failure(String result) {
        return new RespEntity(result, false);
    }

    public static RespEntity success(String result) {
        return new RespEntity(result, true);
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        if (result != null) {
            this.result = result;
        }
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }
}


//~ Formatted by Jindent --- http://www.jindent.com
