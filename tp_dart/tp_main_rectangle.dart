import 'carre.dart';
import 'rectangle.dart';


void afficheSurface(Rectangle leCarre){
  print(leCarre);
  print(leCarre.surface);
}

void main(List<String> args) {
  Rectangle r = Rectangle(largeur: 2,longueur:5);
  print(r.runtimeType);
  print("longueur = ${r.longueur}");
  // print("largeur = ${r.largeur}");
  print("surface = ${r.surface}");
  int a =r.longueur;
  r.longueur = 12;
  print("surface = ${r.surface}");
  print(a);
  bool b = false;

  
  String s=b?"ok":"ko"; 
  print(s);


  String initValues = "2,5";
  // List<String> ll = initValues.split(',');
  // print(int.parse(ll[0]));
  // print(int.parse(ll[1]));
  Rectangle r1 = Rectangle.fromString(initValues);
  print(r1.surface);
  print(r1);
  
  
  print('-------');
  
  Carre c = Carre(cote: 2);
  print(c.longueur);
  print(c.largeur);
  print(c.cote);
  print(c.surface);
  print(c);

  afficheSurface(c);
  
  afficheSurface(r);
  


}