package org.compiere.model;

public class MPeriodicalEdition extends X_C_PeriodicalEdition {

	private static final long serialVersionUID = 7223894018241394414L;

	public MPeriodicalEdition(MPeriodical periodical) {
		super(periodical.getCtx(), 0, periodical.get_TrxName());
		setC_Periodical_ID(periodical.get_ID());
	}

	
}
