with source as (

    select * from {{var('schema')}}.issues

),

renamed as (

    select

        assignee__id as assignee_id,
        assignee__login as assignee_login,
        assignee__node_id as assignee_node_id,
        assignee__site_admin as assignee_site_admin,
        assignee__type as assignee_type,
        assignee__url as assignee_url,
        assignees as assignees,
        author_association as author_association,
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
        milestone__closed_at as milestone_closed_at,
        milestone__closed_issues as milestone_closed_issues,
        milestone__created_at as milestone_created_at,
        milestone__creator__id as milestone_creator_id,
        milestone__creator__login as milestone_creator_login,
        milestone__creator__node_id as milestone_creator_node_id,
        milestone__creator__site_admin as milestone_creator_site_admin,
        milestone__creator__type as milestone_creator_type,
        milestone__creator__url as milestone_creator_url,
        milestone__description as milestone_description,
        milestone__due_on as milestone_due_on,
        milestone__html_url as milestone_html_url,
        milestone__id as milestone_id,
        milestone__labels_url as milestone_labels_url,
        milestone__node_id as milestone_node_id,
        milestone__number as milestone_number,
        milestone__open_issues as milestone_open_issues,
        milestone__state as milestone_state,
        milestone__title as milestone_title,
        milestone__updated_at as milestone_updated_at,
        milestone__url as milestone_url,
        node_id as node_id,
        number as number,
        repository_url as repository_url,
        state as state,
        title as title,
        updated_at as updated_at,
        url as url,
        user__id as user_id,
        user__login as user_login,
        user__node_id as user_node_id,
        user__site_admin as user_site_admin,
        user__type as user_type,
        user__url as user_url

    from source

)

select * from renamed
