const player = document.querySelector("#musicplayer");
player.autoplay = true;
console.log(player);
player.addEventListener("canplay", () => {
  player.play();
});
