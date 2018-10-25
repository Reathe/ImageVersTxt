PImage img;
boolean GetImage(File selection) {
    String fileName;
    if (selection == null) {
        println("Window was closed or the user hit cancel.");
        return false;
    } else {
        fileName = selection.getAbsolutePath();
        println("User selected " + fileName);
        img=loadImage(fileName);
        return true;
    }
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

void setup () {
    int [][]tabLuminosite;
    String asciiChars="@8#$d0cvj()~;:,\"` ",asciiCharsInv=" `\",:;~)(jvc0d$#9@";
    int timeout=0;
    //Normal "@8#$d0cvj()~;:,\"` "
    //inverse " `\",:;~)(jvc0d$#8@"
    //Normal "@$B%8&WM#*oahkbdpqwmZO0QLCJUYXzcvunxrjft/\\|()1{}[]?-_+~i!lI;:,\"` "
    //inverse  " `^\",:;Il!i~+_-?][}{1)(|\\/tfjrxnuvczXYUJCLQ0OZmwqpdbkhao*#MW&8%B$@"
    selectInput("Select a file to process:", "GetImage");
    while (img==null & timeout<25) {
        println("Waiting... (",timeout,")");
        delay(1000);
        timeout++;
    }
    if (img!=null) {
        //tabLuminosite=ImgVersTab(img.width, img.height/2);
        tabLuminosite=ImgVersTab(int(60), int(37));
        ecrire(tabLuminosite, asciiChars);
        println("Done.");
    }
    exit();
}
