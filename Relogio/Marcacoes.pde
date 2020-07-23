public class Marcacoes
{
  float px1, px2, px4, px5, px7, px8, px10, px11;
  float py1, py2, py4, py5, py7, py8, py10, py11;
  
  public void marcadores()
  {
    //12
    //ellipse(0, -120, 5, 5);
    line(0, -110, 0, -120);
    // 1
    float px1 = 120 * sin(PI/6);
    float py1 = 120 * cos(PI/6);
    line(px1, -py1, px1, -py1);
    // 2
    float px2 = 120 * sin(PI/3);
    float py2 = 120 * cos(PI/3);
    line(px2, -py2, px2, -py2);
    // 3
    //ellipse( 120, 0, 5, 5);
    line(110, 0, 120, 0);
    // 4
    float px4 = 120 * sin(PI/3);
    float py4 = 120 * cos(PI/3);
    line(px4, py4, px4, py4);
    // 5
    float px5 = 120 * sin(PI/6);
    float py5 = 120 * cos(PI/6);
    line(px5, py5, px5, py5);
    // 6
    //ellipse( 0, 120, 5, 5);
    line(0, 110, 0, 120);
    // 7
    float px7 = 120 * sin(PI/6);
    float py7 = 120 * cos(PI/6);
    line(-px7, py7, -px7, py7);
    // 8
    float px8 = 120 * sin(PI/3);
    float py8 = 120 * cos(PI/3);
    line(-px8, py8, -px8, py8);
    // 9
    //ellipse(-120, 0, 5, 5);
    line(-110, 0, -120, 0);
    //10
    float px10 = 120 * sin(PI/3);
    float py10 = 120 * cos(PI/3);
    line(-px10, -py10, -px10, -py10);
    //11
    float px11 = 120 * sin(PI/6);
    float py11 = 120 * cos(PI/6);
    line(-px11, -py11, -px11, -py11);
  }
}
