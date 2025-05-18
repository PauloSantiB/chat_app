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
      User(name: 'Paulo', phoneNumber: '+595983123123',date: '24 de marzo de 2025'),
      User(name: 'Matias', phoneNumber: '+595983123124',date: '04 de junio de 2025'),
      User(name: 'David', phoneNumber: '+595983123125', date: '15 de de 2025'),
      User(name: 'Santiago', phoneNumber: '+595983123126', date: '17 de junio de 2025'),
      User(name: 'Romina', phoneNumber: '+595983123127', date: '11 de junio de 2025'),
      User(name: 'Federico', phoneNumber: '+595983123128', date: '27 de junio de 2025'),
      User(name: 'Tomas', phoneNumber: '+595983123129', date: '22 de junio de 2025'),
      User(name: 'Natasha', phoneNumber: '+5959831231231', date: '13 de junio de 2025'),
      User(name: 'Emilia', phoneNumber: '+595983123122', date: '25 de junio de 2025'),
      User(name: 'Olivia', phoneNumber: '+595983123111', date: '19 de junio de 2025'),
      User(name: 'Martina', phoneNumber: '+595983123112', date: '30 de junio de 2025'),
      User(name: 'Nicole', phoneNumber: '+595983123113', date: '06 de enero de 2025'),
      User(name: 'Sebastian', phoneNumber: '+595983123114', date: '18 de junio de 2025'),
      User(name: 'Alejo', phoneNumber: '+595983123115', date: '24 de febrero de 2025'),
      User(name: 'Lucas', phoneNumber: '+595983123116', date: '24 de diciembre de 2025'),
      User(name: 'Gerardo', phoneNumber: '+595983123117', date: '24 de mayo de 2025'),
      User(name: 'Mia', phoneNumber: '+595983123118', date: '24 de octubre de 2025'),
      User(name: 'Belén', phoneNumber: '+595983123120', date: '27 de julio de 2025'),
    ];
  }
}
