package com.example.CodeGenerator.config;

import com.alibaba.fastjson.JSON;
import com.example.CodeGenerator.core.ResultCode;

/**
 * 统一API响应结果封装
 * @author chenbin on 2017/12/25
 * @version 3.0.0
 */
public class Result {
    private int code;
    private String message;
    private Object data;

    public Result setCode(ResultCode resultCode) {
        this.code = resultCode.code();
        return this;
    }

    public int getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }

    public Result setMessage(String message) {
        this.message = message;
        return this;
    }

    public Object getData() {
        return data;
    }

    public Result setData(Object data) {
        this.data = data;
        return this;
    }

    @Override
    public String toString() {
        return JSON.toJSONString(this);
    }
}
