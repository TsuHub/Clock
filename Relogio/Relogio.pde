float rHor =  60;
float rMin = 100;
float rSeg = 100;

float aHor = PI;
float aMin = PI;
float aSeg = PI;

int   hor;
int   min;
float seg;
float padraoSeg = 0.00175100000;
//                0.00175000000 
//                0.00174900000 lento

PGraphics canvas;

int marcador = 2;

void setup()
{
  size(400, 400);
  //canvas = createGraphics(400, 400);
  //canvas.beginDraw();
  //canvas.background(255);
  //canvas.endDraw();
}

void draw()
{
  //image(canvas, 200, 0);
  background(240);
  
  translate(200, 200);
  
  float x1 = rHor * sin(aHor);
  float y1 = rHor * cos(aHor);
  
  float x2 = rMin * sin(aMin);
  float y2 = rMin * cos(aMin);
  
  float x3 = rSeg * sin(aSeg);
  float y3 = rSeg * cos(aSeg);
  
  //Horas
  strokeWeight(7);
  stroke(0);
  line(0, 0, x1, y1);
  fill(0);
  
  //Minutos
  strokeWeight(4);
  stroke(0);
  line(0, 0, x2, y2);
  fill(0);
  
  //Segundos
  strokeWeight(2);
  stroke(255, 0, 0);
  line(0, 0, x3, y3);
  fill(0);
  
  aHor -= padraoSeg/3600;
  aMin -= padraoSeg/60;
  aSeg -= padraoSeg;
  
  strokeWeight(4);
  stroke(0);
  fill(0);
  
  Marcacoes tempo = new Marcacoes();
  tempo.marcadores();
  
  
  Segundos segundos = new Segundos();
  seg += segundos.segundos();
  if(seg >= 0.60)
  {
    seg  = 0;
    min += 1;
  }
  if(min >= 60)
  {
    min  = 0;
    hor += 1;
  }
  text(hor + ":" + min + ":" + seg * 100, -180,190);
  text("Powered by Tsuy", 90, 190);
}
