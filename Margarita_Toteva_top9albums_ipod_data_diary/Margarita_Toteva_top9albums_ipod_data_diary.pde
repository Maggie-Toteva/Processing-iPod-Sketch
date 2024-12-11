int x;
int y;
int albumx = 150;
int albumy = 55;
PImage button2;
// album art PIMAGES inicialisation
PImage violator;
PImage DM101;
PImage berlin;
PImage sofadlive;
PImage barcelona;
PImage spirits;
PImage PTA;
PImage Exciter;
PImage BC;
PImage ten;
PImage lateralus;
PImage mammamia;
PImage sixstone;
PImage hozier2;
PImage foos;
PImage hozier1;
PImage incubus;
PImage VS;
PImage pjharvey;
PImage placebo1;
PImage rhir;
PImage placebo2;
PImage rhtb;
PImage nintds;
PImage mezzanine;
PImage cdm;
PImage iti;
PImage rhok;
PImage ninlive;
PImage fioe;
PImage ninphm;
PImage sofad;
PImage tna;
PImage fragile;
PImage teeth;
PImage nitz;
PImage hm;
PImage humanz;
PImage sotu;
PImage ddwed;
PImage ultra;
PImage ddbt;
PImage delta;
PImage notorious;

//years booleans
boolean is18 = false;
boolean is19 = false;
boolean is20 = false;
boolean is21 = false;
boolean is22 = false;
boolean is23 = false;
boolean is24 = false;
boolean isYear = false;



void setup() {
  size(410, 400);

  //load album art
  button2 = loadImage("button2.png");
  violator = loadImage("violator.png");
  DM101 = loadImage("101.png");
  berlin = loadImage("berlin.png");
  sofadlive = loadImage("sofadlive.png");
  barcelona = loadImage("barcelona.jpg");
  spirits = loadImage("spirits.jpg");
  PTA = loadImage("PTA.png");
  Exciter = loadImage("exciter.png");
  BC = loadImage("BC.png");
  ten = loadImage("ten.png");
  lateralus = loadImage("lateralus.jpg");
  mammamia = loadImage("mammamia.jpg");
  sixstone = loadImage("16stone.jpg");
  hozier2 = loadImage("hozier2.jpg");
  foos = loadImage("foos.jpg");
  incubus= loadImage("incubus.png");
  hozier1 = loadImage ("hozier1.jpg");
  VS = loadImage("VS.jpg");
  pjharvey = loadImage("pjharvey.png");
  placebo1 = loadImage("placebo1.jpg");
  rhir = loadImage("rhir.jpg");
  placebo2 = loadImage("placebo2.png");
  rhtb = loadImage("rhtb.jpg");
  nintds = loadImage("nintds.jpg");
  mezzanine = loadImage("mezzanine.jpg");
  cdm = loadImage("cdm.png");
  iti = loadImage("iti.png");
  rhok = loadImage("rhok.png");
  ninlive = loadImage("ninlive.png");
  fioe = loadImage("fioe.png");
  ninphm = loadImage("ninphm.jpg");
  sofad = loadImage("sofad.jpg");
  tna = loadImage("tna.png");
  fragile = loadImage("fragile.jpg");
  teeth  = loadImage("teeth.png");
  nitz  = loadImage("nitz.jpg");
  hm  = loadImage("hm.jpg");
  humanz  = loadImage("humanz.jpg");
  sotu = loadImage("sotu.jpg");
  ddwed = loadImage("ddwed.jpg");
  ultra = loadImage("ultra.jpg");
  ddbt = loadImage("ddbt.jpg");
  delta = loadImage("delta.jpg");
  notorious = loadImage("notorious.jpg");

  // welcome screen

  background(152, 190, 100);
  drawiPod();
  textSize(10);
  text("This program showcases \n my top 9 albums \n on spotify since 2018. \n Press the dark gray play \n button to select year to view. \n After selecting a year, \n press button again to \n return to years menu.", 145, 75);
  fill(240);
  rect(129.5, 50, 141, 10);
  noStroke();
}



void draw() {
  //2024
  if (mousePressed && (mouseX>129 && mouseX < 270) && (mouseY>50 && mouseY<155)) {
    if (mouseX>210 && mouseX <245 && mouseY>116 && mouseY <130) {
      fill(242, 241, 235);
      stroke(0);
      rect(130, 50, 140, 110, 5);
      drawAlbums2024();
      isYear = true;
      is24 = true;
    }
    //2023
    else if (mouseX>210 && mouseX <245 && mouseY>98 && mouseY <110) {
      fill(242, 241, 235);
      stroke(0);
      rect(130, 50, 140, 110, 5);
      drawAlbums2023();
      isYear = true;
      is23 = true;
    }
    //2022
    else if (mouseX>210 && mouseX <245 && mouseY>77 && mouseY <89) {
      fill(242, 241, 235);
      stroke(0);
      rect(130, 50, 140, 110, 5);
      drawAlbums2022();
      isYear = true;
      is22 = true;
    }
    //2021
    else if (mouseX>150 && mouseX <185 && mouseY>137 && mouseY<148) {
      fill(242, 241, 235);
      stroke(0);
      rect(130, 50, 140, 110, 5);
      drawAlbums2021();
      isYear = true;
      is21 = true;
    }
    //2020
    else if (mouseX>150 && mouseX <185 && mouseY>116 && mouseY <130) {
      fill(242, 241, 235);
      stroke(0);
      rect(130, 50, 140, 110, 5);
      drawAlbums2020();
      isYear = true;
      is20 = true;
    }
    //2019
    else if (mouseX>150 && mouseX <185 && mouseY>98 && mouseY <110) {
      fill(242, 241, 235);
      stroke(0);
      rect(130, 50, 140, 110, 5);
      drawAlbums2019();
      isYear = true;
      is19 = true;
    }
    //2018
    else if (mouseX>150 && mouseX <185 && mouseY>77 && mouseY <89) {
      fill(242, 241, 235);
      stroke(0);
      rect(130, 50, 140, 110, 5);
      drawAlbums2018();
      isYear = true;
      is18 = true;
    }
  }
  check2018();
  check2019();
  check2020();
  check2021();
  check2022();
  check2023();
  check2024();

  // checks if user has pressed the years menu button and resets the booleans

  if (mousePressed && mouseOverCircle(200, 260, 60)) {
    background(152, 190, 100);
    drawiPod();
    drawYears();
    fill(240);
    rect(129.5, 50, 141, 10);
    isYear = false;
    is24 = false;
    is23 = false;
    is22 = false;
    is21 = false;
    is20 = false;
    is19 = false;
    is18 = false;
  }
}
void drawiPod() {
  fill(158, 167, 168);
  rect(94, 17, 212, 357, 20);
  stroke(17, 18, 18, 40);
  fill(193, 200, 201);
  rect(98, 20, 203, 350, 20);
  noStroke();
  fill(230, 236, 237);
  rect(102, 23, 195, 343, 20);
  stroke(0);
  fill(0);
  rect(123, 43, 155, 120, 10);
  fill(38, 38, 38);
  rect(130, 50, 140, 110, 10);
  image(button2, 110, 170, 180, 180);
  fill(242, 241, 235);
  stroke(145, 146, 148);
  rect(130, 50, 140, 110, 10);
  stroke(0);
  fill(255);
  fill(0);
  textSize(9);
  text("Credit to Haniyah Hakim on openprocessing.org for iPod template", 150, 395);
}

void drawYears() {
  // 2018
  textSize(19);
  text("2018", 150, 90);
  //2019
  text("2019", 150, 110);
  //2020
  text("2020", 150, 130);
  //2021
  text("2021", 150, 150);
  //2022
  text("2022", 210, 90);
  // 2023
  text("2023", 210, 110);
  //2024
  text("2024", 210, 130);
}

// methods to add the album art to the ipod

void firstRow(PImage x, PImage y, PImage z) {
  image(x, albumx, albumy, 30, 30);
  image(y, albumx+35, albumy, 30, 30);
  image(z, albumx+70, albumy, 30, 30);
}
void secondRow(PImage x, PImage y, PImage z) {
  image(x, albumx, albumy+35, 30, 30);
  image(y, albumx+35, albumy+35, 30, 30);
  image(z, albumx + 70, albumy+35, 30, 30);
}
void thirdRow(PImage x, PImage y, PImage z) {
  image(x, albumx, albumy+70, 30, 30);
  image(y, albumx+35, albumy+70, 30, 30);
  image(z, albumx + 70, albumy+70, 30, 30);
}

// check over which album the mouse is

boolean isFirstAlbum() {
  if ((mouseX > 150 && mouseX < 180) && (mouseY > 60 && mouseY < 90)) {
    return true;
  } else return false;
}
boolean isSecondAlbum() {
  if ((mouseX > 185 && mouseX < 215) && (mouseY > 60 && mouseY < 90)) {
    return true;
  } else return false;
}
boolean isThirdAlbum() {
  if ((mouseX > 220 && mouseX < 250) && (mouseY > 60 && mouseY < 90)) {
    return true;
  } else return false;
}
boolean isFourthAlbum() {
  if ((mouseX > 150 && mouseX < 180) && (mouseY > 90 && mouseY < 120)) {
    return true;
  } else return false;
}
boolean isFifthAlbum() {
  if ((mouseX > 185 && mouseX < 215) && (mouseY > 90 && mouseY < 120)) {
    return true;
  } else return false;
}
boolean isSixthAlbum() {
  if ((mouseX > 220 && mouseX < 250) && (mouseY > 90 && mouseY < 120)) {
    return true;
  } else return false;
}
boolean isSeventhAlbum() {
  if ((mouseX > 150 && mouseX < 180) && (mouseY > 125 && mouseY < 155)) {
    return true;
  } else return false;
}
boolean isEigthAlbum() {
  if ((mouseX > 185 && mouseX < 215) && (mouseY > 125 && mouseY < 155)) {
    return true;
  } else return false;
}
boolean isNinthAlbum() {
  if ((mouseX > 220 && mouseX < 250) && (mouseY > 125 && mouseY < 155)) {
    return true;
  } else return false;
}

// check if mouse is over the play button

boolean mouseOverCircle(int x, int y, float diameter) {
  return (dist(mouseX, mouseY, x, y) < diameter*0.5);
}

void drawAlbums2024() {
  firstRow(DM101, berlin, sofadlive);
  secondRow(barcelona, spirits, violator);
  thirdRow(PTA, Exciter, BC);
}
void drawAlbums2023() {
  firstRow(ten, lateralus, mammamia);
  secondRow(sixstone, hozier2, foos);
  thirdRow(incubus, hozier1, VS);
}
void drawAlbums2022() {
  firstRow(hozier2, hozier1, pjharvey);
  secondRow(placebo1, rhir, placebo2);
  thirdRow(rhtb, mammamia, nintds);
}

void drawAlbums2021() {
  firstRow(mezzanine, cdm, iti);
  secondRow(rhok, ninlive, fioe);
  thirdRow(ninphm, sofad, tna);
}
void drawAlbums2020() {
  firstRow(fragile, sofad, teeth);
  secondRow(nintds, mezzanine, nitz);
  thirdRow(hm, sofadlive, humanz);
}
void drawAlbums2019() {
  firstRow(Exciter, sofad, violator);
  secondRow(sotu, ddwed, ultra);
  thirdRow(ddbt, delta, notorious);
}
void drawAlbums2018() {
  firstRow(Exciter, violator, sotu);
  secondRow(ultra, sofad, BC);
  thirdRow(PTA, delta, humanz);
}

// checks if the user has pressed a year and on which alubm the user's mouse is positioned

void check2024() {
  if (isYear && is24 && isFirstAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2024();
    textSize(12);
    text("Depeche Mode \n - 101 (1989)", 11, 98);
  } else if (isYear && is24 && isSecondAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2024();
    textSize(12);
    text("Depeche Mode \n - Live In \n Berlin (2013)", 11, 98);
  } else if (isYear && is24 && isThirdAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2024();
    textSize(12);
    text("Depeche Mode \n - SOFAD live (1993)", 11, 98);
  } else if (isYear && is24 && isFourthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2024();
    textSize(12);
    text("Depeche Mode \n - live in \n Barcelona (2009)", 11, 98);
  } else if (isYear && is24 && isFifthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2024();
    textSize(12);
    text("Depeche Mode \n - Live Spirits (2019)", 11, 98);
  } else if (isYear && is24 && isSixthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2024();
    textSize(12);
    text("Depeche Mode \n - Violator (1990)", 11, 98);
  } else if (isYear && is24 && isSeventhAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2024();
    textSize(12);
    text("Depeche Mode \n - Playing the \n Angel (2005)", 11, 98);
  } else if (isYear && is24 && isEigthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2024();
    textSize(12);
    text("Depeche Mode \n - Exciter (2001)", 11, 98);
  } else if (isYear && is24 && isNinthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2024();
    textSize(12);
    text("Depeche Mode \n - Black \n Celebration (1986)", 11, 98);
  }
}

void check2023() {
  if (isYear && is23 && isFirstAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2023();
    textSize(12);
    text("Pearl Jam \n - Ten (1991)", 11, 98);
  } else if (isYear && is23 && isSecondAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2023();
    textSize(12);
    text("Tool - Lateralus (2001)", 11, 98);
  } else if (isYear && is23 && isThirdAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2023();
    textSize(12);
    text("Mamma Mia \n Soundtrack (2008)", 11, 98);
  } else if (isYear && is23 && isFourthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2023();
    textSize(12);
    text("Bush \n - Sixteen Stone (1994)", 11, 98);
  } else if (isYear && is23 && isFifthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2023();
    textSize(12);
    text("Hozier - \n Wasteland,Baby!(2019)", 11, 98);
  } else if (isYear && is23 && isSixthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2023();
    textSize(12);
    text("Foo Fighters \n - The colour \n and the \n shape (1997)", 11, 98);
  } else if (isYear && is23 && isSeventhAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2023();
    textSize(12);
    text("Incubus - \n Make Yourself (1999)", 11, 98);
  } else if (isYear && is23 && isEigthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2023();
    textSize(12);
    text("Hozier - \n Hozier (2014) ", 11, 98);
  } else if (isYear && is23 && isNinthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2023();
    textSize(12);
    text("Pearl Jam \n - VS (1993)", 11, 98);
  }
}

void check2022() {
  if (isYear && is22 && isFirstAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2022();
    textSize(12);
    text("Hozier - \n Hozier (2014) ", 11, 98);
  } else if (isYear && is22 && isSecondAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2022();
    textSize(12);
    text("Hozier - \n Wasteland,Baby!(2019)", 11, 98);
  } else if (isYear && is22 && isThirdAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2022();
    textSize(12);
    text("PJ Harvey \n - Stories from the City,\n Stories from \n the Sea (2000)", 11, 98);
  } else if (isYear && is22 && isFourthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2022();
    textSize(12);
    text("Placebo - \n Without you \n I'm Nothing (1998)", 11, 98);
  } else if (isYear && is22 && isFifthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2022();
    textSize(12);
    text("Radiohead - \n In Rainbows (2007)", 11, 98);
  } else if (isYear && is22 && isSixthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2022();
    textSize(12);
    text("Placebo - \n Meds (2006)", 11, 98);
  } else if (isYear && is22 && isSeventhAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2022();
    textSize(12);
    text("Radiohead - \n The Bends \n (1995)", 11, 98);
  } else if (isYear && is22 && isEigthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2022();
    textSize(12);
    text("Mamma Mia \n Soundtrack (2008)", 11, 98);
  } else if (isYear && is22 && isNinthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2022();
    textSize(12);
    text("Nine Inch Nails \n - The Downward \n Spiral (1994)", 11, 98);
  }
}

void check2021() {
  if (isYear && is21 && isFirstAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2021();
    textSize(12);
    text("Massive Attack - \n Mezzanine (1998)", 11, 98);
  } else if (isYear && is21 && isSecondAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2021();
    textSize(12);
    text("The Strokes - \n Comedown \n Machine (2013) ", 11, 98);
  } else if (isYear && is21 && isThirdAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2021();
    textSize(12);
    text("The Strokes - \n Is This It \n (2001)", 11, 98);
  } else if (isYear && is21 && isFourthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2021();
    textSize(12);
    text("Radiohead - \n Ok  \n Computer (1997)", 11, 98);
  } else if (isYear && is21 && isFifthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2021();
    textSize(12);
    text("Nine Inch Nails - \n And All That \n Could Have \n Been (2002)", 11, 98);
  } else if (isYear && is21 && isSixthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2021();
    textSize(12);
    text("The Strokes - \n First Impressions \n On Earth (2005)", 11, 98);
  } else if (isYear && is21 && isSeventhAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2021();
    textSize(12);
    text("Nine Inch Nails \n - Pretty Hate \n Machine (1989)", 11, 98);
  } else if (isYear && is21 && isEigthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2021();
    textSize(12);
    text("Depeche Mode - \n SOFAD (1993)", 11, 98);
  } else if (isYear && is21 && isNinthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2021();
    textSize(12);
    text("The Strokes - \n The New \n Abnormal (2020)", 11, 98);
  }
}

void check2020() {
  if (isYear && is20 && isFirstAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2020();
    textSize(12);
    text("Nine Inch Nails - \n The Fragile \n (1999)", 11, 98);
  } else if (isYear && is20 && isSecondAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2020();
    textSize(12);
    text("Depeche Mode - \n SOFAD (1993) ", 11, 98);
  } else if (isYear && is20 && isThirdAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2020();
    textSize(12);
    text("Nine Inch Nails - \n With Teeth \n (2005)", 11, 98);
  } else if (isYear && is20 && isFourthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2020();
    textSize(12);
    text("Nine Inch Nails \n - The Downward \n Spiral (1994)", 11, 98);
  } else if (isYear && is20 && isFifthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2020();
    textSize(12);
    text("Massive Attack - \n Mezzanine (1998)", 11, 98);
  } else if (isYear && is20 && isSixthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2020();
    textSize(12);
    text("Nitzer Ebb \n - Industrial \n Complex (2010)", 11, 98);
  } else if (isYear && is20 && isSeventhAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2020();
    textSize(12);
    text("Nine Inch Nails - \n Hesitation \n Marks (2013)", 11, 98);
  } else if (isYear && is20 && isEigthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2020();
    textSize(12);
    text("Depeche Mode \n - SOFAD live (1993)", 11, 98);
  } else if (isYear && is20 && isNinthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2020();
    textSize(12);
    text("Gorillaz - \n Humanz (2017)", 11, 98);
  }
}
void check2019() {
  if (isYear && is19 && isFirstAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2019();
    textSize(12);
    text("Depeche Mode \n - Exciter (2001)", 11, 98);
  } else if (isYear && is19 && isSecondAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2019();
    textSize(12);
    text("Depeche Mode - \n SOFAD (1993) ", 11, 98);
  } else if (isYear && is19 && isThirdAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2019();
    textSize(12);
    text("Depeche Mode \n - Violator (1990)", 11, 98);
  } else if (isYear && is19 && isFourthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2019();
    textSize(12);
    text("Depeche Mode - \n Sounds of \n The Universe \n (2009)", 11, 98);
  } else if (isYear && is19 && isFifthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2019();
    textSize(12);
    text("Duran Duran \n - The Wedding \n Album (1993)", 11, 98);
  } else if (isYear && is19 && isSixthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2019();
    textSize(12);
    text("Depeche Mode - \n Ultra (1997)", 11, 98);
  } else if (isYear && is19 && isSeventhAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2019();
    textSize(12);
    text("Duran \n Duran - Big \n Thing (1988)", 11, 98);
  } else if (isYear && is19 && isEigthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2019();
    textSize(12);
    text("Depeche Mode \n - Delta \n Machine (2013)", 11, 98);
  } else if (isYear && is19 && isNinthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2019();
    textSize(12);
    text("Duran Duran \n - Notorious (1986)", 11, 98);
  }
}
void check2018() {
  if (isYear && is18 && isFirstAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2018();
    textSize(12);
    text("Depeche Mode \n - Exciter (2001)", 11, 98);
  } else if (isYear && is18 && isSecondAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2018();
    textSize(12);
    text("Depeche Mode \n - Violator (1990)", 11, 98);
  } else if (isYear && is18 && isThirdAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2018();
    textSize(12);
    text("Depeche Mode - \n Sounds of \n The Universe \n (2009)", 11, 98);
  } else if (isYear && is18 && isFourthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2018();
    textSize(12);
    text("Depeche Mode - \n Ultra (1997)", 11, 98);
  } else if (isYear && is18 && isFifthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2018();
    textSize(12);
    text("Depeche Mode - \n SOFAD (1993) ", 11, 98);
  } else if (isYear && is18 && isSixthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2018();
    textSize(12);
    text("Depeche Mode \n - Black \n Celebration (1986)", 11, 98);
  } else if (isYear && is18 && isSeventhAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2018();
    textSize(12);
    text("Depeche Mode \n - Playing the \n Angel (2005)", 11, 98);
  } else if (isYear && is18 && isEigthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2018();
    textSize(12);
    text("Depeche Mode \n - Delta \n Machine (2013)", 11, 98);
  } else if (isYear && is18 && isNinthAlbum()) {
    background(152, 190, 100);
    drawiPod();
    drawAlbums2018();
    textSize(12);
    text("Gorillaz - \n Humanz (2017)", 11, 98);
  }
}
