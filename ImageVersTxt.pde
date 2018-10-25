PImage img;
void setup () {
    int [][]tabLuminosite;
    selectInput("Select a file to process:", "GetImage");
    if (img!=null) {
        println(img);
        tabLuminosite=ImgVersTab(img.width/4, img.height/12);
        ecrire(tabLuminosite, "@8#$d0cvj()~;:,\"` ");
        //Normal "@8#$d0cvj()~;:,\"` "
        //Contraste " `"\,:;~)(jvc0d$#8@"
        //Normal "@$B%8&WM#*oahkbdpqwmZO0QLCJUYXzcvunxrjft/\\|()1{}[]?-_+~i!lI;:,\"` "
        //Contraste inverse  " `^\",:;Il!i~+_-?][}{1)(|\\/tfjrxnuvczXYUJCLQ0OZmwqpdbkhao*#MW&8%B$@"
        println("Done");
    }
}
void GetImage(File selection) {
    img=loadImage(selection.getName());
    println(img);
}

void ecrire (int [][] tab, String ascii) {
    PrintWriter output= createWriter("Result.txt");
    int charPos;
    for (int i = 0; i < tab.length; ++i) {
        for (int j=0; j<tab[i].length; j++) {
            charPos=int(tab[i][j]/255.0*(ascii.length()-1));
            output.print(ascii.charAt(charPos));
        }
        output.println();
    }
    output.flush();
    output.close();
}
