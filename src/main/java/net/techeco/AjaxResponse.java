package net.techeco;

/**
 * Created by vanloibui on 4/9/16.
 */
public class AjaxResponse<T> {

    private String result;
    private T data;

    public AjaxResponse() {
        this.result = "";
        this.data = null;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
