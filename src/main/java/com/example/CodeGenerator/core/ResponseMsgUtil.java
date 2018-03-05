package com.example.CodeGenerator.core;
public class ResponseMsgUtil {
    public ResponseMsgUtil() {
    }

    public static <T> Result<T> builderResponse(int code, String msg, T data) {
        Result<T> res = new Result();
        res.setResCode(code);
        res.setResMsg(msg);
        res.setData(data);
        return res;
    }

    public static <T> Result<T> success(T data) {
        return builderResponse(1, "Success", data);
    }

    public static <T> Result<T> failure() {
        return builderResponse(0, "Failure", (T) null);
    }

    public static <T> Result<T> illegalRequest() {
        return builderResponse(1008, "Illegal request", (T) null);
    }

    public static <T> Result<T> exception() {
        return builderResponse(1002, "request exception", (T) null);
    }

    public static <T> Result<T> paramsEmpty() {
        return builderResponse(1009, "the input parameter is null", (T) null);
    }
}

