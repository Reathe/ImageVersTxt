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
