import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class report extends StatelessWidget{

  final String city;
  report({required this.city});
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Weather Report of your city",
            style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.white10,
        ),
        body:

        Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  FutureBuilder(
                      future:apicall(city),
                      builder: (context,snapshot) {

                        if(snapshot.hasData){
                          return Column(
                              children:[
                                if('${snapshot.data['main']}'=='Thunderstorm')...[
                                  new Container(
                                      child: new Image.network(
                                          'http://openweathermap.org/img/wn/11d@2x.png',
                                        width: 400,
                                        height: 300,
                                        fit: BoxFit.fill,

                                      )

                                  )
                                ],
                                if('${snapshot.data['main']}'=='Drizzle')...[
                                  new Container(

                                      child: new Image.network('http://openweathermap.org/img/wn/09d@2x.png',
                                        width: 400,
                                        height: 300,
                                        fit: BoxFit.fill,)

                                  )
                                ],if('${snapshot.data['main']}'=='Rain')...[
                                  new Container(

                                      child: new Image.network('http://openweathermap.org/img/wn/10d@2x.png',
                                        width: 400,
                                        height: 300,
                                        fit: BoxFit.fill,)

                                  )
                                ],if('${snapshot.data['main']}'=='Snow')...[
                                  new Container(

                                      child: new Image.network('http://openweathermap.org/img/wn/13d@2x.png',
                                        width: 400,
                                        height: 300,
                                        fit: BoxFit.fill,)

                                  )
                                ],if('${snapshot.data['main']}'=='Mist')...[
                                  new Container(

                                      child: new Image.network('http://openweathermap.org/img/wn/50d@2x.png',
                                        width: 400,
                                        height: 300,
                                        fit: BoxFit.fill,)

                                  )
                                ],if('${snapshot.data['main']}'=='Smoke')...[
                                  new Container(

                                      child: new Image.network('http://openweathermap.org/img/wn/50d@2x.png',
                                        width: 400,
                                        height: 300,
                                        fit: BoxFit.fill,)

                                  )
                                ],if('${snapshot.data['main']}'=='Haze')...[
                                  new Container(

                                      child: new Image.network('http://openweathermap.org/img/wn/50d@2x.png',
                                        width: 400,
                                        height: 300,
                                        fit: BoxFit.fill,)

                                  )
                                ],if('${snapshot.data['main']}'=='Sand')...[
                                  new Container(

                                      child: new Image.network('http://openweathermap.org/img/wn/50d@2x.png',
                                        width: 400,
                                        height: 300,
                                        fit: BoxFit.fill,)

                                  )
                                ],if('${snapshot.data['main']}'=='Dust')...[
                                  new Container(

                                      child: new Image.network('http://openweathermap.org/img/wn/50d@2x.png',
                                        width: 400,
                                        height: 300,
                                        fit: BoxFit.fill,)

                                  )
                                ],if('${snapshot.data['main']}'=='Fog')...[
                                  new Container(

                                      child: new Image.network('http://openweathermap.org/img/wn/50d@2x.png',
                                        width: 400,
                                        height: 300,
                                        fit: BoxFit.fill,)

                                  )
                                ],if('${snapshot.data['main']}'=='Ash')...[
                                  new Container(

                                      child: new Image.network('http://openweathermap.org/img/wn/50d@2x.png',
                                        width: 400,
                                        height: 300,
                                        fit: BoxFit.fill,)

                                  )
                                ],if('${snapshot.data['main']}'=='Squall')...[
                                  new Container(

                                      child: new Image.network('http://openweathermap.org/img/wn/50d@2x.png',
                                        width: 400,
                                        height: 300,
                                        fit: BoxFit.fill,)

                                  )
                                ],if('${snapshot.data['main']}'=='Tornado')...[
                                  new Container(

                                      child: new Image.network('http://openweathermap.org/img/wn/50d@2x.png',
                                        width: 400,
                                        height: 300,
                                        fit: BoxFit.fill,)

                                  )
                                ],
                                if('${snapshot.data['main']}'=='Clear')...[
                                  new Container(

                                      child: new Image.network('http://openweathermap.org/img/wn/01d@2x.png',
                                        width: 400,
                                        height: 300,
                                        fit: BoxFit.fill,)

                                  )
                                ],if('${snapshot.data['description']}'=='broken clouds')...[
                                  new Container(

                                      child: new Image.network('http://openweathermap.org/img/wn/04d@2x.png',
                                        width: 400,
                                        height: 300,
                                        fit: BoxFit.fill,)

                                  )
                                ],if('${snapshot.data['description']}'=='scattered clouds')...[
                                  new Container(

                                      child: new Image.network('http://openweathermap.org/img/wn/03d@2x.png',
                                        width: 400,
                                        height: 300,
                                        fit: BoxFit.fill,)

                                  )
                                ],if('${snapshot.data['description']}'=='few clouds')...[
                                  new Container(

                                      child: new Image.network('http://openweathermap.org/img/wn/02d@2x.png',
                                        width: 400,
                                        height: 300,
                                        fit: BoxFit.fill,)

                                  )
                                ],if('${snapshot.data['description']}'=='overcast clouds')...[
                                  new Container(


                                      child: new Image.network('http://openweathermap.org/img/wn/04d@2x.png',
                                        width: 400,
                                        height: 300,
                                        fit: BoxFit.fill,)

                                  )
                                ],
                                Text(
                                  'XYZ:  ',
                                  style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                                ),



                                Container(
                                    height: 200,
                                    width: 400,

                                    decoration: BoxDecoration(
                                        color:Colors.white10,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child:Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children:[
                                          Text('Description: ${snapshot.data['description'].toString()}',
                                            style: TextStyle(
                                                color:Colors.lime,
                                              fontSize: 30
                                            ),),
                                          Text("Temperature: ${snapshot.data['temp'].toString()}C",
                                            style: TextStyle(
                                                color: Colors.lime
                                            ),),
                                          Text("Pressure: ${snapshot.data["pressure"].toString()}mm",
                                            style: TextStyle(
                                                color: Colors.lime
                                            ),),
                                          Text("Humidity: ${snapshot.data['humidity'].toString()}%",
                                            style: TextStyle(
                                                color: Colors.lime
                                            ),) ,
                                          Text("Wind Speed: ${snapshot.data['speed'].toString()}m/s",
                                            style: TextStyle(
                                                color: Colors.lime
                                            ),),
                                          Text("Visibility: ${snapshot.data['visibility'].toString()}m",
                                            style: TextStyle(
                                                color: Colors.lime
                                            ),),
                                          Text("City name: ${city}",
                                            style: TextStyle(
                                                color: Colors.lime
                                            ),),
                                          Text("Country: ${snapshot.data["country"].toString()}",
                                            style: TextStyle(
                                                color: Colors.lime
                                            ),),

                                        ] )
                                )

                              ]
                          );
                        }
                        else{
                          return CircularProgressIndicator();
                        }
                      }),
                ]
            )
        )

    );


  }
}
Future  apicall(String city) async{
  final url=Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=d7510f3a2d22db314ff01bb41191785f&units=metric");
  final response=await http.get(url);
  print(response.body);
  final json =jsonDecode(response.body);
  print(json['weather'][0]['description']);
  final output={
    'main':json['weather'][0]['main'],
    'description': json['weather'][0]['description'],
    'temp': json['main']['temp'],
    'humidity': json['main']['humidity'],
    'pressure': json['main']['pressure'],
    'speed': json['wind']['speed'],
    'visibility': json['visibility'],
    'country': json['sys']['country']};
  return output;
}