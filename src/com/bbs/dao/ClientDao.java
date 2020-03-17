package com.bbs.dao;

import java.net.URLDecoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

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
	/**
	 * 得到所有符合要求的帖子
	 * @return 帖子列表
	 */
	public List<Invitation> listInvitations(){
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 保存所有帖子的列表
		List<Invitation> invitations = new ArrayList<>();
		try {
			con = BaseDao.getCon();
			// 增加了条件，必须通过审核，才能显示
			String sql = "select * from bbs_invitation where isPass=1"
					+ " order by invitationCreate desc";
			ps = con.prepareStatement(sql);
			rs = BaseDao.query(ps,null);
			// 格式化日期时间
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			// 逐行把信息读取出来，放入列表中
			while(rs.next()) {
				invitations.add(
					new Invitation(
							rs.getString("invitationId"),
							URLDecoder.decode(rs.getString("invitationTitle"),"UTF-8"),
							URLDecoder.decode(rs.getString("invitationMessage"),"UTF-8"),
							rs.getString("userId"),rs.getInt("plateId"),
							rs.getInt("categoryId"),rs.getInt("isPass"),
							rs.getInt("isEnable"),rs.getInt("isCream"),
							sdf.parse(rs.getString("invitationCreate")),
							sdf.parse(rs.getString("invitationModify")))
				);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			BaseDao.close(con, ps, rs);
		}
		return invitations;
	}
}
