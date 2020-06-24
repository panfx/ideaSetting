
 	
      and b.source = #{mapConditions.source, jdbcType=SMALLINT}
      and b.bank = #{mapConditions.bank, jdbcType=VARCHAR}
      and b.status = #{mapConditions.status, jdbcType=INTEGER} 
      and #{mapConditions.staffId,jdbcType=INTEGER} = any(b.sales_entity_ids)
      
        
          and (
            account_name in (select c.company_name from company as c join account as a on c.company_id = a.company_id and a.status != 4 where a.entity_id in (${mapConditions.staffIds})
            union
            select ba.name from bank_account_name as ba join account as a on ba.customer_id = a.customer_id and a.status != 4 where a.entity_id in (${mapConditions.staffIds}) and ba.is_verified = 2
          ))
        
        
          and (b.sales_entity_ids && array[${mapConditions.staffIds}])
        
      
      and b.account_name like '%${mapConditions.accountName}%' 
      and b.entry_date >= #{mapConditions.entryDateFrom, jdbcType=DATE}
      and b.entry_date <= #{mapConditions.entryDateTo, jdbcType=DATE} 
      and b.entry_money = #{mapConditions.entryMoney, jdbcType=NUMERIC}
    
  