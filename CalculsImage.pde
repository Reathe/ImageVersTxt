int [][] ImgVersTab(int width, int height) {
    int [][] tabLumi = new int[height][width];
    int stepWidth=img.width/width;
    int stepHeight=img.height/height;
    for (int x = 0; x < width; ++x) {
        for (int y = 0; y < height; ++y) {
            tabLumi[y][x]=moyenneLuminosite(x*stepWidth, y*stepHeight, stepWidth, stepHeight);
        }
    }
    return tabLumi;
}
int moyenneLuminosite(int startX, int startY, int widthSPI, int heightSPI) {
    //Fais la moyenne des luminosités de chaque pixel
    //De la sous partie de l'image définie par son origine en (startX,startY)
    //Et la largeur et hauteur (widh et height) de la sous-partie de l'image
    float sommeLuminosite=0;
    
    for (int x = startX; x < startX+widthSPI; ++x) {
        for (int y = startY; y < startY+heightSPI; ++y) {
            println("startX:",startX,"  x:",x,"  y:",y,"  startY:",startY,"  img.width:",img.width);
            sommeLuminosite+=brightness(img.pixels[x+y*img.width]);
        }
    }
    return int(sommeLuminosite/(widthSPI*heightSPI));
}
