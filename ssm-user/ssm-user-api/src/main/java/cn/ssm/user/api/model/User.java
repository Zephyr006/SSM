package cn.ssm.user.api.model;

import cn.ssm.core.base.BaseEntity;

import java.io.Serializable;
import java.sql.Date;

/**
 * @author Zephyr
 * @date 2018/5/15.
 */
public class User extends BaseEntity implements Serializable {
    private static final long serialVersionUID = 5454155825314635432L;
    /**
     * 用户名，可以包含汉字，也可以是纯数字，非空
     */
    private String userName;
    /**
     * 昵称，可以包含汉字，也可以是纯数字，可空，可重复
     */
    private String nickName;
    /**
     * 密码：只能包含字符，不能包含汉字和非法字符
     */
    private String password;
    /**
     * 出生年月日，可以为空
     */
    //@DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday;
    /**
     * 该账户是否处于被锁定状态，false表示未锁定的正常状态（默认），true表示锁定,注销则直接删除账号
     */
    private boolean isLocked;
    /**
     * 用户身份：0代表普通用户,1代表管理员，默认普通用户
     */
    private int role;


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getBirthday() {
        return birthday == null ? null : (Date) birthday.clone();
    }

    public void setBirthday(Date birthday) {
        this.birthday = (birthday == null ? null : (Date) birthday.clone());
    }

    public boolean isLocked() {
        return isLocked;
    }

    public void setIsLocked(boolean locked) {
        isLocked = locked;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User@ userName=" + getUserName() + " ,password=" + getPassword();
    }
}