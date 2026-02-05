//🟢setup Function - will run once
setup = function() {
    size(1000, 800);
    background(255,255,255,0);

};

//🟢draw Function - will run on repeat
draw = function(){

drawToad(random(1,1000),mouseY);

};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){

}

//🟡drawFish Function - will run when called
var drawToad = function(toadX, toadY){
  toadColor = color(30, 255 - mouseY/2, 91)
  textSize(80);
  fill(toadColor);
 
  
 ellipse(toadX,toadY,20,20)

  
  y = mouseY;
};






