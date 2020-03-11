with source as (

    select * from {{var('schema')}}.assignees

),

renamed as (

    select

        _sdc_repository as _sdc_repository,
        id as id,
        login as login,
        type as type,
        url as url

    from source

)

select * from renamed
