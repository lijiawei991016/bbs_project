package com.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bbs.pojo.Invitation;
import com.bbs.tools.BaseDao;

public class ClientDao {
	/**
	 * 把帖子保存到数据库中
	 * @param invitation--帖子
	 * @return 1-成功 0-失败
	 */
	public int saveInvitation(Invitation invitation) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = BaseDao.getCon();
			String sql = "insert into bbs_invitation("
				+ "invitationId,invitationTitle,invitationMessage,"
				+ "userId,plateId,invitationCreate,invitationModify) "
				+ "values(?,?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			return BaseDao.update(ps,new Object[] {
				invitation.getInvitationId(),invitation.getInvitationTitle(),
				invitation.getInvitationMessage(),invitation.getUserId(),
				invitation.getPlateId(),invitation.getInvitationCreate(),
				invitation.getInvitationModify()
			});
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			BaseDao.close(con, ps, null);
		}
		return 0;
	}
}
