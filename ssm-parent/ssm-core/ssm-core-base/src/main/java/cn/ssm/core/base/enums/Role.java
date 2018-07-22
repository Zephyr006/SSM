package cn.ssm.core.base.enums;

/**
 * @author Zephyr
 * @date 2018/5/15.
 */
public enum Role {
    USER("普通用户",0), ADMIN("普通管理员",1), SUPERADMIN("超级管理员",2), TEMPUSER("临时用户",3);

    private String name;
    private int index;

    Role (String name, int index){
        this.name = name;
        this.index = index;
    }

    public String getName() {
        return name;
    }

    public int getIndex() {
        return index;
    }
}
