WITH cte AS (
    SELECT
        account_debit_id AS account_id,
        SUM(posting_amt) AS debit
    FROM
        {{ source(
            'post_test',
            'table_trans'
        ) }}
    GROUP BY
        account_debit_id
),
cte_1 AS (
    SELECT
        account_credit_id AS account_id,
        SUM(posting_amt) AS credit
    FROM
        {{ source(
            'post_test',
            'table_trans'
        ) }}
    GROUP BY
        account_credit_id
)
SELECT
    *
FROM
    cte
    INNER JOIN cte_1 USING(account_id)
