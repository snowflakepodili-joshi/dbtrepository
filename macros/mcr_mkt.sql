{% macro mcr_mkt(C_MKTSEGMENT) %}
    case when {{C_MKTSEGMENT}} in ('HOUSEHOLD','FURNITURE') then 'CT_1'
            when {{C_MKTSEGMENT}} in ('BUILDING','AUTOMOBILE','MACHINERY') then 'CT_2'
                                else 'CT3' end
{% endmacro %}