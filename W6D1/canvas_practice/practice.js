document.addEventListener("DOMContentLoaded", function(){
  const el = document.getElementById("mycanvas");
  el.width = 700;
  el.height = 700;

  const ctx = el.getContext("2d");
  ctx.fillStyle = "blue";
  ctx.fillRect(100, 100, 300, 700);

  // ctx.fillStyle = "red";
  // ctx.fillRect(100, 100, 50, 80);

  ctx.beginPath();
  ctx.arc(400, 200, 30, 0, 2*Math.PI, true);
  ctx.strokeStyle = "black";
  ctx.lineWidth = 60;
  ctx.stroke();
  ctx.fillStyle = "#737";
  ctx.fill();


  ctx.beginPath();
  ctx.arc(200, 200, 30, 0, 2*Math.PI, true);
  ctx.strokeStyle = "black";
  ctx.lineWidth = 60;
  ctx.stroke();
  ctx.fillStyle = "#737";
  ctx.fill();
});
