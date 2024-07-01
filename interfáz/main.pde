void setup(){
 size(1000,1000);
 background(999,999,999);
 ellipse(width/2, height/2, 400,200);
 line(0,height/2, width, height/2);
 line(width/2, 0, width/2, height);
 int coordenadas = -20;
 int distancia = width/40;
 for(int i = 0; i < width; i += distancia){
   line(i,height/2, i, height/2.05);
   textSize(10);
   fill(0,0,0);
   text(coordenadas,i, height/2.04);
   coordenadas++;
 }
 coordenadas = -20;
 distancia = height/40;
 for(int i = 0; i < height; i += distancia){
    line(width/2, i, width/2.05, i);
   textSize(10);
   if(coordenadas == 0){
     coordenadas++;
     continue;
   }
   text(coordenadas,width/2.09, i);
   coordenadas++;
   
 }
 
}
