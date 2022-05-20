local ESX = exports.es_extended:getSharedObject()

RegisterNetEvent("SF_Vario:RiparaArma")
AddEventHandler("SF_Vario:RiparaArma", function()
    exports.rprogress:Custom({
        Async = false,
        Duration = 5000,
        canCancel = false,
        ShowTimer = false,  
        ShowProgress = true,  
        Label = "Riparando l'arma...",
        Color = "#1f5eff",
        Animation = {
            animationDictionary = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", 
            animationName = "machinic_loop_mechandplayer",
        },
    })
end)