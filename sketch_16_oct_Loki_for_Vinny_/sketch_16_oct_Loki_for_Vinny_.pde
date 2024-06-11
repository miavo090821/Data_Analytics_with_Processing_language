PFont[] fonts;
color[] colors;
int fontSize = 100;
int xSpacing = 100;
int lastFontChange = 0;
int changeInterval = 200; // Change fonts and colors every 0.2 seconds

void setup() {
  size(500, 500);
  background(0);
  textAlign(CENTER, CENTER);
  fonts = new PFont[4];
  colors = new color[4]; // Create an array for 4 colors
  for (int i = 0; i < 4; i++) {
    fonts[i] = createRandomFont();
    colors[i] = createRandomColor();
  }
}

void draw() {
  background(0);
  stroke(255);

  if (millis() - lastFontChange >= changeInterval) {
    for (int i = 0; i < 4; i++) {
      fonts[i] = createRandomFont();
      colors[i] = createRandomColor(); // Change fonts and colors randomly
    }
    lastFontChange = millis();
  }

  textSize(fontSize);

  for (int i = 0; i < 4; i++) {
    float x = xSpacing * (i + 1);
    
    // Set the fill color using the colors array
    fill(colors[i]);

    textFont(fonts[i]);
    text("LOKI".substring(i, i + 1), x, height / 2);
  }
}

PFont createRandomFont() {
  String[] fontList = PFont.list();
  int randomIndex = int(random(fontList.length));
  return createFont(fontList[randomIndex], fontSize);
}

color createRandomColor() {
  return color(random(255), random(255), random(255)); // Generate a random color
}
