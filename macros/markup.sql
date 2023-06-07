{% macro markup() %}

ROUND(((ORDERSELLPRICE - ORDERCOSTPRICE)/ORDERCOSTPRICE)*100,2)

{% endmacro %} }