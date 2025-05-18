import 'package:chat_app/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactDetailsExtra {
  final int index;
  final User user;

  ContactDetailsExtra({required this.index, required this.user});
}

class ContactDetailsScreen extends StatelessWidget {
  final ContactDetailsExtra extra;

  const ContactDetailsScreen({super.key, required this.extra});
  
   Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri url = Uri.parse('tel:$phoneNumber');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'No se pudo hacer la llamada a $phoneNumber';
    }
  }

  Future<void> _openWhatsApp(String phoneNumber) async {
    final Uri url = Uri.parse("https://wa.me/$phoneNumber?text=Hola!");
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'No se pudo abrir WhatsApp para $phoneNumber';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              SizedBox(height: 30),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    image: DecorationImage(
                      image: AssetImage('assets/${extra.index + 1}.png'),
                      //scale: 4,
                      fit: BoxFit.cover,
                
                    ),
                    shape: BoxShape.circle),
              ),
               SizedBox(
                              width: 30,
                              height: 15,
                             
                              ),
              Text(extra.user.name,
              style: const TextStyle( fontSize: 30,
                color: Colors.blueAccent,
              fontWeight: FontWeight.bold,),
              ),
              const SizedBox(
                height: 10,
              ),
             GestureDetector(
  onTap: () => _makePhoneCall(extra.user.phoneNumber),
  onLongPress: () {
    final cleanPhone = extra.user.phoneNumber.replaceAll('+', '');
    _openWhatsApp(cleanPhone);
  },
  child: Text(
    extra.user.phoneNumber,
    style: const TextStyle(
      fontSize: 18,
      color: Colors.green,
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.underline,
    ),
  ),
),
              
              
              

              
             

            ],
          ),
        ),
      ),
    );
  }
}
