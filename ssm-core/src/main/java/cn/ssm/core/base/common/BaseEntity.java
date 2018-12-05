package cn.ssm.core.base.common;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;

import java.io.Serializable;
import java.util.Date;

/**
 * @author Zephyr
 * @date 2018/4/30.
 */
public abstract class BaseEntity<PK> implements Serializable {

    /**
     * 唯一主键，非空，自增
     */
    @TableId(value = "id", type = IdType.AUTO)
    private PK id;
    /**
     * 逻辑删除标记：  “1” 删除， “0” 正常
     */
    @TableField(value = "is_deleted")
    private String isDeleted;
    /**
     * 数据的创建时间，由 BaseMetaObjectHandler 维护
     */
    @TableField(value = "create_time", fill = FieldFill.INSERT)
    private Date createTime;
    /**
     * 数据的最后修改时间，由 BaseMetaObjectHandler 维护
     */
    @TableField(value = "update_time", update = "now()")
    private Date updateTime;


    public PK getId() {
        return id;
    }

    public void setId(PK id) {
        this.id = id;
    }

    public String getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(String isDeleted) {
        this.isDeleted = isDeleted;
    }

    public Date getCreateTime() {
        return (null==createTime ? null : (Date)createTime.clone());
    }

    public void setCreateTime(Date createTime) {
        this.createTime = (null==createTime ? null : (Date)createTime.clone());
        //以下写法与上方注释掉的写法作用完全一致
        //this.createTime = null;
        //if(null != createTime) {
        //    this.createTime = createTime;
        //}
    }

    public void setUpdateTime(Date lastUpdateDate) {
        this.updateTime = (null==lastUpdateDate ? null : (Date)lastUpdateDate.clone() );
    }

    public Date getUpdateTime() {
        if (null == updateTime) {
            return null;
        }
        return (Date)updateTime.clone();
    }

    //额外的方法用于判断数据是否已经逻辑删除
    public boolean isDeleted(){
        return this.isDeleted == null || "1".equals(this.isDeleted);
    }

    //额外的方法用于判断是否为空
    public boolean isNew(){
        if (id == null)
            return false;
        if (id instanceof CharSequence)
            return ((CharSequence) id).length() == 0;
        return false;
    }
}
