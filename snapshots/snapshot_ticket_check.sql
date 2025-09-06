{% snapshot snapshot_ticket_check %}

    {{ config(
        target_schema = 'my_snapshots',
        unique_key = 'ticket_id',
        strategy = 'check',
        check_cols = ['ticket_status'],
        invalidate_hard_deletes = True
    )}}

    select * from {{ref('tickets')}}

{% endsnapshot %}