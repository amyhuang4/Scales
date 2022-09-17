int col = 0;

void setup() {
  size(500, 500);
  noLoop();
}
void draw() { //which scale
  if (col == 0) { //red
    scale (255, 155, 152);
  }
  if (col == 1) { //yellow
    scale (249, 250, 119);
  }
  if (col == 2) { //blue
    scale (136, 145, 240);
  }
  if (col == 3) { //green
    scale (145, 232, 117);
  }
}

void mouseClicked() { //scale change when click
  col = col + 1;
  if (col>3) {
    col = 0;
  }
  redraw();
}

void scale(int a, int b, int c) {
  background (a-60, b-60, c-60);
  int r = 10;
  for (int y = 515; y > -15; y-=30) { //rows
    for (int x = -15; x <= 515; x = x + 29 + ((int)(Math.random()*7)-3)) { //columns
      int yr = (int)(Math.random()*8)-4;
      fill (a+((int)(Math.random()*14)), b+((int)(Math.random()*14)), c+((int)(Math.random()*14)));
      stroke(a-60, b-60, c-60);
      circle (x+r, y+yr, 30);
      noStroke();
      triangle (x-15+r, y-3, 15+x+r, y-3, x+r, y-30);
    }
    for (int x = 515; x >= -15; x = x - 29 - ((int)(Math.random()*6)-3)) { //every other column
      int yr = (int)(Math.random()*8)-4;
      fill (a+((int)(Math.random()*14)), b+((int)(Math.random()*14)), c+((int)(Math.random()*14)));
      stroke(a-60, b-60, c-60);
      circle (x+r, y-15+yr, 30);
      noStroke();
      triangle (x-15+r, y-3-15, 15+x+r, y-3-15, x+r, y-30-15);
    }
    r = -r;
  }
}
