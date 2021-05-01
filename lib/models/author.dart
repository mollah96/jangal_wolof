import 'package:jangal_wolof/models/literary.dart';

class Author {
  final String name;
  final String biographie;
  final List<Literary> literary;

  Author(this.name, this.biographie, this.literary);

  static List<Author> fetchAll() {
    return [
      Author('Sëriñ Musaa Ka', ' ', [
        Literary('Yaasin', ' ', 'assets/texts/SerinMusaaKa/yaasin.txt'),
        Literary('Xarnu bi', ' ', 'assets/texts/SerinMusaaKa/xarnu_bi.txt'),
        Literary(
            'Jooyi wolof', ' ', 'assets/texts/SerinMusaaKa/jooyi_wolof.txt'),
        Literary('Xarnu bi', ' ', 'assets/texts/SerinMusaaKa/xarnu_bi.txt'),
      ]),
      Author('Sëriñ Mbay Jaxate', ' ', [
        Literary('Yaasin', ' ', 'assets/texts/SerinMusaaKa/yaasin.txt'),
        Literary('Xarnu bi', ' ', 'assets/texts/SerinMusaaKa/xarnu_bi.txt'),
        Literary(
            'Jooyi wolof', ' ', 'assets/texts/SerinMusaaKa/jooyi_wolof.txt'),
        Literary('Xarnu bi', ' ', 'assets/texts/SerinMusaaKa/xarnu_bi.txt'),
      ]),
      Author('Sëriñ Sàmba Jaara Mbay', ' ', [
        Literary('Yaasin', ' ', 'assets/texts/SerinMusaaKa/yaasin.txt'),
        Literary('Xarnu bi', ' ', 'assets/texts/SerinMusaaKa/xarnu_bi.txt'),
        Literary(
            'Jooyi wolof', ' ', 'assets/texts/SerinMusaaKa/jooyi_wolof.txt'),
        Literary('Xarnu bi', ' ', 'assets/texts/SerinMusaaKa/xarnu_bi.txt'),
      ]),
      
    ];
  }
}
