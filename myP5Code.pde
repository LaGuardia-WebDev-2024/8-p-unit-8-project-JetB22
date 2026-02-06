//🟢setup Function - will run once
setup = function() {
    size(1000, 800);
    background(255,255,255,0);

};

var flyMove = 0;

//🟢draw Function - will run on repeat
draw = function(){



drawFly(random(1,1000)+flyMove-flyMove,random(1,1000)+flyMove-flyMove);

frameRate(1);

flyMove += random(1,10);

};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){

}

//🟡drawFish Function - will run when called
var drawToad = function(toadX, toadY){
  toadColor = color(139 - random(1,800)/12, 69 + random(1,800)/10, 19 + random(1,800)/12)
  textSize(80);
  fill(toadColor);
  noStroke();
  
 ellipse(toadX,toadY,20,20);
};

var drawFly = function(flyX, flyY){
  flyColor = color(0)
  textSize(80);
  fill(flyColor);
  noStroke();
  
 ellipse(flyX,flyY,20,10);
};




