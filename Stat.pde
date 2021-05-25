
class Stat{
  int smitte;
  String navn;
  int x,y;
  float h,b;
  float size;
  String forkortelse = "";
  float farve;

  Stat(int smittetal_, String navn_){
    smitte = smittetal_;
    navn = navn_;
    forkortelse += navn.charAt(0) +""+ navn.charAt(1)+ ".";
    
    switch(navn){
      
      case "Alabama":
        x = 1072;
        y = 344;
        break;
        
      case "Arizona":
        x = 336;
        y = 341;
        break;
      
      case "Arkansas":
        x = 898;
        y = 384;
        break;
        
      case "California":
        x = 118;
        y = 506;
        break;
      
      case "Colorado":
        x = 537;
        y = 506;
        break;
        
      case "Connecticut":
        x = 1365;
        y = 731;
        break;
      
      case "Delaware":
        x = 1453;
        y = 613;
        break;
      
      case "Florida":
        x = 1259;
        y = 196;
        break;
        
      case "Georgia":
        x = 1194;
        y = 353;
        break;
        
      case "Hawaii":
        x = 150;
        y = 150;
        break;
      
      case "Idaho":
        x = 319;
        y = 718;
        break;
        
      case "Illinois":
        x = 966;
        y = 581;
        break;
      
      case "Indiana":
        x = 1055;
        y = 648;
        break;
        
      case "Iowa":
        x = 860;
        y = 626;
        break;
      
      case "Kansas":
        x = 726;
        y = 514;
        break;
        
      case "Kentucky":
        x = 1113;
        y = 523;
        break;
      
      case "Louisiana":
        x = 901;
        y = 254;
        break;
        
      case "Maine":
        x = 1400;
        y = 900;
        break;
      
      case "Maryland":
        x = 1420;
        //there ones was a duck with a very big cock. The duck is called Bik. There was somthing that Bik the duck loved to do. He loved to have fun with himself. He had fun with himself by using blender or playng Bannerlord. The duck is a very fun duck who likes dicks in blender. There was also a fox called Nixi. The fox also liked dicks just like the duck.
        y = 589;
        break;
        
      case "Massachusetts":
        x = 1392;
        y = 765;
        break;
      
      case "Michigan":
        x = 1103;
        y = 782;
        break;

      case "Minnesota":
        x = 821;
        y = 769;
        break;
      
      case "Mississippi":
        x = 988;
        y = 333;
        break;
        
      case "Missouri":
        x = 890;
        y = 515;
        break;
      
      case "Montana":
        x = 492;
        y = 844;
        break;
        
      case "Nebraska":
        x = 698;
        y = 615;
        break;
      
      case "Nevada":
        x = 240;
        y = 543;
        break;
        
      case "New Hampshire":
        x = 1379;
        y = 819;
        break;
      
      case "New Jersey":
        x = 1480;
        y = 645;
        break;
        
      case "New Mexico":
        x = 503;
        y = 341;
        break;
      
      case "New York":
        x = 1290;
        y = 746;
        break;
        
      case "North Carolina":
        x = 1323;
        y = 459;
        break;
      
      case "North Dakota":
        x = 692;
        y = 840;
        break;
      
      case "Ohio":
        x = 1139;
        y = 628;
        break;
    
      case "Oklahoma":
        x = 763;
        y = 391;
        break;
        
      case "Oregon":
        x = 142;
        y = 741;
        break;
      
      case "Pennsylvania":
        x = 1264;
        y = 643;
        break;
        
      case "South Carolina":
        x = 1297;
        y = 378;
        break;
      
      case "South Dakota":
        x = 689;
        y = 732;
        break;
        
      case "Tennessee":
        x = 1050;
        y = 446;
        break;
      
      case "Texas":
        x = 711;
        y = 218;
        break;
        
      case "Utah":
        x = 368;
        y = 523;
        break;
      
      case "Vermont":
        x = 1340;
        y = 813;
        break;
      
      case "Virginia":
        x = 1343;
        y = 533;
        break;
        
      case "Washington":
        x = 200;
        y = 900;
        break;
      
      case "West Virginia":
        x = 1239;
        y = 548;
        break;
        
      case "Wisconsin":
        x = 947;
        y = 731;
        break;
      
      case "Wyoming":
        x = 481;
        y = 664;
        break;
        
      default: 
        x = 5000;
        break;
    }
    
    y = height-y;
    x += 150;
    
    for(TableRow r: areal.rows()){
      if(r.getString("state").equals(navn)){
        size = sqrt(r.getFloat("area (sq. mi)")/7);
      }
    }
    farve = 255-(smitte/(size)/20);
  }
  
  void update(){
   
   fill(255,farve,farve);
   rect(x,y,size,size);
   fill(0);
   textSize(size/8+10);
   text(forkortelse,x,y);
   
   if(abs(mouseX-x)<size/2 && abs(mouseY-y)<size/2){
     fill(255);
     rect(mouseX,mouseY,(navn.length()*10+80),30);
     fill(0);
     textSize(12);
     text(navn + ": " + smitte + " cases",mouseX,mouseY);
     
   }
   
  }
  
}
