{% macro insert_audits(actions) %}

    insert into RAW.JAFFLE_SHOP.DBT_AUDITS (audit_type) 
    values( '{{actions}}' )

{% endmacro %}