import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Общежития КубГАУ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:
          SingleChildScrollView(
            child:
          Column(
            children: [
              Image(image:NetworkImage('https://sun9-23.userapi.com/impf/EVE609eiSGjYW4xKJYCOwuZuXFVz19rt_nmkLA/EgEjes97SLU.jpg?size=1384x663&quality=96&sign=4db2607ebdb8627daff45e0550f32ba6&type=album')),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30, bottom:0, left:30, right:0),
                          child: Text(
                              'Общежитие №20',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textDirection: TextDirection.ltr
                          ),
                        ),
                      Padding(
                        padding: EdgeInsets.only(top: 3, bottom:30, left:30, right:0),
                          child: Text(
                              'Краснодар, ул.Калинина, 13',
                              style: TextStyle(color:Colors.grey),
                              textDirection: TextDirection.ltr
                          ),
                        ),
                    ],),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.favorite,color:Colors.red, size: 30,),
                          Padding(
                            padding: EdgeInsets.only(top:0, bottom:0, left:0, right:30),
                            child: Text(
                                '27',
                                style: TextStyle(color:Colors.black),
                                textDirection: TextDirection.ltr
                            ),
                          ),
                        ]
                      )
                    ],
                  )
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Column(
                  children: [
                    Icon(Icons.call, color: Colors.green,),
                    TextButton(onPressed: () {}, child: Text('ПОЗВОНИТЬ',style: TextStyle(color: Colors.green),))
                  ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.near_me, color: Colors.green,),
                      TextButton(onPressed: () {}, child: Text('MAРШРУТ', style: TextStyle(color: Colors.green),))
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.share, color: Colors.green,),
                      TextButton(onPressed: () {}, child:  Text('ПОДЕЛИТЬСЯ',style: TextStyle(color: Colors.green),))
                    ],
                  ),
                ]
              ),
              Padding(
                padding: EdgeInsets.only(top:0, bottom:0, left:30, right:30),
                child: Text(
                    'Студенческий городок или так называемый кампус Кубанского ГАУ состоит из двадцати общежитий, в которых проживает более 8000 студентов, что составляет 96% от всех нуждающихся. Студенты первого курса обеспечены местами в общежитии полностью. В соответствии с Положением о студенческих общежитиях университета, при поселении между администрацией и студентами заключается договор найма жилого помещения. Воспитательная работа в общежитиях направлена на улучшение быта, соблюдение правил внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. Условия проживания в общежитиях университетского кампуса полностью отвечают санитарным нормам и требованиям: наличие оборудованных кухонь, душевых комнат, прачечных, читальных залов, комнат самоподготовки, помещений для заседаний студенческих советов и наглядной агитации. С целью улучшения условий быта студентов активно работает система студенческого самоуправления - студенческие советы организуют всю работу по самообслуживанию',
                    style: TextStyle(color:Colors.black),
                    textDirection: TextDirection.ltr
                )
              )
          ]
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
