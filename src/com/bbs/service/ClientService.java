package com.bbs.service;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import com.bbs.dao.ClientDao;
import com.bbs.pojo.ClientInvitation;
import com.bbs.pojo.Invitation;
import com.bbs.pojo.UserInvitation;

public class ClientService {
	private ClientDao clientDao = new ClientDao();
	/**
	 * 把帖子保存到数据库中
	 * @param invitation--帖子
	 * @return 1-成功 0-失败
	 */
	public int saveInvitation(Invitation invitation) {
		// 对发帖的内容进行过滤处理(正则表达式)
		String title = invitation.getInvitationTitle();
		String meg = invitation.getInvitationMessage();
		// 替换字符串meg中的内容
		//  第一个参数可以采用正则表达式，表示需要替换的内容
		//  第二个参数表示替换成的内容
		meg = meg.replaceAll("(共产党)|(你妈)|(操)","*");
		// 对内容进行编码处理(采用UTF-8编码格式)
		try {
			title = URLEncoder.encode(title, "utf-8");
			meg = URLEncoder.encode(meg, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		// 把替换后的内容，重新赋给值invitation
		invitation.setInvitationTitle(title);
		invitation.setInvitationMessage(meg);
		return clientDao.saveInvitation(invitation);
	}
	/**
	 * 得到所有符合要求的帖子
	 * @param plateId--版块id
	 * @return 帖子列表
	 */
	public List<ClientInvitation> listInvitations(Integer plateId){
		return clientDao.listInvitations(plateId);
	}
	/**
	 * 根据invitationId获取对应账户和帖子信息
	 * @param invitationId
	 * @return 成功返回信息 失败返回Null
	 */
	public UserInvitation findUserInvitationById(String invitationId) {
		return clientDao.findUserInvitationById(invitationId);
	}
}
