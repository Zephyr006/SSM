package cn.ssm.core.base.handler;

import com.baomidou.mybatisplus.mapper.MetaObjectHandler;
import org.apache.ibatis.reflection.MetaObject;

import java.util.Date;

/**
 * MybatisPlus的自定义处理器，用于在执行insert或update操作时处理数据
 *
 * @author Zephyr
 * @date 2018/12/5.
 */
public class BaseMetaObjectHandler extends MetaObjectHandler {

    /**
     * 在执行insert操作时，设置创建时间，清除更新时间
     */
    public void insertFill(MetaObject metaObject) {
        // 创建时间
        Object createDate = getFieldValByName("createTime", metaObject);
        if (createDate == null) {
            setFieldValByName("createTime", new Date(), metaObject);
        }

        // 删除标记
        Object delFlag = getFieldValByName("isDeleted", metaObject);
        if (delFlag == null) {
            setFieldValByName("isDeleted", "0", metaObject);
        }

        // insert时 清除更新时间
        setFieldValByName("updateTime", null, metaObject);
    }

    @Override
    public void updateFill(MetaObject metaObject) {

        // 更新用户
        Object updateDate = getFieldValByName("updateTime", metaObject);
        if (updateDate == null) {
            setFieldValByName("updateTime", new Date(), metaObject);
        }
    }
}
