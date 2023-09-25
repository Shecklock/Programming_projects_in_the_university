class Button {

  private float x;
  private float y;
  private float w;
  private float h;
  String label;

  public Button(float xp, float yp, float wd, float ht) {
    x=xp;
    y= yp;
    w = wd;
    h = ht;
    label = "";
  }

  public void setLabel(String text)
  {
    label = text;
  }

  public void display() {


    fill(255, 0, 0);
    rect(x, y, w, h);
    fill(0);
    text(label, x+w/2, y+h/2);
  }

  public boolean isInside(float ix, float iy) {
    if (ix>x&& ix< x + w && iy > y && iy < y + h) {
      return true;
    } else {
      return false;
    }
  }
}
