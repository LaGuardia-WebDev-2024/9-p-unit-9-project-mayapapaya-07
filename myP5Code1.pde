setup = function() {
    size(600, 400);
};

//Background Images
var coverImage = loadImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNb_IJh3b1AlJh_NUAc9yW4r23QX6XHYLL6g&s ");

var happybaby = loadImage("https://cdn.expatwoman.com/s3fs-public/styles/full_width_870/public/galleries/636116286945948420.jpg");

var unhappybaby = loadImage("https://i.pinimg.com/236x/e5/5b/ce/e55bcecfb17a175c12ff9a25a00ac941.jpg")

//Variable Declarations
var sceneImage = coverImage;
var sceneText = "What will you feed the baby?  [Press p for 🍑 and b for 🥦]";

draw = function(){
    
   drawScene();
 
 
   if(keyPressed){
     if(key == 'p'){
       sceneImage = happybaby;   
       sceneText = "Bah Gah yummy 🤪.  [Press s to restart]";
     } 
     if(key == 'b'){
      sceneImage = unhappybaby;
      sceneText = "blehhh [Press s to restart]";
    } 
    if(key == 's'){
      sceneImage = coverImage;
      sceneText = "What will you feed the baby?  [Press p for 🍑 and b for 🥦]";
}
   }
      
};
 
var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
   text(sceneText, 10, 375);
};



