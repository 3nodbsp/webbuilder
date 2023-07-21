package com.dao;

import com.entity.KefangkuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.KefangkuVO;
import com.entity.view.KefangkuView;


/**
 * 客房库
 * 
 * @author 
 * @email 
 * @date 2020-11-23 14:00:13
 */
public interface KefangkuDao extends BaseMapper<KefangkuEntity> {
	
	List<KefangkuVO> selectListVO(@Param("ew") Wrapper<KefangkuEntity> wrapper);
	
	KefangkuVO selectVO(@Param("ew") Wrapper<KefangkuEntity> wrapper);
	
	List<KefangkuView> selectListView(@Param("ew") Wrapper<KefangkuEntity> wrapper);

	List<KefangkuView> selectListView(Pagination page,@Param("ew") Wrapper<KefangkuEntity> wrapper);
	
	KefangkuView selectView(@Param("ew") Wrapper<KefangkuEntity> wrapper);
	
}
