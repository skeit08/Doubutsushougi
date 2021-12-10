class Board {
  BaseArea bArea;
  InfoArea iArea;
  MochigomaArea[] mArea = new MochigomaArea[2];

  Board(){
    bArea = new BaseArea(1,0,4,3);
    iArea = new InfoArea(1,3,4,1);
    mArea[0] = new MochigomaArea(0,0,1,4);
    mArea[1] = new MochigomaArea(5,0,1,4);
  }

  void draw(){
    bArea.draw();
    mArea[0].draw();
    mArea[1].draw();
    iArea.draw();
  }
  final int SQUARESIZE = 100;
Board board;
KomaList komaList;
GameStatus gs;

void setup() {
  surface.setSize(6*SQUARESIZE, 4*SQUARESIZE);
  board = new Board();
  komaList = new KomaList();
  gs = new GameStatus();
}

void draw() {
  board.draw();
  komaList.draw();
}

void mouseReleased() {
  int x = mouseX/SQUARESIZE;
  int y = mouseY/SQUARESIZE;
  board.select(x, y);
}
}
