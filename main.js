document.addEventListener("onload", () => {
  console.log("documet loaded");
  const player = document.querySelector("#musicplayer");
  tracklist = [
    "./music/cyberbulling.mp3",
    "./music/miss_you.mp3",
    "./music/nine_eleven.mp3",
  ];
  player2 = new Audio(tracklist[Math.floor(Math.random() * tracklist.length)]);
  player2.autoplay = true;
  player.src = tracklist[Math.floor(Math.random() * tracklist.length)];
  player.autoplay = true;
  console.log(player);
  console.log(player2);
  player.addEventListener("canplay", () => {
    console.log("can play event");
    player.play();
    player2.play();
  });
});
