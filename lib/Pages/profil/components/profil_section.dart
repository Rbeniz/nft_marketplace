import 'package:flutter/material.dart';

class ProfilSection extends StatelessWidget {

  const ProfilSection({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        topBox,
        followSection,
        
        const SizedBox(height: 10),
      ],
    );
  }
}

Widget topBox = Container(
  padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
  width: double.infinity,
  /* decoration: BoxDecoration(
    color: Colors.teal,
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.blue.shade400,
        Colors.tealAccent.shade700,
      ],
    ),
  ), */
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      imagePicture,
      const SizedBox(height: 10),
      profilSection,
    ],
  ),
);

Widget imagePicture = Container(
  padding: const EdgeInsets.all(2),
  height: 150,
  width: 150,
  decoration: BoxDecoration(
    color: const Color.fromARGB(255, 33, 62, 146),
    borderRadius: BorderRadius.circular(75),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.4),
        spreadRadius: 1,
        blurRadius: 2,
        offset: const Offset(0, 1),
      ),
    ],
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(200),
    child: Image.network(
        'https://bitcet.net/wp-content/uploads/2022/07/Play-to-earn-games1.jpg', 
        fit: BoxFit.cover),
  ),
);

Widget profilSection = Column(
  children: [
    const Text(
      '@Michelangelo',
      style: TextStyle(
        color: Color.fromARGB(255, 33, 62, 146),
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
   
    const SizedBox(height: 10),
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: const Text(
        'Michel. Designer & Developper. Have a look at my portfolio',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 17,
        ),
      ),
    ),
     const SizedBox(height: 10),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.mail_outline,
          color: Colors.black,
        ),
        Text(
          ' iar.zineb2@gmail.com',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  ],
);

Widget followSection = Container(
  color: Colors.white,
  padding: const EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            Text(
              'Collected',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '23',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
      Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            Text(
              'Created',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '21.2K',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
      Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            Text(
              'Favoris',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '1200',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
    ],
  ),
);
