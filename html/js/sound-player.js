/**
 * NUI Message Example
 * SendNUIMessage({
 *     module = "sound-player",
 *     data = {
 *         file = "",
 *         volume = 1.0
 *     }
 * })
 */

var soundPlayer = null;

window.addEventListener("message", function (event) {
    if (event.data.module == "sound-player") {
        const data = event.data.data
    
        if (soundPlayer != null) {
            soundPlayer.pause();
        }

        soundPlayer = new Howl({
            src: ["./sounds/" + data.file]
        });
        soundPlayer.volume(data.volume);
        soundPlayer.play();
    }
});