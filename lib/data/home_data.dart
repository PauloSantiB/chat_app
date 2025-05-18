import 'package:chat_app/models/user.dart';

class HomeData {
  List<User> getUsers() {
    final copia = [
      'Paulo',
      'Matias',
      'David',
      'Santiago',
      'Romina',
      'Federico',
      'Tomas',
      'Nathasha',
      'Emilia',
      'Olivia',
      'Martina',
      'Nicole',
      'Sebastian',
      'Alejo',
      'Lucas',
      'Gerardo',
      'Mia',
      'Ana',
      'Belén',
      'Matteo',
    ];

    return [
      User(name: 'Paulo', phoneNumber: '+595983123123'),
      User(name: 'Matias', phoneNumber: '+595983123124'),
      User(name: 'David', phoneNumber: '+595983123125'),
      User(name: 'Santiago', phoneNumber: '+595983123126'),
      User(name: 'Romina', phoneNumber: '+595983123127'),
      User(name: 'Federico', phoneNumber: '+595983123128'),
      User(name: 'Tomas', phoneNumber: '+595983123129'),
      User(name: 'Natasha', phoneNumber: '+5959831231231'),
      User(name: 'Emilia', phoneNumber: '+595983123122'),
      User(name: 'Olivia', phoneNumber: '+595983123111'),
      User(name: 'Martina', phoneNumber: '+595983123112'),
      User(name: 'Nicole', phoneNumber: '+595983123113'),
      User(name: 'Sebastian', phoneNumber: '+595983123114'),
      User(name: 'Alejo', phoneNumber: '+595983123115'),
      User(name: 'Lucas', phoneNumber: '+595983123116'),
      User(name: 'Gerardo', phoneNumber: '+595983123117'),
      User(name: 'Mia', phoneNumber: '+595983123118'),
      User(name: 'Ana', phoneNumber: '+595983123119'),
      User(name: 'Belén', phoneNumber: '+595983123120'),
      User(name: 'Matteo', phoneNumber: '+595983123121'),
    ];
  }
}
