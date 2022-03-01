/******************************************************************************
 * Product: iDempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2012 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
/** Generated Model - DO NOT CHANGE */
package org.compiere.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;

/** Generated Model for C_PeriodicalSubscriber
 *  @author iDempiere (generated) 
 *  @version Release 9 - $Id$ */
@org.adempiere.base.Model(table="C_PeriodicalSubscriber")
public class X_C_PeriodicalSubscriber extends PO implements I_C_PeriodicalSubscriber, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20220225L;

    /** Standard Constructor */
    public X_C_PeriodicalSubscriber (Properties ctx, int C_PeriodicalSubscriber_ID, String trxName)
    {
      super (ctx, C_PeriodicalSubscriber_ID, trxName);
      /** if (C_PeriodicalSubscriber_ID == 0)
        {
			setC_BPartner_ID (0);
			setC_PeriodicalSubscriber_ID (0);
			setC_Periodical_ID (0);
			setEditionsPaid (0);
			setSubscribedUntil (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Standard Constructor */
    public X_C_PeriodicalSubscriber (Properties ctx, int C_PeriodicalSubscriber_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, C_PeriodicalSubscriber_ID, trxName, virtualColumns);
      /** if (C_PeriodicalSubscriber_ID == 0)
        {
			setC_BPartner_ID (0);
			setC_PeriodicalSubscriber_ID (0);
			setC_Periodical_ID (0);
			setEditionsPaid (0);
			setSubscribedUntil (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Load Constructor */
    public X_C_PeriodicalSubscriber (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 2 - Client 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuilder sb = new StringBuilder ("X_C_PeriodicalSubscriber[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_BPartner getC_BPartner() throws RuntimeException
	{
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_ID)
			.getPO(getC_BPartner_ID(), get_TrxName());
	}

	/** Set Business Partner.
		@param C_BPartner_ID Identifies a Business Partner
	*/
	public void setC_BPartner_ID (int C_BPartner_ID)
	{
		if (C_BPartner_ID < 1)
			set_ValueNoCheck (COLUMNNAME_C_BPartner_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
	}

	/** Get Business Partner.
		@return Identifies a Business Partner
	  */
	public int getC_BPartner_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Periodical Subscriber.
		@param C_PeriodicalSubscriber_ID Periodical Subscriber
	*/
	public void setC_PeriodicalSubscriber_ID (int C_PeriodicalSubscriber_ID)
	{
		if (C_PeriodicalSubscriber_ID < 1)
			set_ValueNoCheck (COLUMNNAME_C_PeriodicalSubscriber_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_C_PeriodicalSubscriber_ID, Integer.valueOf(C_PeriodicalSubscriber_ID));
	}

	/** Get Periodical Subscriber.
		@return Periodical Subscriber	  */
	public int getC_PeriodicalSubscriber_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_PeriodicalSubscriber_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set C_PeriodicalSubscriber_UU.
		@param C_PeriodicalSubscriber_UU C_PeriodicalSubscriber_UU
	*/
	public void setC_PeriodicalSubscriber_UU (String C_PeriodicalSubscriber_UU)
	{
		set_Value (COLUMNNAME_C_PeriodicalSubscriber_UU, C_PeriodicalSubscriber_UU);
	}

	/** Get C_PeriodicalSubscriber_UU.
		@return C_PeriodicalSubscriber_UU	  */
	public String getC_PeriodicalSubscriber_UU()
	{
		return (String)get_Value(COLUMNNAME_C_PeriodicalSubscriber_UU);
	}

	public org.compiere.model.I_C_Periodical getC_Periodical() throws RuntimeException
	{
		return (org.compiere.model.I_C_Periodical)MTable.get(getCtx(), org.compiere.model.I_C_Periodical.Table_ID)
			.getPO(getC_Periodical_ID(), get_TrxName());
	}

	/** Set Periodical.
		@param C_Periodical_ID Periodical
	*/
	public void setC_Periodical_ID (int C_Periodical_ID)
	{
		if (C_Periodical_ID < 1)
			set_ValueNoCheck (COLUMNNAME_C_Periodical_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_C_Periodical_ID, Integer.valueOf(C_Periodical_ID));
	}

	/** Get Periodical.
		@return Periodical	  */
	public int getC_Periodical_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Periodical_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Editions paid.
		@param EditionsPaid The number of editions the customer paid for that are still left to be delivered
	*/
	public void setEditionsPaid (int EditionsPaid)
	{
		set_Value (COLUMNNAME_EditionsPaid, Integer.valueOf(EditionsPaid));
	}

	/** Get Editions paid.
		@return The number of editions the customer paid for that are still left to be delivered
	  */
	public int getEditionsPaid()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_EditionsPaid);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Subscribe Date.
		@param SubscribeDate Date the contact actively subscribed
	*/
	public void setSubscribeDate (Timestamp SubscribeDate)
	{
		set_Value (COLUMNNAME_SubscribeDate, SubscribeDate);
	}

	/** Get Subscribe Date.
		@return Date the contact actively subscribed
	  */
	public Timestamp getSubscribeDate()
	{
		return (Timestamp)get_Value(COLUMNNAME_SubscribeDate);
	}

	/** Set Subscribed until.
		@param SubscribedUntil The date to which the subscription lasts
	*/
	public void setSubscribedUntil (Timestamp SubscribedUntil)
	{
		set_Value (COLUMNNAME_SubscribedUntil, SubscribedUntil);
	}

	/** Get Subscribed until.
		@return The date to which the subscription lasts
	  */
	public Timestamp getSubscribedUntil()
	{
		return (Timestamp)get_Value(COLUMNNAME_SubscribedUntil);
	}
}