/**
 * NUI Message Example
 * SendNUIMessage({
 *     module = "weapon-state",
 *     data = {
 *         type = "",
 *         name = ""
 *     }
 * })
 */

window.addEventListener("message", function (event) {
    if (event.data.module == "weapon-state") {
        const data = event.data.data
    
        switch (data.type) {
            case "updateWeaponState":
                $('#weapon-state-img').attr("src", `imgs/${data.name}.png`);
                break;
    
            case "setWeaponStateImgRight":
                $('.weapon-state').css("right", `${data.name}`);
                break;
    
            case "setWeaponStateImgBottom":
                $('.weapon-state').css("bottom", `${data.name}`);
                break;

            case "hideWeaponStateImg":
                $('.weapon-state').css("display", "none");
                break;

            case "showWeaponStateImg":
                $('.weapon-state').css("display", "initial");
                break;
        
            default:
                break;
        }
    }
});
