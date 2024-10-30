package com.entity.view;

import com.entity.BozhuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 博主
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-15 19:54:47
 */
@TableName("bozhu")
public class BozhuView  extends BozhuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public BozhuView(){
	}
 
 	public BozhuView(BozhuEntity bozhuEntity){
 	try {
			BeanUtils.copyProperties(this, bozhuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
