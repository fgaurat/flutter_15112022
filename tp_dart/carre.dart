import 'rectangle.dart';

class Carre extends Rectangle{
  int _cote;  

  Carre({cote=0}):_cote=cote,super(largeur: cote,longueur: cote){
    print("Carre($cote)");
  }

  int get cote => _cote;
  void set cote(cote) => _cote=cote;

  @override
  String toString() {
    return "${(Carre).toString()} cote : $_cote";
  }
}