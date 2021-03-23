import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

String cevap = 'Başlangıç';














class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  static const styleSomebody = BubbleStyle(
    nip: BubbleNip.leftCenter,
    color: Colors.white,
    borderColor: Colors.grey,
    borderWidth: 1,
    elevation: 4,
    margin: BubbleEdges.only(top: 8, right: 50),
    alignment: Alignment.topLeft,
  );

  static const styleMe = BubbleStyle(
    //nip: BubbleNip.rightCenter,
    color: Color.fromARGB(255, 225, 255, 199),
    borderColor: Colors.grey,
    borderWidth: 1,
    elevation: 4,
    margin: BubbleEdges.only(top: 8, left: 50),
    alignment: Alignment.topRight,
  );
  static const styleGecmisMe = BubbleStyle(
    nip: BubbleNip.rightCenter,
    color: Color.fromARGB(255, 225, 255, 199),
    borderColor: Colors.grey,
    borderWidth: 1,
    elevation: 4,
    margin: BubbleEdges.only(top: 8, left: 50),
    alignment: Alignment.topRight,
  );

  @override
  Widget build(BuildContext context) {
   if (cevap == 'Başlangıç') return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        centerTitle: true,
        title: Text('ROCKSTAR CHATBOT'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.orangeAccent[100],
          ),
          child: ListView(
            reverse: true,
            children: [
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            cevap = 'Bilmiyorum';
                          });
                        },
                        child: Bubble(
                          style: styleMe,
                          child: const Text("Bilmiyorum"),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            cevap = 'Metamorfik';
                          });
                        },
                        child: Bubble(
                          style: styleMe,
                          child: const Text("Metamorfik"),
                        ),
                      ),
                      SizedBox(width: 8,),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            cevap ='Sedimanter';
                          });
                        },
                        child: Bubble(
                          style: styleMe,
                          child: const Text("Sedimanter"),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            cevap = 'Magmatik';
                          });
                        },
                        child: Bubble(
                          style: styleMe,
                          child: const Text('Magmatik'),
                        ),
                      ),
                      SizedBox(width: 8,),
                    ],
                  ),

                ],
              ),
              Bubble(
                style: styleSomebody,
                child: const Text("Elinizdeki kaya hangisi?"),
              ),
              Bubble(
                style: styleSomebody,
                child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
              ),
            ],
          ),
        ),
      ),
    );
   if (cevap == 'Magmatik') return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             GestureDetector(
               onTap: () {
                 setState(() {
                   cevap = "Başlangıç";
                 });
               },
               child: Padding(
                 padding: const EdgeInsets.fromLTRB(0,0,8,0),
                 child: Bubble(
                   style: styleMe,
                   child: const Text("Baştan başlayalım!"),
                 ),
               ),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Magmatik kayalarda şimdilik hizmet veremiyorum."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Magmatik"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == 'Bilmiyorum') return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       cevap = 'Hamur';
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Hamur"),
                   ),
                 ),
                 GestureDetector(
                   onTap: () {
                     setState(() {
                       cevap = 'Çamur';
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Çamur"),
                   ),
                 ),
                 SizedBox(width: 8,),
               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın matriks özelliği hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Bilmiyorum"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == 'Çamur') return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Column(
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     GestureDetector(
                       onTap: (){
                         setState(() {
                           cevap = 'Şeyl';
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text("Şeyl"),
                       ),
                     ),
                     GestureDetector(
                       onTap: () {
                         setState(() {
                           cevap = 'Kumtaşı';
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text("Kumtaşı"),
                       ),
                     ),
                     SizedBox(width: 8,),
                   ],
                 ),
                 Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     GestureDetector(
                       onTap: () {
                         setState(() {
                           cevap ='Çakıltaşı';
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text("Çakıltaşı"),
                       ),
                     ),
                     GestureDetector(
                       onTap: () {
                         setState(() {
                           cevap = 'Kireçtaşı';
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text('Kireçtaşı'),
                       ),
                     ),
                     SizedBox(width: 8,),
                   ],
                 ),

               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizde hangi kaya var?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya sedimanter gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Çamur"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın matriks özelliği hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Bilmiyorum"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == 'Şeyl') return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Column(
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     GestureDetector(
                       onTap: (){
                         setState(() {
                           cevap = "2/3'den fazla silt";
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text("2/3'den fazla silt"),
                       ),
                     ),
                     GestureDetector(
                       onTap: () {
                         setState(() {
                           cevap = "2/3'den fazla kil";
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text("2/3'den fazla kil"),
                       ),
                     ),
                     SizedBox(width: 8,),
                   ],
                 ),
                 Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     GestureDetector(
                       onTap: () {
                         setState(() {
                           cevap ="Eşit oranda silt ve kil";
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text("Eşit oranda silt ve kil"),
                       ),
                     ),
                     SizedBox(width: 8,),
                   ],
                 ),

               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın malzeme oranı nedir?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Şeyl"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizde hangi kaya var?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya sedimanter gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Çamur"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın matriks özelliği hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Bilmiyorum"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == "2/3'den fazla silt") return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       cevap = "Evet1";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Evet"),
                   ),
                 ),
                 GestureDetector(
                   onTap: () {
                     setState(() {
                       cevap = "Hayır1";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Hayır"),
                   ),
                 ),
                 SizedBox(width: 8,),
               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya tabakalı mı?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("2/3'den fazla silt"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın malzeme oranı nedir?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Şeyl"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizde hangi kaya var?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya sedimanter gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Çamur"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın matriks özelliği hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Bilmiyorum"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == "Evet1") return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       cevap = "Teşekkürler";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Teşekkürler!"),
                   ),
                 ),
                 GestureDetector(
                   onTap: () {
                     setState(() {
                       cevap = "Başlangıç";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Baştan başlayalım!"),
                   ),
                 ),
                 SizedBox(width: 8,),
               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya şeyl gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Evet"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya tabakalı mı?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("2/3'den fazla silt"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın malzeme oranı nedir?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Şeyl"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizde hangi kaya var?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya sedimanter gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Çamur"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın matriks özelliği hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Bilmiyorum"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == "Hayır1") return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       cevap = "Teşekkürler";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Teşekkürler!"),
                   ),
                 ),
                 GestureDetector(
                   onTap: () {
                     setState(() {
                       cevap = "Başlangıç";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Baştan başlayalım!"),
                   ),
                 ),
                 SizedBox(width: 8,),
               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya silttaşı gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Evet"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya tabakalı mı?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("2/3'den fazla silt"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın malzeme oranı nedir?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Şeyl"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizde hangi kaya var?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya sedimanter gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Çamur"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın matriks özelliği hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Bilmiyorum"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == "Teşekkürler") return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("RockStar'ı kullandığınız için teşekkür ederim!"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Teşekkürler!"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya şeyl gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Evet"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya tabakalı mı?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("2/3'den fazla silt"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın malzeme oranı nedir?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Şeyl"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizde hangi kaya var?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya sedimanter gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Çamur"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın matriks özelliği hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Bilmiyorum"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == "2/3'den fazla kil") return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       cevap = "Evet2";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Evet"),
                   ),
                 ),
                 GestureDetector(
                   onTap: () {
                     setState(() {
                       cevap = "Hayır2";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Hayır"),
                   ),
                 ),
                 SizedBox(width: 8,),
               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya tabakalı mı?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("2/3'den fazla kil"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın malzeme oranı nedir?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Şeyl"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizde hangi kaya var?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya sedimanter gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Çamur"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın matriks özelliği hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Bilmiyorum"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == "Evet2") return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       cevap = "Teşekkürler";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Teşekkürler!"),
                   ),
                 ),
                 GestureDetector(
                   onTap: () {
                     setState(() {
                       cevap = "Başlangıç";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Baştan başlayalım!"),
                   ),
                 ),
                 SizedBox(width: 8,),
               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya şeyl gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Evet"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya tabakalı mı?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("2/3'den fazla silt"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın malzeme oranı nedir?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Şeyl"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizde hangi kaya var?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya sedimanter gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Çamur"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın matriks özelliği hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Bilmiyorum"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == "Hayır2") return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       cevap = "Teşekkürler";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Teşekkürler!"),
                   ),
                 ),
                 GestureDetector(
                   onTap: () {
                     setState(() {
                       cevap = "Başlangıç";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Baştan başlayalım!"),
                   ),
                 ),
                 SizedBox(width: 8,),
               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya kiltaşı gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Evet"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya tabakalı mı?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("2/3'den fazla silt"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın malzeme oranı nedir?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Şeyl"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizde hangi kaya var?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya sedimanter gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Çamur"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın matriks özelliği hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Bilmiyorum"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == "Eşit oranda silt ve kil") return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       cevap = "Teşekkürler";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Teşekkürler!"),
                   ),
                 ),
                 GestureDetector(
                   onTap: () {
                     setState(() {
                       cevap = "Başlangıç";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Baştan başlayalım!"),
                   ),
                 ),
                 SizedBox(width: 8,),
               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya çamurtaşı gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Eşit oranda silt ve kil"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın malzeme oranı nedir?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Şeyl"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizde hangi kaya var?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya sedimanter gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Çamur"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın matriks özelliği hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Bilmiyorum"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == 'Hamur') return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       cevap = "Evet3";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Evet"),
                   ),
                 ),
                 GestureDetector(
                   onTap: () {
                     setState(() {
                       cevap = "Hayır3";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Hayır"),
                   ),
                 ),
                 SizedBox(width: 8,),
               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Minerallerde uzama ya da yönelim var mı?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Hamur"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın matriks özelliği hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Bilmiyorum"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == 'Evet3') return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Column(
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     GestureDetector(
                       onTap: (){
                         setState(() {
                           cevap = "Taneler gözükmüyor";
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text("Taneler gözükmüyor"),
                       ),
                     ),
                     GestureDetector(
                       onTap: () {
                         setState(() {
                           cevap = "Taneler çok küçük";
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text("Taneler çok küçük"),
                       ),
                     ),
                     SizedBox(width: 8,),
                   ],
                 ),
                 Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     GestureDetector(
                       onTap: () {
                         setState(() {
                           cevap ="Taneler orta boyda";
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text("Taneler orta boyda"),
                       ),
                     ),
                     GestureDetector(
                       onTap: () {
                         setState(() {
                           cevap = "Taneler büyük";
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text('Taneler büyük'),
                       ),
                     ),
                     SizedBox(width: 8,),
                   ],
                 ),

               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın tane boyu hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya metamorfik gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Evet"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Minerallerde uzama ya da yönelim var mı?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Hamur"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın matriks özelliği hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Bilmiyorum"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == 'Hayır3') return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       cevap = "Teşekkürler";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Teşekkürler!"),
                   ),
                 ),
                 GestureDetector(
                   onTap: () {
                     setState(() {
                       cevap = "Başlangıç";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Baştan başlayalım!"),
                   ),
                 ),
                 SizedBox(width: 8,),
               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Magmatik kayalarda şimdilik buraya kadar hizmet verebiliyorum."),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya magmatik gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Hayır"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Minerallerde uzama ya da yönelim var mı?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Hamur"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın matriks özelliği hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Bilmiyorum"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == 'Taneler gözükmüyor') return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       cevap = "Teşekkürler";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Teşekkürler!"),
                   ),
                 ),
                 GestureDetector(
                   onTap: () {
                     setState(() {
                       cevap = "Başlangıç";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Baştan başlayalım!"),
                   ),
                 ),
                 SizedBox(width: 8,),
               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya sleyt gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Taneler gözükmüyor"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın tane boyu hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya metamorfik gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Evet"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Minerallerde uzama ya da yönelim var mı?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Hamur"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın matriks özelliği hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Bilmiyorum"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == 'Taneler çok küçük') return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       cevap = "Teşekkürler";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Teşekkürler!"),
                   ),
                 ),
                 GestureDetector(
                   onTap: () {
                     setState(() {
                       cevap = "Başlangıç";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Baştan başlayalım!"),
                   ),
                 ),
                 SizedBox(width: 8,),
               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya fillat gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Taneler çok küçük"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın tane boyu hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya metamorfik gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Evet"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Minerallerde uzama ya da yönelim var mı?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Hamur"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın matriks özelliği hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Bilmiyorum"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == 'Taneler orta boyda') return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       cevap = "Teşekkürler";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Teşekkürler!"),
                   ),
                 ),
                 GestureDetector(
                   onTap: () {
                     setState(() {
                       cevap = "Başlangıç";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Baştan başlayalım!"),
                   ),
                 ),
                 SizedBox(width: 8,),
               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya şist gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Taneler orta boyda"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın tane boyu hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya metamorfik gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Evet"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Minerallerde uzama ya da yönelim var mı?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Hamur"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın matriks özelliği hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Bilmiyorum"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == 'Taneler büyük') return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       cevap = "Teşekkürler";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Teşekkürler!"),
                   ),
                 ),
                 GestureDetector(
                   onTap: () {
                     setState(() {
                       cevap = "Başlangıç";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Baştan başlayalım!"),
                   ),
                 ),
                 SizedBox(width: 8,),
               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya gnays gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Taneler büyük"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın tane boyu hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya metamorfik gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Evet"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Minerallerde uzama ya da yönelim var mı?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Hamur"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın matriks özelliği hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Bilmiyorum"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == 'Metamorfik') return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Column(
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     GestureDetector(
                       onTap: (){
                         setState(() {
                           cevap = "Taneler gözükmüyor2";
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text("Taneler gözükmüyor"),
                       ),
                     ),
                     GestureDetector(
                       onTap: () {
                         setState(() {
                           cevap = "Taneler çok küçük2";
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text("Taneler çok küçük"),
                       ),
                     ),
                     SizedBox(width: 8,),
                   ],
                 ),
                 Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     GestureDetector(
                       onTap: () {
                         setState(() {
                           cevap ="Taneler orta boyda2";
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text("Taneler orta boyda"),
                       ),
                     ),
                     GestureDetector(
                       onTap: () {
                         setState(() {
                           cevap = "Taneler büyük2";
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text('Taneler büyük'),
                       ),
                     ),
                     SizedBox(width: 8,),
                   ],
                 ),

               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın tane boyu hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Metamorfik"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == 'Taneler gözükmüyor2') return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       cevap = "Teşekkürler";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Teşekkürler!"),
                   ),
                 ),
                 GestureDetector(
                   onTap: () {
                     setState(() {
                       cevap = "Başlangıç";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Baştan başlayalım!"),
                   ),
                 ),
                 SizedBox(width: 8,),
               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya sleyt gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Taneler gözükmüyor"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın tane boyu hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Metamorfik"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == 'Taneler çok küçük2') return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       cevap = "Teşekkürler";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Teşekkürler!"),
                   ),
                 ),
                 GestureDetector(
                   onTap: () {
                     setState(() {
                       cevap = "Başlangıç";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Baştan başlayalım!"),
                   ),
                 ),
                 SizedBox(width: 8,),
               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya fillat gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Taneler çok küçük"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın tane boyu hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Metamorfik"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == 'Taneler orta boyda2') return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       cevap = "Teşekkürler";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Teşekkürler!"),
                   ),
                 ),
                 GestureDetector(
                   onTap: () {
                     setState(() {
                       cevap = "Başlangıç";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Baştan başlayalım!"),
                   ),
                 ),
                 SizedBox(width: 8,),
               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya şist gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Taneler orta boyda"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın tane boyu hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Metamorfik"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == 'Taneler büyük2') return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       cevap = "Teşekkürler";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Teşekkürler!"),
                   ),
                 ),
                 GestureDetector(
                   onTap: () {
                     setState(() {
                       cevap = "Başlangıç";
                     });
                   },
                   child: Bubble(
                     style: styleMe,
                     child: const Text("Baştan başlayalım!"),
                   ),
                 ),
                 SizedBox(width: 8,),
               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Bilgilerime göre elinizdeki kaya gnays gibi gözüküyor."),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Taneler büyük"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın tane boyu hangisi?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Metamorfik"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == 'Sedimanter') return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Column(
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     GestureDetector(
                       onTap: (){
                         setState(() {
                           cevap = "Şeyl2";
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text("Şeyl"),
                       ),
                     ),
                     GestureDetector(
                       onTap: () {
                         setState(() {
                           cevap = "Kumtaşı";
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text("Kumtaşı"),
                       ),
                     ),
                     SizedBox(width: 8,),
                   ],
                 ),
                 Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     GestureDetector(
                       onTap: () {
                         setState(() {
                           cevap ="Çakıltaşı";
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text("Çakıltaşı"),
                       ),
                     ),
                     GestureDetector(
                       onTap: () {
                         setState(() {
                           cevap = "Kireçtaşı";
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text('Kireçtaşı'),
                       ),
                     ),
                     SizedBox(width: 8,),
                   ],
                 ),

               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizde hangi kaya var?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Sedimanter"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == 'Şeyl2') return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Column(
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     GestureDetector(
                       onTap: (){
                         setState(() {
                           cevap = "2/3'den fazla silt2";
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text("2/3'den fazla silt"),
                       ),
                     ),
                     GestureDetector(
                       onTap: () {
                         setState(() {
                           cevap = "2/3'den fazla kil";
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text("2/3'den fazla kil"),
                       ),
                     ),
                     SizedBox(width: 8,),
                   ],
                 ),
                 Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     GestureDetector(
                       onTap: () {
                         setState(() {
                           cevap ="Eşit oranda silt ve kil";
                         });
                       },
                       child: Bubble(
                         style: styleMe,
                         child: const Text("Eşit oranda silt ve kil"),
                       ),
                     ),
                     SizedBox(width: 8,),
                   ],
                 ),

               ],
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın malzeme oranı nedir?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Şeyl"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizde hangi kaya var?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Sedimanter"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );
   if (cevap == "2/3'den fazla silt2") return Scaffold(
     backgroundColor: Colors.amber[50],
     appBar: AppBar(
       centerTitle: true,
       title: Text('ROCKSTAR CHATBOT'),
     ),
     body: Padding(
       padding: const EdgeInsets.all(32.0),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.orangeAccent[100],
         ),
         child: ListView(
           reverse: true,
           children: [
             SizedBox(
               height: 15,
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("2/3'den fazla silt"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kayanın malzeme oranı nedir?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Şeyl"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizde hangi kaya var?"),
             ),
             Bubble(
               style: styleGecmisMe,
               child: const Text("Sedimanter"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Elinizdeki kaya hangisi?"),
             ),
             Bubble(
               style: styleSomebody,
               child: const Text("Merhaba! Rockstar'a hoşgeldiniz!"),
             ),
           ],
         ),
       ),
     ),
   );

  }
}
