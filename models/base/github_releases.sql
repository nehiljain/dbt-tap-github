with source as (

    select * from {{var('schema')}}.releases

),

renamed as (

    select

/*        project_id as project_id,
        commit_id as commit_id,
        tag_name as tag_name,

        author_id as author_id,

        name as release_name,
        description as description,

        created_at as created_at
*/

        url as url,
        body as body,
        _sdc_repository as _sdc_repository,
        name as name,
        author_id as author_id,
        author as author,
        id as id,
        created_at as created_at,
        target_commitish as target_commitish,
        prerelease as prerelease,
        author_login as author_login,
        published_at as published_at,
        draft as draft,
        tag_name as tag_name,
        html_url as html_url


    from source

)

select * from renamed
