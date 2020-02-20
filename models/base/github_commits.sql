with source as (

    select * from {{var('schema')}}.commits

),

renamed as (

    select

        _sdc_repository as _sdc_repository
        comments_url as comments_url
        commit__message as commit__message
        commit__committer__date as commit__committer__date
        commit__tree__url as commit__tree__url
        commit__comment_count as commit__comment_count
        parents as parents
        commit__committer__name as commit__committer__name
        #author as #author
        commit__author__date as commit__author__date
        sha as sha
        commit__author__name as commit__author__name
        commit__tree__sha as commit__tree__sha
        html_url as html_url
        commit__url as commit__url
        commit__committer__email as commit__committer__email
        url as url
        commit__author__email as commit__author__email

    from source

)

select * from renamed
