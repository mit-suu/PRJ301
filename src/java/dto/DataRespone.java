package dto;

public class DataRespone<E> {
    E info;
    String msg;

    public DataRespone(E info, String msg) {
        this.info = info;
        this.msg = msg;
    }

    public E getInfo() {
        return info;
    }

    public void setInfo(E info) {
        this.info = info;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
    
    
}
