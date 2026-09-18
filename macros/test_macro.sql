{% macro hello_world() %}
    {{ log("Hello from my macro!", info=True) }}
{% endmacro %}