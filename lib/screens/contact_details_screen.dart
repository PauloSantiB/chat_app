import 'package:chat_app/models/user.dart'; //  importa la clase User, que contiene nombre y número
import 'package:flutter/cupertino.dart'; //  permite usar íconos y componentes de estilo iOS
import 'package:flutter/material.dart'; // permite usar widgets como Text, Scaffold, AppBar, etc
import 'package:flutter/services.dart'; // Para copiar al portapapeles osea copiar textos

// Función para obtener la fecha actual formateada
String _formatFechaActual() {
  final ahora = DateTime.now();
  final meses = [
    'enero', 'febrero', 'marzo', 'abril', 'mayo', 'junio',
    'julio', 'agosto', 'septiembre', 'octubre', 'noviembre', 'diciembre'
  ];
  final dia = ahora.day;
  final mes = meses[ahora.month - 1];
  final anho = ahora.year;

  return '$dia de $mes de $anho';
}

class ContactDetailsExtra {
  final int index; // index es el número del contacto en la lista.
  final User user; // user es el objeto con name y phoneNumber.

  ContactDetailsExtra({required this.index, required this.user});
} // Esta clase se usa para pasar datos entre pantallas.

class ContactDetailsScreen extends StatelessWidget {
  final ContactDetailsExtra extra;
// Es la pantalla que muestra los detalles del contacto.
//Recibe la información desde extra (índice e instancia User).
  const ContactDetailsScreen({super.key, required this.extra});

 

  @override //se define la estructura visual de la pantalla.
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //AppBar: muestra el nombre del usuario como título.
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        centerTitle: false,
        title: Text(extra.user.name),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Container( // foto de perfil: Muestra la foto del contacto circular, cargada desde assets/
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  image: DecorationImage(
                    image: AssetImage('assets/${extra.index + 1}.png'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(height: 15),
              Text( // Nombre de usuario: Muestra el nombre con letra grande y azul.
                extra.user.name,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
             
                 Text( //Este es el contenido visible del GestureDetector, Muestra el número en pantalla.
                  extra.user.phoneNumber,
                  style: const TextStyle( //Aplica estilos visuales al texto
                    fontSize: 18, // tamaño de letra moderadamente grande.
                    color: Colors.green,//color verde para representar que es un número "activo".
                    fontWeight: FontWeight.w500,// peso seminegrita.
                    decoration: TextDecoration.underline, //subraya el número, indicando que es interactivo.
                  ),
                ),
              
              const SizedBox(height: 20),// Agrega 20 píxeles de espacio vacío entre el número de teléfono y la fecha.

                    Text(//Muestra en pantalla la fecha que corresponde a ese usuario.
                     extra.user.date,// El valor viene de extra.user.date, que accede al campo date de la clase User, extra es un objeto de tipo ContactDetailsExtra, que contiene un User, Ese User fue pasado a esta pantalla cuando tocaste un contacto en la HomeScreen
                     style: const TextStyle(// define el estilo visual del texto de la fecha.
                      fontSize: 16,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w500,
  ),
),

const SizedBox(height: 20),

              // Plantilla de fecha actual con acción
           ////   GestureDetector(
              //  onTap: () {
                //  final fecha = _formatFechaActual();//lama a una función (_formatFechaActual) que devuelve la fecha actual en texto:"18 de mayo de 2025", Guarda ese texto en la variable fecha
              //    Clipboard.setData(ClipboardData(text: fecha));//Copia el contenido de la variable fecha al portapapeles del dispositivo
               //   ScaffoldMessenger.of(context).showSnackBar( //Muestra un SnackBar como aviso.
              //      const SnackBar(content: Text('Fecha copiada al portapapeles')),
               //   );
             //   },
           //     child: Container(//Este es el contenido visual que se muestra al usuario (la tarjeta de la fecha).
            //      padding: const EdgeInsets.all(12),//Personalizan el aspecto visual del Container. espacio interno dentro de la tarjeta.
             //     margin: const EdgeInsets.symmetric(horizontal: 16),//Personalizan el aspecto visual del Container. separación de los bordes laterales.
               //     color: Colors.blue.shade50,
              //      borderRadius: BorderRadius.circular(10),
             //       border: Border.all(color: Colors.blueAccent),
             //    ),
              //    child: Row( //Muestra los elementos dentro del Container en línea horizontal.
               //     children: [
                //      const Icon(Icons.calendar_today, size: 18, color: Colors.blueAccent),//
                //      const SizedBox(width: 10),//Deja un espacio de 10 píxeles entre el ícono y el texto.
                 //     Text(
                  //      _formatFechaActual(),//Muestra la fecha actual en texto.
                  //      style: const TextStyle(
                   //       fontSize: 16,
                     //     color: Colors.black87,
                //        ),
              //        ),
              //      ],
             //     ),
           //     ),
        //      ),
        //      const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
