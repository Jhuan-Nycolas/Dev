const frame = document.querySelector(".canvas")
const ctx = frame.getContext("2d")

frame.width = 640
frame.height = 606

let posX = 10;
let posY = 10;

ctx.fillStyle = "black";
ctx.fillRect(posX, posY, 20, 20)

document.addEventListener("keydown", (e) => {
  if (e.key === "ArrowRight") {
    posX += 10;
  } else if (e.key === "ArrowLeft") {
    posX -= 10;
  } else if (e.key === "ArrowDown") {
    posY += 10;
  } else if (e.key === "ArrowUp") {
    posY -= 10;
  }

  ctx.clearRect(0, 0, frame.width, frame.height);
  ctx.fillRect(posX, posY, 20, 20);
})
