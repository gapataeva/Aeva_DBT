{{
    config(
        materialized='table'
    )
}}



select * from
{{ source('AEVA', 'customer') }}