WITH source_trans AS (
    SELECT
        *
    FROM
        {{ source(
            'post_test',
            'table_trans'
        ) }}
)
SELECT
    *
FROM
    source_trans
