{{
    config(
        materialized='table'
    )
}}



select * from
{{ source('AEVA', 'orders') }}