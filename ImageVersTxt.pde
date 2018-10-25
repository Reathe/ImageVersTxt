PImage img;
void setup () {
	int [][]tabLuminosite;
    img = loadImage("a.jpg");
    //println("img.height: "+img.height);
    //println("img.width: "+img.width);
	tabLuminosite=ImgVersTab(img.width/2 ,img.height/6);
    ecrire(tabLuminosite,"@$B%8&WM#*oahkbdpqwmZO0QLCJUYXzcvunxrjft/\\|()1{}[]?-_+~i!lI;:,\"` "); 
    //Normal "@$B%8&WM#*oahkbdpqwmZO0QLCJUYXzcvunxrjft/\\|()1{}[]?-_+~i!lI;:,\"` "
    //Contraste inverse  " `^\",:;Il!i~+_-?][}{1)(|\\/tfjrxnuvczXYUJCLQ0OZmwqpdbkhao*#MW&8%B$@"
    println("Done");
    exit();
}
