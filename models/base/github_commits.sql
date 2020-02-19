with source as (

    select * from {{var('schema')}}.commits

),

renamed as (

    select
        _sdc_repository as _sdc_repository,

        /* commit_author as commit_author, */
        commit_author_date as commit_author_date,
        commit_author_email as commit_author_email,
        commit_author_name as commit_author_name,

        commit_comment_count as commit_comment_count,

        /* commit_committer as commit_committer, */
        commit_committer_date as commit_committer_date,
        commit_committer_email as commit_committer_email,
        commit_committer_name as commit_committer_name,

        commit_message as commit_message,

        /* commit_tree as commit_tree, */
        commit_tree_sha as commit_tree_sha,
        commit_tree_url as commit_tree_url,
        commit_url as commit_url,

        html_url as html_url,
        parents as parents,
        sha as sha,
        url as url

        /* comments_url as comments_url, */
        /* commit as commit */

    from source

)

select * from renamed
