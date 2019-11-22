String[] Kulor = {"Ruder", "Spar", "Hjerter", "Klør"};
String[] Nummer = {"Es", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Knægt", "Dame", "Konge" };
int samlet_point = 0;

void setup() {
  size (900, 500);
  background (255, 77, 226);
  textSize(50);
  text("Hit", 80, 150);
}

String draw_nummer(int n) {
  String nummer = Nummer[n];
  return nummer;
}

String draw_kulor() {
  String kulor = Kulor[int(random(4))];
  return kulor;
}

void mousePressed() {
  if ((39<mouseX) && (mouseX<181) && (39<mouseY) && (mouseY<181)) {
    clear(); 
    background (255, 77, 226);
    textSize (60);
    int nr = int(random(13));
    text(draw_kulor() + " " + draw_nummer(nr), 50, 350);
    int point = nr+1;
    if (point > 10) {
      point = 10;
    }
    text(point, 50, 400);

    samlet_point = samlet_point + point;
    text("Point" + " " + samlet_point, 180, 440);
    if (samlet_point > 21) {
      textSize(100);

      text("You have lost", 80, 300);
    }
    if (samlet_point == 21) {
      textSize(100);
      text("You have won!", 80, 300);
    }
  }
}
void draw() {

  rect(40, 40, 140, 140);
  fill(1, 1, 50);
  frameRate(60);
  textSize(50);
  text("Hit", 80, 150);
  fill(255, 255, 255);
}
