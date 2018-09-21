package cn.ssm.user.api.enums;

/**
 * @author Zephyr
 * @date 2018/5/15.
 */
public enum Role {
    USER(0,"普通用户"), ADMIN(1,"普通管理员"), SUPERADMIN(2,"超级管理员"), TEMPUSER(3,"临时用户");

    private String name;
    private int code;

    Role (int code, String name){
        this.name = name;
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public int getCode() {
        return code;
    }
}
