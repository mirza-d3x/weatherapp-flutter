import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/DataModel.dart';
import 'package:weatherapp/fetchweatherapi.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DataModel? weatherData;
  String timeNow = DateFormat("hh:mm: a").format(DateTime.now());

  @override
  void initState() {
    fetchWeather("London");
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: fetchWeather("London"),
          builder: (BuildContext context, AsyncSnapshot<DataModel> snapshot) {
            if (snapshot.hasData) {
              return Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/nightmoon.jpg"),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          snapshot.data!.current!.tempC.toString(),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dosis(
                            color: Colors.white,
                            fontSize: 80,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 60,left: 10),
                          child: Text(
                            "o",
                            style: GoogleFonts.dosis(
                              color: Colors.white,
                              fontSize: 50,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              timeNow,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.dosis(
                                color: Colors.white,
                                fontSize: 80,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          snapshot.data!.location!.name.toString(),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dosis(
                            color: Colors.white,
                            fontSize: 80,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
