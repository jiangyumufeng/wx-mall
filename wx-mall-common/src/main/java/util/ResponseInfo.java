package util;

import code.CommonCode;

public class ResponseInfo<T> {

    private int code;
    private String message;
    private T data;

    protected ResponseInfo() {
    }

    protected ResponseInfo(int code, String message, T data) {
        this.code = code;
        this.message = message;
        this.data = data;
    }

    public static <T> ResponseInfo<T> success(T data) {
        return new ResponseInfo<T>(CommonCode.SUCCESS.getCode(), CommonCode.SUCCESS.getMessage(), data);
    }
}
