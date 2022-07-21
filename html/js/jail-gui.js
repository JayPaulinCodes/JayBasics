const MASTER_DIV = document.getElementById("jail-gui");
const SELECTED_PLAYER = document.getElementById("player-selected");
const PLAYER_LIST_MENU = document.querySelector("#jail-gui menu#player-list-menu");
const SUBMIT_BUTTON = document.getElementById("submit-jail");
const REASON_INPUT = document.getElementById("jail-input-reason");
const TIME_INPUT = document.getElementById("jail-input-time");
const PLAYER_INPUT = document.getElementById("jail-gui-player-list");
const FORMAT_NEARBY_PLAYER = "➥ %s";
const URL = "https://JayBasics/";
const STRINGS = {
    selectPlayer: "Select A Player",
    reasonPlaceholder: "Jail Reason",
    timePlaceholder: "Length",
    reasonPlaceholderError: "Must Enter A Reason",
    timePlaceholderError: "Length"
}
const HEX = {
    placeholder: "#cdd9ed",
    error: "#ff6c6c"
}
const SIZES = {
    placeholder: "1px",
    error: "4px"
}
var nearbyPlayers = [];

function openClose() {
    SELECTED_PLAYER.textContent = STRINGS.selectPlayer;
    REASON_INPUT.setAttribute("placeholder", STRINGS.reasonPlaceholder);
    TIME_INPUT.setAttribute("placeholder", STRINGS.timePlaceholder);
    REASON_INPUT.style.borderColor = HEX.placeholder;
    REASON_INPUT.style.borderWidth = SIZES.placeholder;
    TIME_INPUT.style.borderColor = HEX.placeholder;
    TIME_INPUT.style.borderWidth = SIZES.placeholder;
    PLAYER_INPUT.style.borderColor = HEX.placeholder;
    PLAYER_INPUT.style.borderWidth = SIZES.placeholder;

    MASTER_DIV.classList.toggle("anim-fadeIn");
    MASTER_DIV.classList.toggle("anim-fadeOut");

    var child = PLAYER_LIST_MENU.lastElementChild; 
    while (child) {
        PLAYER_LIST_MENU.removeChild(child);
        child = PLAYER_LIST_MENU.lastElementChild;
    }

    for (const player in nearbyPlayers) {
        if (Object.hasOwnProperty.call(nearbyPlayers, player)) {
            const PLAYER = nearbyPlayers[player];
            PLAYER.displayName = FORMAT_NEARBY_PLAYER.replace("%s", PLAYER.name);
            
            var playerEntry_div = document.createElement("div");
            var playerEntry_a = document.createElement("a");
            playerEntry_div.appendChild(playerEntry_a);
            playerEntry_a.classList.add("player-item");
            playerEntry_a.id = "player-item";
            playerEntry_a.innerHTML = PLAYER.displayName;
            playerEntry_div.onclick = function() {
                SELECTED_PLAYER.textContent = PLAYER.name;
            }

            PLAYER_LIST_MENU.appendChild(playerEntry_div);
        }
    }
}

SUBMIT_BUTTON.onclick = function() {
    var selected = nearbyPlayers.find(entry => { return entry.name == SELECTED_PLAYER.textContent; })
    var reason = REASON_INPUT.value;
    var length = TIME_INPUT.value;
    var inputsValid = true;

    if (length > 0) {
        TIME_INPUT.style.borderColor = HEX.placeholder;
        TIME_INPUT.style.borderWidth = SIZES.placeholder;
    } else if (length <= 0) {
        TIME_INPUT.style.borderColor = HEX.error;
        TIME_INPUT.style.borderWidth = SIZES.error;
        inputsValid = false;
    }

    if (reason.length > 0) {
        REASON_INPUT.style.borderColor = HEX.placeholder;
        REASON_INPUT.style.borderWidth = SIZES.placeholder;
    } else if (reason.length <= 0) {
        REASON_INPUT.style.borderColor = HEX.error;
        REASON_INPUT.style.borderWidth = SIZES.error;
        inputsValid = false;
    }

    if (selected != undefined) {
        PLAYER_INPUT.style.borderColor = HEX.placeholder;
        PLAYER_INPUT.style.borderWidth = SIZES.placeholder;
    } else if (selected == undefined) {
        PLAYER_INPUT.style.borderColor = HEX.error;
        PLAYER_INPUT.style.borderWidth = SIZES.error;
        inputsValid = false;
    }

    if (inputsValid) {
        // console.log(URL + "submitJailRequest"+ 
        // JSON.stringify({
        //     targetName: selected.name,
        //     targetId: selected.id,
        //     reason: reason,
        //     length: length
        // }))

        $.post(
            URL + "submitJailRequest", 
            JSON.stringify({
                targetName: selected.name,
                targetId: selected.id,
                reason: reason,
                length: length
            })
        );

        openClose();

        $.post(
            URL + "notifyGUIClose", 
            JSON.stringify({
                type: "notifyGUIClose"
            })
        );
    }

}

/**
 * NUI Message Example
 * SendNUIMessage({
 *     module = "jail-gui",
 *     data = {
 *         nearbyPlayers = [
 *             { name = "", id = "" }
 *         ],
 *         action = "open" || "close"
 *     }
 * })
 */

window.addEventListener("message", function (event) {
    if (event.data.module == "jail-gui") {
        const data = event.data.data

        nearbyPlayers = data.nearbyPlayers;

        switch (data.action) {
            case "open":
                
                // Check if it is already open
                // if its open, end
                // if its closed open
                if (!MASTER_DIV.classList.contains("anim-fadeIn")) { 
                    openClose();
                
                    $.post(
                        URL + "notifyGUIOpen", 
                        JSON.stringify({
                            type: "notifyGUIOpen"
                        })
                    );
                }
                break;

            case "close":

                // Check if it is already closed
                // if its closed, end
                // if its opened close
                if (!MASTER_DIV.classList.contains("anim-fadeOut")) {
                    openClose();
                
                    $.post(
                        URL + "notifyGUIClose", 
                        JSON.stringify({
                            type: "notifyGUIClose"
                        })
                    );
                }
                break;
        
            default:
                break;
        }
    }
});

document.addEventListener("keyup", (event) => {
    if (event.key === "Escape") {
        if (!MASTER_DIV.classList.contains("anim-fadeOut")) {
            openClose();
        
            $.post(
                URL + "notifyGUIClose", 
                JSON.stringify({
                    type: "notifyGUIClose"
                })
            );
        }
    }
});

// document.getElementById("buttonopen").addEventListener("click", function (event) {
//     const dddd = {
//         module: "jail-gui",
//         data: {
//             nearbyPlayers: [
//                 { name: "Harris J. 3C-34", id: "1" },
//                 { name: "Jacob P. 3C-276", id: "2" },
//                 { name: "Jalen F. 3C-25", id: "3" },
//                 { name: "Andrew C. 3C-10", id: "4" }
//             ],
//             action: "open"
//         }
//     }

//     if (dddd.module == "jail-gui") {
//         const data = dddd.data

//         nearbyPlayers = data.nearbyPlayers;

//         switch (data.action) {
//             case "open":
                
//                 // Check if it is already open
//                 // if its open, end
//                 // if its closed open
//                 if (!MASTER_DIV.classList.contains("anim-fadeIn")) openClose();
//                 break;

//             case "close":

//                 // Check if it is already closed
//                 // if its closed, end
//                 // if its opened close
//                 if (!MASTER_DIV.classList.contains("anim-fadeOut")) openClose();
//                 break;
        
//             default:
//                 break;
//         }
//     }
// })
// document.getElementById("buttonclose").addEventListener("click", function (event) {
//     const dddd = {
//         module: "jail-gui",
//         data: {
//             nearbyPlayers: [
//                 { name: "Harris J. 3C-34", id: "1" },
//                 { name: "Jacob P. 3C-276", id: "2" },
//                 { name: "Jalen F. 3C-25", id: "3" },
//                 { name: "Andrew C. 3C-10", id: "4" }
//             ],
//             action: "close"
//         }
//     }

//     if (dddd.module == "jail-gui") {
//         const data = dddd.data

//         nearbyPlayers = data.nearbyPlayers;

//         switch (data.action) {
//             case "open":
                
//                 // Check if it is already open
//                 // if its open, end
//                 // if its closed open
//                 if (!MASTER_DIV.classList.contains("anim-fadeIn")) openClose();
//                 break;
                
//             case "close":

//                 // Check if it is already closed
//                 // if its closed, end
//                 // if its opened close
//                 if (!MASTER_DIV.classList.contains("anim-fadeOut")) openClose();
//                 break;
        
//             default:
//                 break;
//         }
//     }
// })