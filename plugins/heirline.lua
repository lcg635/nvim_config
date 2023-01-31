return function(config)
    -- change the 3rd heirline element and leave the rest as the default
    config[1][3] = astronvim.status.component.file_info { filename = { modify = ":." } }

    return config
end
