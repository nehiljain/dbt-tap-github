with source as (

    select * from {{var('schema')}}.commits

),

renamed as (

    select
        sha as commit_id,
        _sdc_repository as repository_name,
        comments_url as comments_url,
        commit__message as commit_message,
        commit__committer__date as committer_date,
        commit__tree__url as tree_url,
        commit__comment_count as comment_count,
        parents as parents,
        commit__committer__name as committer_name,
        commit__author__date as commit_author_date,
        sha as commit_sha,
        commit__author__name as commit_author_name,
        commit__tree__sha as tree_sha,
        html_url as html_url,
        commit__url as commit_url,
        commit__committer__email as committer_email,
        url as _source_url,
        commit__author__email as commit_author_email

    from source

)

select * from renamed
