with source as (

    select * from {{var('schema')}}.commits

),

renamed as (

    select

        _sdc_repository as _sdc_repository,
        comments_url as comments_url,
        commit__message as message,
        commit__committer__date as committer_date,
        commit__tree__url as tree_url,
        commit__comment_count as comment_count,
        parents as parents,
        commit__committer__name as committer_name,
        commit__author__date as author_date,
        sha as sha,
        commit__author__name as author_name,
        commit__tree__sha as tree_sha,
        html_url as html_url,
        commit__url as commit_url,
        commit__committer__email as committer_email,
        url as url,
        commit__author__email as author_email

    from source

)

select * from renamed
