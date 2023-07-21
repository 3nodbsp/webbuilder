package com.dao;

import com.entity.HuanfangxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.HuanfangxinxiVO;
import com.entity.view.HuanfangxinxiView;


/**
 * 换房信息
 * 
 * @author 
 * @email 
 * @date 2020-11-23 14:00:13
 */
public interface HuanfangxinxiDao extends BaseMapper<HuanfangxinxiEntity> {
	
	List<HuanfangxinxiVO> selectListVO(@Param("ew") Wrapper<HuanfangxinxiEntity> wrapper);
	
	HuanfangxinxiVO selectVO(@Param("ew") Wrapper<HuanfangxinxiEntity> wrapper);
	
	List<HuanfangxinxiView> selectListView(@Param("ew") Wrapper<HuanfangxinxiEntity> wrapper);

	List<HuanfangxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<HuanfangxinxiEntity> wrapper);
	
	HuanfangxinxiView selectView(@Param("ew") Wrapper<HuanfangxinxiEntity> wrapper);
	
}
