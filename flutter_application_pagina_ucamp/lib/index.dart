import 'package:flutter/material.dart';
import 'package:flutter_application_pagina_ucamp/responsive.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return  const SingleChildScrollView(
         child: SafeArea(
          child: Responsive(
            mobile: mobile_view(), 
            tablet: tablet_view(),
            desktop: desktop_web_view()
            ),
         ),
      );
  }
}

class tablet_view extends StatelessWidget {
  const tablet_view({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }
}

class mobile_view extends StatelessWidget {
  const mobile_view({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }
}


class desktop_web_view extends StatefulWidget {
  const desktop_web_view({Key? key}) : super(key: key);

  @override
  State<desktop_web_view> createState() => _desktop_web_viewState();
}

class _desktop_web_viewState extends State<desktop_web_view> {
 
 Color _color_hover = Color(0xFFFD43B3);
 Color _color_menu = Color(0xFF000000);
 Color _color_default = Color(0xFF000000); 

  ButtonStyle propiedadesButton =  ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.focused))
                                return Colors.transparent;
                              if (states.contains(MaterialState.hovered))
                                  return Colors.transparent;
                              if (states.contains(MaterialState.pressed))
                                  return Colors.transparent;
                              return Colors.transparent; 
                          })
                    );
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Material(
                elevation: 8,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFD43B3),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 1,
                        offset: const Offset(0, 3),
                      )
                    ]
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                            const Text('⏰​ Nuevos lanzamientos con 40% off ​😱​',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 20.0,
                              ),),
                            const SizedBox(width: 150.0,), 
                            SizedBox(
                              height: 35.0,
                              width: 130.0,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                    backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF27efdd)),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      side: const BorderSide(color: Color(0xFF27efdd))
                                    )
                                  )
                                ),
                                onPressed: (){
                                  //print('Inscribirme');
                                }, 
                                child: const Text('Inscribirme', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'WorkSans-Normal,Sans-serif',
                                  fontSize: 19.0
                                ),)
                              ),
                            )
                    ],
                  ),
                ),
              ),
              Container(
                height: 110,
                width: MediaQuery.of(context).size.width,
                decoration:  BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.black.withAlpha(70)
                  ))
                ),
                child: Row(
              children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0),
                    child: Image.asset('assets/logo-top-ucamp.png', width: 160.0, ),
                  ),
                  const Spacer(),
                  TextButton(
                     style: propiedadesButton,
                    onPressed: (){

                    }, 
                    child: Text('Bootcamps +', style: TextStyle(
                      fontFamily: 'WorkSans-Normal,Sans-serif',
                      color: _color_default,
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold
                     ),)
                    ),
                  TextButton(
                    style: propiedadesButton,
                    onHover: (value)  {
                      //print(value);
                      setState(() {
                        if (value){
                          _color_default = _color_hover;
                        }else 
                        {
                          _color_default = _color_menu;
                        }
                      });
                    },
                    onPressed: (){
       
                    }, 
                    child: Text('U Camp Talent', 
                     style: TextStyle(
                      fontFamily: 'WorkSans-Normal,Sans-serif',
                      color: _color_default,
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold
                     ),)
                    ),
                  TextButton(
                     style: propiedadesButton,
                    onPressed: (){

                    }, 
                    child: Text('Conócenos', style: TextStyle(
                      fontFamily: 'WorkSans-Normal,Sans-serif',
                      color: _color_default,
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold
                     ),)
                    ),
                  TextButton(
                     style: propiedadesButton,
                    onPressed: (){

                    }, 
                    child: Text('Mi cuenta', style: TextStyle(
                      fontFamily: 'WorkSans-Normal,Sans-serif',
                      color: _color_default,
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold
                     ),)
                    ),
                  const Spacer(),
                  Padding(
                      padding: const EdgeInsets.only(right: 100.0),
                      child: Material(

                        type: MaterialType.transparency,
                        child: IconButton(
                          hoverColor: Colors.transparent,
                          onPressed: (){
                      
                          }, 
                          icon: const Icon(Icons.shopping_cart_outlined)),
                      ),
                    )
              ],
            ),
              ),

         Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
                image:AssetImage(
                'assets/GSS_CREATIVIDAD_MICROSITIO-UCAMP_BANNER1_PRINCIPAL.jpg',
                )
              )
            ),
            child: Material(
              type: MaterialType.transparency,
              child: Stack(
                children: [
                    Positioned(
                      left: 100.0,
                      top: 150.0,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child:  Text('Cursos Online', 
                                  style: TextStyle(color: Colors.white, fontSize: 53.0 ),),
                            ),
                            const Padding(
                              padding:  EdgeInsets.all(8.0),
                              child:  Text('Desarrolla en poco tiempo y de la mano de expertos las habilidades digitales que necesitas para el mundo Tech',
                               style: TextStyle(color: Colors.white, fontSize: 30.0 )),
                            ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                            height: 45.0,
                            width: 220.0,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFfd43b3)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: const BorderSide(color: Color(0xFFfd43b3))
                                  )
                                )
                              ),
                              onPressed: (){
                                print('Ver Bootcamps');
                              }, 
                              child: const Text(' Ver Bootcamps', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                 fontFamily: 'WorkSans-Normal,Sans-serif',
                                 fontSize: 25.0
                              ),)
                            ),
                        ),
                          )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      right: 40,
                      child: FloatingActionButton(
                            onPressed: () {
                              // Add your onPressed code here!
                            },
                            backgroundColor: const Color(0xFF25d366),
                            child: const Icon(Icons.whatsapp, size: 40.0,),
                          ),
                      )         
                ],      
              ),
            ),
           ),
          )
            ],
          ),
    );
  }
}