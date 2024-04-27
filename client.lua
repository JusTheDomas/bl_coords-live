ShowNotificationTicker = function(message)
    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName(message)
    EndTextCommandThefeedPostTicker(0, 1)
end

RegisterCommand('vec4', function()
    local coords, heading = GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId())
    SendNUIMessage({
        type = 'clipboard',
        data = '' .. vec(coords.x, coords.y, coords.z, heading)
    })
    ShowNotificationTicker('Copied! ' .. vec(coords.x, coords.y, coords.z, heading))
end)

RegisterCommand('vec3', function()
    local coords, heading = GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId())
    SendNUIMessage({
        type = 'clipboard',
        data = '' .. vec3(coords.x, coords.y, coords.z)
    })
    ShowNotificationTicker('Copied! ' .. vec(coords.x, coords.y, coords.z, heading))
end)

RegisterCommand('vec2', function()
    local coords, heading = GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId())
    SendNUIMessage({
        type = 'clipboard',
        data = '' .. vec2(coords.x, coords.y)
    })
    ShowNotificationTicker('Copied! ' .. vec(coords.x, coords.y))
end)

RegisterCommand('camcoords', function()
    local coords, heading = GetFinalRenderedCamCoord(), GetFinalRenderedCamRot(0)
    SendNUIMessage({
        type = 'clipboard',
        data = '{' .. vec(coords.x, coords.y, coords.z) .. ', ' .. vec(heading.x, heading.y, heading.z) .. ' }'
    })
    ShowNotificationTicker('Copied! ' .. vec(coords.x, coords.y, coords.z) .. ', ' .. vec(heading.x, heading.y, heading.z) )
end)
