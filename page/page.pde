 //Variabels
int num= 50;
int[] Page = new int[num];
int i;
boolean PageChange=true;
int currentpage;
void setup(){
  for (i=0;i<num;i++){
  Page[i]=i;
  println(Page);
  println(i);
  }
}
void draw(){
if (currentpage == Page[28]){
  println(Page[27]);
}
}
