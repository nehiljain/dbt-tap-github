with source as (

    select * from {{var('schema')}}.issues

),

renamed as (

    select

        _sdc_repository as _sdc_repository,
        assignees as assignees,
        body as body,
        closed_at as closed_at,
        comments as comments,
        comments_url as comments_url,
        created_at as created_at,
        events_url as events_url,
        html_url as html_url,
        id as id,
        labels as labels,
        labels_url as labels_url,
        locked as locked,
        milestones as milestones,
        node_id as node_id,
        number as number,
        pull_request__diff_url as pull_request_diff_url,
        pull_request__html_url as pull_request_html_url,
        pull_request__patch_url as pull_request_patch_url,
        pull_request__url as pull_request_url,
        repository_url as repository_url,
        state as state,
        title as title,
        updated_at as updated_at,
        url as url,
        user__id as user_id,
        user__login as user_login

    from source

)

select * from renamed
