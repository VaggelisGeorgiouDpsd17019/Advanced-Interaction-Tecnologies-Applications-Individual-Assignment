 //<>//
//TUIO 1.1 Demo for Processing

/*
Ftiaxnw 2 metavlites posX,posY, tis opoies tha xrhsimopoihsw sth synexeia mesa sth draw. Otan emfanizw kapoio fiducial sthn kamera, kai to kounaw - thelw oi thesis x,y tou
fiducial na antistoixizontai me tis thesis x,y kapoias eikonas h' antikeimenou pou tha emfanizei to programma mesw tis draw. Dhladh oi posX,posY antistoixizontai me tis x,y tou
fiducial. To programma entopizei to fiducial pou tou emfanizw, kai emfanizei sto programma kapoio antikeimeno h' eikona. 
- apo video me link "https://www.youtube.com/watch?v=qKXlI4zAMAY&list=TLPQMDMwMTIwMjPBNmA_C0GxOw&index=2".
*/

float posX0;
float posY0;

//float tobjGetAngle_forFID1; //gia Fiducial me ID 1
float transparency;// Ekana global ti metavlhth transparency, gia na mporei na anagnwrizetai apo ton kwdika tou fiducial me id 2

//float red;
//float green;
//float blue;

float ImgWidth = 132;//Afora tin emfanisi eikonas apo to fiducial me id 0 kai syndyazei ton kwdika gia to fid me id 0 - me ton kwdika gia to fid me id 3
float ImgHeight = 132;//Afora tin emfanisi eikonas apo to fiducial me id 0 kai syndyazei ton kwdika gia to fid me id 0 - me ton kwdika gia to fid me id 3
float offset;//Afora tin emfanisi eikonas apo to fiducial me id 0 kai syndyazei ton kwdika gia to fid me id 0 - me ton kwdika gia to fid me id 3

PImage GoblinImg; //prosthiki apo 15.1. gia emfanisi eikonas


// import the TUIO library
import TUIO.*;
// declare a TuioProcessing client
TuioProcessing tuioClient;

// these are some helper variables which are used
// to create scalable graphical feedback
float cursor_size = 15;
float object_size = 60;
float table_size = 760;
float scale_factor = 1;
PFont font;

boolean verbose = false; // print console debug messages
boolean callback = true; // updates only after callbacks

void setup()
{
  // GUI setup
  noCursor();
  
  /*Kanw sto size allagi apo size(displayWidth,displayHeight) se size(600,600). Kat' auton ton tropo tha borw 
  na vlepw parallhla ton tuio simulator kai to programma otan trexei. Stin default periptwsh to size einai fullscreen
  kai den mas epitrepei na vlepoume kai ton simulator. H allagh ayth proekypse apto video me link "https://www.youtube.com/watch?v=tJ0aZzST-N4&t=123s"*/
  size(640,450); 
  noStroke();
  fill(0);
 
  
  GoblinImg = loadImage("goblin1.jpg"); //prosthiki apo 15.1. gia fortwsh eikonas
  
  
  // periodic updates
  if (!callback) {
    frameRate(60); //<>//
    loop();
  } else noLoop(); // or callback updates 
  
  font = createFont("Arial", 18);
  scale_factor = height/table_size;
  
  // finally we create an instance of the TuioProcessing client
  // since we add "this" class as an argument the TuioProcessing class expects
  // an implementation of the TUIO callback methods in this class (see below)
  tuioClient  = new TuioProcessing(this);
}

// within the draw method we retrieve an ArrayList of type <TuioObject>, <TuioCursor> or <TuioBlob>
// from the TuioProcessing client and then loops over all lists to draw the graphical feedback.
void draw()
{
  background(255);
  
  textFont(font,18*scale_factor);
  float obj_size = object_size*scale_factor; //anaferetai sto size tou antikeimenou (dhl. tou tetragwnou pou emfanizetai mesw tis draw)
  float cur_size = cursor_size*scale_factor; 
   
  ArrayList<TuioObject> tuioObjectList = tuioClient.getTuioObjectList(); //ArrayList<Ti periexei> OnomaArrayList;
  
  for (int i=0;i<tuioObjectList.size();i++) {
     TuioObject tobj = tuioObjectList.get(i); 
     stroke(0);  //stroke koutiou
     fill(0,0,0); //xrwma koutiou
     pushMatrix();
     translate(tobj.getScreenX(width),tobj.getScreenY(height));
     rotate(tobj.getAngle());
     rect(-obj_size/2,-obj_size/2,obj_size,obj_size); 
     popMatrix();
     fill(255); //xrwma font
     text(""+tobj.getSymbolID(), tobj.getScreenX(width), tobj.getScreenY(height));
     
     /*h parakatw grammi kwdika emfanizei thn eikona mono me to fiducial me id 0.
     Ean den valoume to imageMode(CENTER), h panw aristera gwnia tis eikonas tha ksekinaei 
     apo to posX0,posY0, synepws h eikona den tha einai kentrarismeni se sxesi me to object. 
     
     O kwdikas me thn prosthiki tou "imageMode(CENTER);" htan ws eksis: 
        if(tobj.getSymbolID() == 0)
         {
          imageMode(CENTER); 
          image(GoblinImg, posX0, posY0);
         }
    Meta stoxos mou htan otan emfanizw to fiducial me id 1 na mporw na kanw rotate tin eikona mesw tou tobj.getAngle. Par' ola ayta ayth i diadikasia
    den apodose. O kwdikas pou eixa grapsei gia to fid me id 1 htan o eksis kai ton eixa parei apto vivlio sel 272-273 "Simple Rotation":
     if(tobj.getSymbolID() == 1){
     //translate(tobj.getScreenX(width),tobj.getScreenY(height));
     //rotate(tobj.getAngle()); 
     //imageMode(CENTER);
     //image(GoblinImg, 0, 0);
     //image(GoblinImg, tobj.getScreenX(width), tobj.getScreenY(height));
     }
     Ayth h diadikasia den leitoyrgouse, kathws emfanizontan 2 eikones (mia apo to fid 0 kai mia apo to fid 1) kai strifogyrnousan metaksy tous.
     Opote apofasisa na entaksw thn entoli rotate mesa sto fiducial me id 0, opws fainetai kai parakatw. Pleon me tin emfanisi tou fiducial me id 0,
     o xrhsths mporei, toso na metakinisei thn eikona, oso kai na tin strepsei gyrw apton eayto tis, otan strefei to idio to fiducial.
     
     */
     if(tobj.getSymbolID() == 0)
     {
       posX0 = tobj.getScreenX(width);
       posY0 = tobj.getScreenY(height);
       
       //translate(tobj.getScreenX(width),tobj.getScreenY(height)); 
       translate(posX0,posY0);
       rotate(tobj.getAngle()); 
       imageMode(CENTER);
       image(GoblinImg, 0, 0, ImgWidth, ImgHeight);
     }
     
//-----------------------------------------------------------------------------------------------------------------------------------------------------     
     /*Epomenos typos epeksergasias eikonas apofasisa na htan h allagh tou transparency mesw twn entolwn tint kai map. Arxika
     eftiaksa mia metavliti "transparency" typou float.*/
     
   if(tobj.getSymbolID() == 1 )
   {
       /*Dokimasa na kanw tin eksis grammi kwdika "float transparency = map (tobj.getAngle(), 0, 2*PI, 0, 255);" global, omws mou
       evgaze error oti den mporei na anagnwristei to "tobj.getAngle()". Etsi ekana global tin eksis grammi kwdika "float transparency;", wste 
       na mporw na thn xrhsimopoihsw parakatw (otan tha emfanizw to fid me id 2) pou tha ephreazei to hue tis eikonas. Stoxos mou htan na diathreitai
       to transparency symfwna me th gwnia tou fid me id 1.*/
       
       //tobjGetAngle_forFID1 = tobj.getAngle();
       transparency = map (tobj.getAngle(), 0, 2*PI, 0, 255);

     tint(255, transparency);
     } 
     
//-----------------------------------------------------------------------------------------------------------------------------------------------------    
    /*Katopin, me paromoia skepsi kai merikes allages ston kwdika gia to fiducial 2, eftiaksa ton epomeno tropo
    epeksergasias pou afora tin allagh twn rgb xrwatwn. Dhl prospatheia allaghs tou hue.*/
   
   if(tobj.getSymbolID() == 2)
   {
      
      float red = map (tobj.getAngle(), PI/2, 11*PI/6, 0, 255);
      float green = map (tobj.getAngle(), 11*PI/6, 7*PI/6, 0, 255);
      float blue = map (tobj.getAngle(), 7*PI/6, PI/2, 0, 255);
      
      
      tint(red, green, blue, transparency); 
   }
   
//-----------------------------------------------------------------------------------------------------------------------------------------------------   
//Arxikos kwdikas gia zoom

   /*if(tobj.getSymbolID() == 3)
   {
   //Antimetwpizei provlima, giati akoma kai an DEN kanw rotate to fiducial, kai exei klish apo prin
   //tha ayksomoiwnei tin eikona. Prepei loipon MONO otan kanw rotate to fiducial na ayksomoiwnetai h eikona!!!
   //Synepws prepei na xrhsimopoihsw diaforetiko tropo aykshshs tou megethous.
     
     if (tobj.getAngle()> PI/2 )  //if tobj.GetAngle apo toso ews toso kane zoom 
      {
         ImgWidth = ImgWidth + zoom;
         ImgHeight = ImgHeight + zoom;
      }
     else
        if (tobj.getAngle()< PI/2 ) //if tobj.GetAngle apo toso ews toso kane ksezoom 
      {
         ImgWidth = ImgWidth - zoom;
         ImgHeight = ImgHeight - zoom;
      }
      */
      
//Allagi kwdika gia zoom

       if(tobj.getSymbolID() == 3) 
       {
         offset = 1;
         
         if (tobj.getRotationSpeed()> 0) // Allagi se tobj.getRotationSpeed() apo tobj.getAngle()
         {
         offset = offset + 5;
         ImgWidth = ImgWidth + offset;
         ImgHeight = ImgHeight + offset;
         }
         else 
         if (tobj.getRotationSpeed()<0) // Allagi se tobj.getRotationSpeed() apo tobj.getAngle()
         {
         offset = offset - 5;
         ImgWidth = ImgWidth + offset; //vazw "+" offset, giati (+) + (-) = (-) apo mathimatika
         ImgHeight = ImgHeight + offset;
         }
         
         //ImgWidth = ImgWidth + offset; //vazw "+" offset, giati (+) + (-) = (-) apo mathimatika
         //ImgHeight = ImgHeight + offset;
       }

  
   
   
   /*Epeidh to programma emfanize 2h eikona otan emfaniza to fid me id 3 apofasisa na dokimasw enan allo tropo gia tin ylopoihsh tou zoom.
   Arxika dhmiourghsa dyo global metavlites typou float gia to width kai to height tis eikonas, tis onomasa ImgWidth kai ImgHeight, kai tous anethesa
   times 132 kai 132 antistoixa (osa kai ta pixel tou width kai tou height tis eikonas). Epeita eftiaksa
   mia akoma metavliti typou float kai tin onomasa zoom kai tis anethesa tin timi 10; Anetreksa ston kwdika pou aforouse to fid me id 0, kai prosthesa stin emfanisi tis eikonas
   tis metavlites gia to width kai to height "image(GoblinImg, 0, 0, ImgWidth, ImgHeight)". Sth synexeia ston kwdika pou afora to fiducial me id 3 ekana tis eksis prosthikes:
   if (tobj.getAngle()> PI/2 ) {ImgWidth = ImgWidth + zoom; kai ImgHeight = ImgHeight + zoom;}, 
   if (tobj.getAngle()< PI/2 ) {ImgWidth = ImgWidth - zoom; kai ImgHeight = ImgHeight - zoom;} */
     
     /*H parakatw prosthiki println("add obj "...getAngle()); proekypse apto video me link 
     "https://www.youtube.com/watch?v=tJ0aZzST-N4&list=TLPQMDMwMTIwMjPBNmA_C0GxOw&index=1". Apotelei aytousia 
     antigrafh ths grammis kwdika tou paradeigmatos "TuioDump", kai vrisketai katw apo tin void draw(){...} sthn
     synarthsh void addTuioObject(TuioObject tobj){...}*/
     
      println("add obj "+tobj.getSymbolID()+" ("+tobj.getSessionID()+") "+tobj.getX()+" "+tobj.getY()+" "+tobj.getAngle());
   
     
  }    
  
     
   
   ArrayList<TuioCursor> tuioCursorList = tuioClient.getTuioCursorList();
   for (int i=0;i<tuioCursorList.size();i++) {
      TuioCursor tcur = tuioCursorList.get(i);
      ArrayList<TuioPoint> pointList = tcur.getPath();
      
      if (pointList.size()>0) {
        stroke(0,0,255); //to xrwma pou zwgrafizei to pontiki otan kanoume deksi klik
        TuioPoint start_point = pointList.get(0);
        for (int j=0;j<pointList.size();j++) {
           TuioPoint end_point = pointList.get(j);
           line(start_point.getScreenX(width),start_point.getScreenY(height),end_point.getScreenX(width),end_point.getScreenY(height));
           start_point = end_point;
        }
        
        stroke(192,192,192);
        fill(192,192,192);
        ellipse( tcur.getScreenX(width), tcur.getScreenY(height),cur_size,cur_size);
        fill(0);
        text(""+ tcur.getCursorID(),  tcur.getScreenX(width)-5,  tcur.getScreenY(height)+5);
      }
   }
   
  ArrayList<TuioBlob> tuioBlobList = tuioClient.getTuioBlobList();
  for (int i=0;i<tuioBlobList.size();i++) {
     TuioBlob tblb = tuioBlobList.get(i);
     stroke(0); 
     fill(0);
     pushMatrix();
     translate(tblb.getScreenX(width),tblb.getScreenY(height));
     rotate(tblb.getAngle());
     ellipse(-1*tblb.getScreenWidth(width)/2,-1*tblb.getScreenHeight(height)/2, tblb.getScreenWidth(width), tblb.getScreenWidth(width));
     popMatrix();
     fill(255);
     text(""+tblb.getBlobID(), tblb.getScreenX(width), tblb.getScreenX(width));
  }
 

}

// --------------------------------------------------------------
// these callback methods are called whenever a TUIO event occurs
// there are three callbacks for add/set/del events for each object/cursor/blob type
// the final refresh callback marks the end of each TUIO frame

// called when an object is added to the scene

/*kathe fora pou emfanizw sthn othoni ena fiducial, mou grafei apo katw to id tou symbolou
to id tou session (poses fores to emfanisa), th thesi x,y kai th gwnia pou exw stripsei to fiducial 
- apo video me link "https://www.youtube.com/watch?v=qKXlI4zAMAY&list=TLPQMDMwMTIwMjPBNmA_C0GxOw&index=2"*/

void addTuioObject(TuioObject tobj) {
  if (verbose) println("add obj "+tobj.getSymbolID()+" ("+tobj.getSessionID()+") "+tobj.getX()+" "+tobj.getY()+" "+tobj.getAngle());
  
  //prosthiki 9/1/2023
    if(tobj.getSymbolID() == 2)
   {
      
      float red = map (tobj.getAngle(), PI/2, 11*PI/6, 0, 255);
      float green = map (tobj.getAngle(), 11*PI/6, 7*PI/6, 0, 255);
      float blue = map (tobj.getAngle(), 7*PI/6, PI/2, 0, 255);
      
      tint(red, green, blue, transparency); 
   }
}

// called when an object is moved

/*Kathe fora pou emfanizw ena fiducial sthn othoni, kai to metakinw (real time), tha mou grapsei apo katw
to id tou symbolou, to id tou session, th thesi x,y , th gwnia pou to exw stripsei, ti taxythta tis kinisis, 
th taxythta ths strofis, thn epitaxynsh ths kinisis kai thn epitaxynsh ths strofis
- apo video me link "https://www.youtube.com/watch?v=qKXlI4zAMAY&list=TLPQMDMwMTIwMjPBNmA_C0GxOw&index=2"*/

void updateTuioObject (TuioObject tobj) {
  if (verbose) println("set obj "+tobj.getSymbolID()+" ("+tobj.getSessionID()+") "+tobj.getX()+" "+tobj.getY()+" "+tobj.getAngle()
          +" "+tobj.getMotionSpeed()+" "+tobj.getRotationSpeed()+" "+tobj.getMotionAccel()+" "+tobj.getRotationAccel());
          
          /*Oi parakatw prosthikes ston kwdika (posX = round...width); kai posY = round...height);
          proerxontai apto video me link "https://www.youtube.com/watch?v=qKXlI4zAMAY&list=TLPQMDMwMTIwMjPBNmA_C0GxOw&index=2".
          Me ayton ton tropo antistoixizetai to x,y tou fiducial me to x,y tis eikonas h' antikeimenou. */
          
          
          posX0 = round(tobj.getX() * width);
          posY0 = round(tobj.getY() * height);
          
}

// called when an object is removed from the scene

/*Kathe fora pou apomakrynw ena fiducial apo tin kamera, trexei h parakatw synartisi
- apo video me link "https://www.youtube.com/watch?v=qKXlI4zAMAY&list=TLPQMDMwMTIwMjPBNmA_C0GxOw&index=2" */

void removeTuioObject(TuioObject tobj) {
  if (verbose) println("del obj "+tobj.getSymbolID()+" ("+tobj.getSessionID()+")");
  
  
  if (tobj.getSymbolID() == 0)
  {
    
    println("Bye fiducial 0");
  }
  
  if (tobj.getSymbolID() == 1)
  {
    println("Bye fiducial 1");
  }
  
  if (tobj.getSymbolID() == 2)
  {
    println("Bye fiducial 2");
  }
  
   if (tobj.getSymbolID() == 3)
  {
    println("Bye fiducial 3");
  }
  
}

// --------------------------------------------------------------
// called when a cursor is added to the scene
void addTuioCursor(TuioCursor tcur) {
  if (verbose) println("add cur "+tcur.getCursorID()+" ("+tcur.getSessionID()+ ") " +tcur.getX()+" "+tcur.getY());
  //redraw();
}

// called when a cursor is moved
void updateTuioCursor (TuioCursor tcur) {
  if (verbose) println("set cur "+tcur.getCursorID()+" ("+tcur.getSessionID()+ ") " +tcur.getX()+" "+tcur.getY()
          +" "+tcur.getMotionSpeed()+" "+tcur.getMotionAccel());
  //redraw();
}

// called when a cursor is removed from the scene
void removeTuioCursor(TuioCursor tcur) {
  if (verbose) println("del cur "+tcur.getCursorID()+" ("+tcur.getSessionID()+")");
  //redraw()
}

// --------------------------------------------------------------
// called when a blob is added to the scene
void addTuioBlob(TuioBlob tblb) {
  if (verbose) println("add blb "+tblb.getBlobID()+" ("+tblb.getSessionID()+") "+tblb.getX()+" "+tblb.getY()+" "+tblb.getAngle()+" "+tblb.getWidth()+" "+tblb.getHeight()+" "+tblb.getArea());
  //redraw();
}

// called when a blob is moved
void updateTuioBlob (TuioBlob tblb) {
  if (verbose) println("set blb "+tblb.getBlobID()+" ("+tblb.getSessionID()+") "+tblb.getX()+" "+tblb.getY()+" "+tblb.getAngle()+" "+tblb.getWidth()+" "+tblb.getHeight()+" "+tblb.getArea()
          +" "+tblb.getMotionSpeed()+" "+tblb.getRotationSpeed()+" "+tblb.getMotionAccel()+" "+tblb.getRotationAccel());
  //redraw()
}

// called when a blob is removed from the scene
void removeTuioBlob(TuioBlob tblb) {
  if (verbose) println("del blb "+tblb.getBlobID()+" ("+tblb.getSessionID()+")");
  //redraw()
  
}

// --------------------------------------------------------------
// called at the end of each TUIO frame
void refresh(TuioTime frameTime) {
  if (verbose) println("frame #"+frameTime.getFrameID()+" ("+frameTime.getTotalMilliseconds()+")");
  if (callback) redraw();
}
