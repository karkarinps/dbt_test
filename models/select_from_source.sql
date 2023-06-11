{{ config(materialized='table') }}

with source_trans as (select * from {{ source('post_test', 'table_trans') }})

select * from source_trans
