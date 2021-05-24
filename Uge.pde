
class Uge{
  ArrayList<Stat> stater = new ArrayList<Stat>();
  
  String dato;
  int d;
  int m;
  int aa;
  int dd;
  int antalstater;
  
  Uge(int aar_, int maaned_, int dag_){
  aa = aar_;
  m = maaned_;
  d = dag_;
  dd = dag_;
  dato = aa+"-"+m+"-"+d;
  }

  void hentdata(){
    for(TableRow r: data.rows()){
      d = dd;
      for(int i = 0; i < 7; i++){
        if(d<10 && m<10)
          dato = aa+"-0"+m+"-0"+d;
        if(d>9 && m<10)
          dato = aa+"-0"+m+"-"+d;
        if(d>9 && m>9)
          dato = aa+"-"+m+"-"+d;
        d++;
        if(r.getString("date").equals(dato)){
          stater.add(new Stat(r.getInt("cases"),r.getString("state"))); antalstater ++;
        }
      }
    }
  }

  void update(){
    for(Stat r: stater){
      r.update();
    }
    
    for(Stat r: stater){
      int si = stater.size();
      for(Stat e: stater){
        int s = stater.size();
        if(r.navn.equals(e.navn) && r.smitte != e.smitte){
          stater.remove(r);
          if(s != stater.size())
          break;
        }
      }
      if(si != stater.size())
        break;
    }
  }

}
