with source as (

    select * from {{var('schema')}}.releases

),

renamed as (

    select

        _sdc_repository as _sdc_repository,

        /* author as author, */
        author_id as author_id,
        author_login as author_login,

        body as body,
        created_at as created_at,
        draft as draft,
        html_url as html_url,
        id as id,
        name as name,
        prerelease as prerelease,
        published_at as published_at,
        tag_name as tag_name,
        target_commitish as target_commitish,
        url as url


    from source

)

select * from renamed
