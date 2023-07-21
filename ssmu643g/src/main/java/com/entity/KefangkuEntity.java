package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 客房库
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2020-11-23 14:00:13
 */
@TableName("kefangku")
public class KefangkuEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public KefangkuEntity() {
		
	}
	
	public KefangkuEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 编号
	 */
					
	private String bianhao;
	
	/**
	 * 客房类型
	 */
					
	private String kefangleixing;
	
	/**
	 * 图片
	 */
					
	private String tupian;
	
	/**
	 * 数量
	 */
					
	private Integer shuliang;
	
	/**
	 * 清洁房间
	 */
					
	private Integer qingjiefangjian;
	
	/**
	 * 洗衣服务
	 */
					
	private Integer xiyifuwu;
	
	/**
	 * 叫醒服务
	 */
					
	private Integer jiaoxingfuwu;
	
	/**
	 * 加床服务
	 */
					
	private Integer jiachuangfuwu;
	
	/**
	 * 送餐服务
	 */
					
	private Integer songcanfuwu;
	
	/**
	 * 保姆服务
	 */
					
	private Integer baomufuwu;
	
	/**
	 * 详情
	 */
					
	private String xiangqing;
	
	/**
	 * 是否审核
	 */
					
	private String sfsh;
	
	/**
	 * 审核回复
	 */
					
	private String shhf;
	
	/**
	 * 最近点击时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date clicktime;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：编号
	 */
	public void setBianhao(String bianhao) {
		this.bianhao = bianhao;
	}
	/**
	 * 获取：编号
	 */
	public String getBianhao() {
		return bianhao;
	}
	/**
	 * 设置：客房类型
	 */
	public void setKefangleixing(String kefangleixing) {
		this.kefangleixing = kefangleixing;
	}
	/**
	 * 获取：客房类型
	 */
	public String getKefangleixing() {
		return kefangleixing;
	}
	/**
	 * 设置：图片
	 */
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
	/**
	 * 设置：数量
	 */
	public void setShuliang(Integer shuliang) {
		this.shuliang = shuliang;
	}
	/**
	 * 获取：数量
	 */
	public Integer getShuliang() {
		return shuliang;
	}
	/**
	 * 设置：清洁房间
	 */
	public void setQingjiefangjian(Integer qingjiefangjian) {
		this.qingjiefangjian = qingjiefangjian;
	}
	/**
	 * 获取：清洁房间
	 */
	public Integer getQingjiefangjian() {
		return qingjiefangjian;
	}
	/**
	 * 设置：洗衣服务
	 */
	public void setXiyifuwu(Integer xiyifuwu) {
		this.xiyifuwu = xiyifuwu;
	}
	/**
	 * 获取：洗衣服务
	 */
	public Integer getXiyifuwu() {
		return xiyifuwu;
	}
	/**
	 * 设置：叫醒服务
	 */
	public void setJiaoxingfuwu(Integer jiaoxingfuwu) {
		this.jiaoxingfuwu = jiaoxingfuwu;
	}
	/**
	 * 获取：叫醒服务
	 */
	public Integer getJiaoxingfuwu() {
		return jiaoxingfuwu;
	}
	/**
	 * 设置：加床服务
	 */
	public void setJiachuangfuwu(Integer jiachuangfuwu) {
		this.jiachuangfuwu = jiachuangfuwu;
	}
	/**
	 * 获取：加床服务
	 */
	public Integer getJiachuangfuwu() {
		return jiachuangfuwu;
	}
	/**
	 * 设置：送餐服务
	 */
	public void setSongcanfuwu(Integer songcanfuwu) {
		this.songcanfuwu = songcanfuwu;
	}
	/**
	 * 获取：送餐服务
	 */
	public Integer getSongcanfuwu() {
		return songcanfuwu;
	}
	/**
	 * 设置：保姆服务
	 */
	public void setBaomufuwu(Integer baomufuwu) {
		this.baomufuwu = baomufuwu;
	}
	/**
	 * 获取：保姆服务
	 */
	public Integer getBaomufuwu() {
		return baomufuwu;
	}
	/**
	 * 设置：详情
	 */
	public void setXiangqing(String xiangqing) {
		this.xiangqing = xiangqing;
	}
	/**
	 * 获取：详情
	 */
	public String getXiangqing() {
		return xiangqing;
	}
	/**
	 * 设置：是否审核
	 */
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
	/**
	 * 设置：审核回复
	 */
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
	/**
	 * 设置：最近点击时间
	 */
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}

}
