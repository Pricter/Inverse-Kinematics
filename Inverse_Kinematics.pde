Segment tentacle;

void setup() {
  size(800, 600);
  Segment current = new Segment(300, 200, 10, 0);

  for (int i = 0; i < 80; i++) {
    Segment next = new Segment(current, 10, i);
    current.child = next;
    current = next;

  }
  tentacle = current;
}

void draw() {
  background(51);

  tentacle.follow(mouseX, mouseY);
  tentacle.update();
  tentacle.show();

  Segment next = tentacle.parent;
  while (next != null) {
    next.follow();
    next.update();
    next.show();
    next = next.parent;
  }
}
