part of tetris;

class Block {
  List<Tile> tiles = List<Tile>(4);
  Tile rotationTile;
  String color;

  void move(String direction) {
    switch(direction) {
      case 'left':
        return tiles.forEach((t) => t.x -= 1);
      case 'right':
        return tiles.forEach((t) => t.x += 1);
      case 'up':
        return tiles.forEach((t) => t.y -= 1);
      case 'down':
        return tiles.forEach((t) => t.y += 1);
    }
  }

  void rotateRight() {
    tiles.forEach((tile) {
      int x = tile.x;
      tile.x = rotationTile.x - tile.y + rotationTile.y;
      tile.y = rotationTile.y + x - rotationTile.x;
    });
  }

  void rotateLeft() {
    tiles.forEach((tile) {
      int x = tile.x;
      tile.x = rotationTile.x + tile.y - rotationTile.y;
      tile.y = rotationTile.y - x + rotationTile.x;
    });
  }

}