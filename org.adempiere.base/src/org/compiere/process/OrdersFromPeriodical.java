package org.compiere.process;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.time.Instant;
import java.util.LinkedList;

import org.compiere.model.MBPartner;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MPeriodical;
import org.compiere.model.MPeriodicalEdition;
import org.compiere.model.MPeriodicalSubscriber;
import org.compiere.model.MProduct;
import org.compiere.model.Query;
import org.compiere.util.Msg;

/**
 * 
 * @author Lukas Heidbreder, Martin Schönbeck Beratungen GmbH
 *
 */
@org.adempiere.base.annotation.Process
public class OrdersFromPeriodical extends SvrProcess {

	int periodical_id;
	int m_product_id;
	int editionno;
	
	MPeriodical periodical;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter pip : getParameter()) {
			switch (pip.getParameterName()) {
			case "M_Product_ID": m_product_id = pip.getParameterAsInt(); break;
			case "EditionNo": editionno = pip.getParameterAsInt(); break;
			}
		}
		periodical_id = getRecord_ID();
		periodical = new MPeriodical(getCtx(), periodical_id, get_TrxName());
		if (editionno == 0) {
			String where = MPeriodicalEdition.COLUMNNAME_AD_Client_ID + " = " + getAD_Client_ID()
					+ " AND " + MPeriodicalEdition.COLUMNNAME_C_Periodical_ID + " = " + periodical_id;
			String expr = MPeriodicalEdition.COLUMNNAME_EditionNo;
			editionno = new Query(getCtx(), MPeriodicalEdition.Table_Name, where, get_TrxName()).aggregate(expr, Query.AGGREGATE_MAX, Integer.class) + 1;
		}
	}

	@Override
	protected String doIt() throws Exception {
		
		addPeriodicalEdition();
		
		LinkedList<MPeriodicalSubscriber> subscribers = periodical.getActiveSubscribers(get_TrxName());
		
		int count = 0; //Count for rtn msg
		for (MPeriodicalSubscriber subscriber : subscribers) {
			MOrder order = new MOrder(getCtx(), 0, get_TrxName());
			order.setBPartner( (MBPartner) subscriber.getC_BPartner());
			String description = periodical.getName() + " #" + editionno + "\n";
			order.setDescription(description);
			order.saveEx(get_TrxName());
			
			MOrderLine line = new MOrderLine(order);
			line.setM_Product_ID(m_product_id);
			line.setQty(new BigDecimal(1));
			line.saveEx(get_TrxName());
			
			subscriber.setEditionsPaid(subscriber.getEditionsPaid()-1); //Reduce the leftover editions for this subscriber by 1
			subscriber.saveEx(get_TrxName());
			
			count++;
		}
		
		return Msg.getMsg(getCtx(), "OrdersFromPeriodicalCreated", new Object[] {count});
	}

	private void addPeriodicalEdition () {
		
		MPeriodicalEdition newEdition = new MPeriodicalEdition(periodical);
		
		newEdition.setEditionNo(editionno);
		newEdition.setName(new MProduct(getCtx(), m_product_id, get_TrxName()).getName());
		newEdition.setIntroducedOn(Timestamp.from(Instant.now()));
		newEdition.setM_Product_ID(m_product_id);
		
		newEdition.saveEx(get_TrxName());
	}
}
