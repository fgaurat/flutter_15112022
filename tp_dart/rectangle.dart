import 'dart:math';

class Rectangle {
  int _longueur;
  int _largeur;

  // Rectangle(int longueur,int largeur){
  //   print("Rectangle($longueur,$largeur)");
  //   this.longueur = longueur;
  //   this.largeur = largeur;
  // }

  Rectangle({longueur = 0, largeur = 0})
      : _longueur = longueur,
        _largeur = largeur{
          print("Rectangle($longueur, $largeur)");
        }

  Rectangle.fromString(String initValues):_longueur=0,_largeur=0 {
    List<String> ll = initValues.split(',');
    _longueur = int.parse(ll[0]);
    _largeur = int.parse(ll[1]);
  }

  int get surface => _longueur * _largeur;

  int get longueur => _longueur;
  void set longueur(int longueur) => _longueur = max(1, longueur);

  int get largeur => _largeur;
  void set largeur(int largeur) => _largeur = max(1, longueur);

  @override
  String toString() {
    return "${(Rectangle).toString()} longueur : $_longueur, largeur : $_largeur";
  }
}
