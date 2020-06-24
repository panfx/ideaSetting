 company_name from company where company_id in (select company_id from account where a.status != 4 where a.entity_id = #{mapConditions.entityIdOfCompany,jdbcType=INTEGER}));
;-- -. . -..- - / . -. - .-. -.--
 company_id from account where a.status != 4 ;
;-- -. . -..- - / . -. - .-. -.--
(select company_id from account where a.status != 4;
;-- -. . -..- - / . -. - .-. -.--
select company_id from account where a.status != 4;
;-- -. . -..- - / . -. - .-. -.--
select company_id from account where status != 4;
;-- -. . -..- - / . -. - .-. -.--
 cp.*, c.company_name companyName, c.biz_license license, e.entity_name entityName, ep.id deptId, ep.entity_name deptName
    from company_profit_sales_view cp
    left join entity e on e.id = cp.entity_id
    left join entity ep on ep.id = e.entity_parent
    left join company c on c.company_id = cp.company_id
    
      
        ;
;-- -. . -..- - / . -. - .-. -.--
select cp.*, c.company_name companyName, c.biz_license license, e.entity_name entityName, ep.id deptId, ep.entity_name deptName
    from company_profit_sales_view cp
    left join entity e on e.id = cp.entity_id
    left join entity ep on ep.id = e.entity_parent
    left join company c on c.company_id = cp.company_id;