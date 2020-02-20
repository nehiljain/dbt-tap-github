with source as (

    select * from {{var('schema')}}.commits

),

renamed as (

    select
        _sdc_repository as _sdc_repository,
        commit__author__date as commit__author__date,
        commit__author__email as commit__author__email,
        commit__author__name as commit__author__name,
        commit__comment__count as commit__comment__count,
        commit__committer__date as commit__committer__date,
        commit__committer__email as commit__committer__email,
        commit__committer__name as commit__committer__name,
        commit__message as commit__message,
        commit__tree__sha as commit__tree__sha,
        commit__tree__url as commit__tree__url,
        commit__url as commit__url,
        html__url as html__url,
        parents as parents,
        sha as sha,
        url as url

    from source

)

select * from renamed
