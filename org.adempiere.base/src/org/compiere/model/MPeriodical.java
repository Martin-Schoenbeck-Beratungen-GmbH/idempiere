package org.compiere.model;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.Properties;

import org.compiere.util.DB;
import org.compiere.util.Env;

public class MPeriodical extends X_C_Periodical {

	private static final long serialVersionUID = -4353014591873678879L;

	public MPeriodical(Properties ctx, int C_Periodical_ID, String trxName, String[] virtualColumns) {
		super(ctx, C_Periodical_ID, trxName, virtualColumns);
	}

	public MPeriodical(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	public MPeriodical(Properties ctx, int record, String trxName) {
		super(ctx, record, trxName);
	}

	public LinkedList<MPeriodicalSubscriber> getActiveSubscribers(String trxName) throws SQLException {
		
		LinkedList<MPeriodicalSubscriber> rtn = new LinkedList<>();
		
		String sql = "SELECT * FROM c_periodicalsubscriber"
				+ " WHERE ad_client_id = ?"
				+ " AND c_periodical_id = ?"
				+ " AND isactive = 'Y'"
				+ " AND subscribedate <= ?"
				+ " AND subscribeduntil >= ?"
				+ " AND editionspaid > 0";
		PreparedStatement ps = DB.prepareStatement(sql, trxName);
		
		ps.setInt(1, getAD_Client_ID());
		ps.setInt(2, get_ID());
		Date loginDate = Date.valueOf( ((String) Env.getCtx().get(Env.DATE)).split(" ")[0] );
		ps.setDate(3, loginDate);
		ps.setDate(4, loginDate); //new Date(Date.from(Instant.now()).getTime()));
		
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			rtn.add(new MPeriodicalSubscriber(getCtx(), rs, trxName));
		}
		
		DB.close(rs, ps);
		
		return rtn;
	}
}
