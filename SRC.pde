Table data;
Table areal;
ArrayList<Uge> uger = new ArrayList<Uge>();

int ugeNu = 1;

void setup(){
surface.setResizable(true);
size(1920,1000);

rectMode(CENTER);
textAlign(CENTER);

clear();
textSize(35);
text("Loading",width/2,height/2);
data = loadTable("https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-states.csv", "header");
areal = loadTable("https://raw.githubusercontent.com/jakevdp/data-USstates/master/state-areas.csv", "header");

for(int Y = 2020; Y<=2021; Y++){
  for(int M = 1; M<=12; M++){
    for(int D = 1; D<=31; D+=7){
      if(Y == 2020 && M == 1 && D < 21){
      break;}
      uger.add(new Uge(Y,M,D));
    }
  }
}

for(Uge r: uger)
r.hentdata();

}

void draw(){
background(150,200,255);

  if(uger.size() > 0)
  uger.get(ugeNu-1).update();
  
  fill(75);
  rect(width/2,height-50,width-150,15);
  rect(ugeNu*24+65,height-50,20,20);
  
}

void keyPressed(){
  
  if(keyCode == LEFT){
      ugeNu --;
        if(ugeNu > 0 && uger.get(ugeNu-1).antalstater <1)
          ugeNu --;
  }
  
  if(keyCode == RIGHT){
    ugeNu ++;
      if(uger.get(ugeNu-1).antalstater <1)
      ugeNu ++;
  }
  
  if(ugeNu < 1)
  ugeNu = 1;
  
  if(ugeNu > 74)
  ugeNu = 74;
  
}
