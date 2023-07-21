package com.entity.view;

import com.entity.KefangkuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 客房库
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-11-23 14:00:13
 */
@TableName("kefangku")
public class KefangkuView  extends KefangkuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public KefangkuView(){
	}
 
 	public KefangkuView(KefangkuEntity kefangkuEntity){
 	try {
			BeanUtils.copyProperties(this, kefangkuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
