Config = {
    InteractionDistance = 2.0,

    EnableWebHook = true,
    WHTitle = "New Job Application",
    WHColor = 5814783,
    WHName = "Job Applications",
    WHLink = "https://discord.com/api/webhooks/1370331759748579398/X-UZc58KZGM6sDeDtRx3sWf-aLfcRlihhd43avvoWahYkxqaTiV5v3dpYEjgyvV2VsLB",
    WHLogo = "https://cdn.discordapp.com/attachments/1099372115058229310/1308758906754830407/170x100.png?ex=681e9276&is=681d40f6&hm=0e5af5242802442c736de22d4b847574815dffc5053937a663fb96ff15704e96&",

    AvailableJobs = {
        { job = 'vallaw', label = 'Valentine Deputy', grade = 0 },
        { job = 'blklaw', label = 'blacklaw', grade = 0 },
        { job = 'stdenlaw', label = 'stdenlaw', grade = 0 },
        { job = 'rholaw', label = 'rhodeslaw', grade = 0 },
        { job = 'strlaw', label = 'strawberrylaw', grade = 0 },
        { job = 'traindriver', label = 'Traindriver', grade = 0 },
        { job = 'bountyhunter', label = 'bountyhunter', grade = 0 },
        { job = 'medic', label = 'medic', grade = 0 },
    },

    Locations = {
        {
            name = "Job Application Center",
            coords = vector3(-234.93, 748.07, 117.75),
            promptText = 'Open Job Application Menu',
            promptKey = 0xF3830D8E,
            showBlip = true,
            blipData = {
                sprite = GetHashKey("blip_ambient_newspaper"),
                scale = 0.8,
                color = 4,
                name = 'Speicalist Job Application Center'
            },
            onInteract = function()
                OpenJobApplicationMenu()
            end
        },
        {
            name = "Job Application Center",
            coords = vector3(-234.93, 748.07, 117.75),
            promptText = 'Open Admin Application Menu',
            promptKey = 0xF3830D8E,
            showBlip = false,
            blipData = {
                sprite = GetHashKey("blip_ambient_newspaper"),
                scale = 0.8,
                color = 4,
                name = 'Job Application Center'
            },
            onInteract = function()
                TriggerServerEvent('rsg_job_application:getApplications')
            end,
            isAdminOnly = true
        }
    }
}
