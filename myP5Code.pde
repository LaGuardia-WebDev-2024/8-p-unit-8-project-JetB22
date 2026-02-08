//Setup
setup = function () {
    size(1200, 1000);
};

//vars
var jumpAngle = 0;
var frogColor = color(139 - random(1,800)/12, 69 + random(1,800)/10, 19 + random(1,800)/12);
var flies = [];
var score = 0;
var spawnTimer = 0;

//Draw
draw = function () {

    background(255, 255, 255, 0);

    //Move the Frog
    frogX = mouseX;
    jumpAngle += 0.02;

    frogY = map(sin(jumpAngle), -1, 1, height - 40, 40);

    //Draw Frog
    noStroke();
    fill(frogColor);
    ellipse(frogX, frogY, 40, 30);

    //flies
    spawnTimer++;
    if (spawnTimer > 90 & flies.length < 10) {
        flies.push({
            x: random(40, width - 40),
            y: random(40, height - 40),
            fx: random(-1.5, 1.5),
            fy: random(-1.5, 1.5)
        });
        spawnTimer = 0;
    }

    //MOVE FLIES
    fill(0);
    for (var i = flies.length - 1; i >= 0; i--) {
        var f = flies[i];

        f.x += f.fx;
        f.y += f.fy;

        // Bounces
        if (f.x < 20 || f.x > width - 20) f.fx *= -1;
        if (f.y < 20 || f.y > height - 20) f.fy *= -1;

        ellipse(f.x, f.y, 20, 10);

        // Collide for score
        if (dist(frogX, frogY, f.x, f.y) < 25) {
            flies.splice(i, 1);
            score++;
        }
    }

    //Score
    fill(frogColor);
    textSize(100);
    text("Score: " + score, 20, 90);
};

