const player = document.querySelector("#musicplayer");
tracklist = [
  "./music/cyberbulling.mp3",
  "./music/miss_you.mp3",
  "./music/nine_eleven.mp3",
];
player2 = new Audio(tracklist[Math.floor(Math.random() * tracklist.length)]);
player2.autoplay = true;
player.src = tracklist[Math.floor(Math.random() * tracklist.length)];
console.log(player2);
player.autoplay = true;
console.log(player);
player.addEventListener("canplay", () => {
  player.play();
});
