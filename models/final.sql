SELECT
    account_id,
    CURRENT_DATE AS CURRENT_DATE,
    credit - debit AS account_balance
FROM
    {{ ref('with_cte') }}
ORDER BY
    account_id
