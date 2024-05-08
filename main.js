const trackList = ["./music/cyberbulling.mp3", "./music/miss_you.mp3", "./music/nine_eleven.mp3"];
const source = trackList[Math.floor(Math.random() * trackList.length)];
const player = new Audio(source);

const DISABLE_MUSIC_KEY = "disableMusic";

const acceptCookieButton = document.getElementById("cookie-btn");
const rejectButton = document.getElementById("reject-btn");
const cookieContainer = document.getElementById("cookie-container");
const cookieAlert = document.getElementById("cookie-alert");

acceptCookieButton.addEventListener("click", () => {
    cookieContainer.remove();
    tryPlaySound();
});
rejectButton.addEventListener("click", () => {
    localStorage.setItem(DISABLE_MUSIC_KEY, true);
    cookieContainer.remove();
    tryStopSound();
});

if (!localStorage.getItem(DISABLE_MUSIC_KEY)) {
    cookieAlert.classList.remove("hidden");
}

const tryPlaySound = () => {
    try {
        player.play();
    } catch {}
};
const tryStopSound = () => {
    try {
        player.pause();
    } catch {}
};
