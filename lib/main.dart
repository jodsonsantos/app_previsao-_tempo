import 'package:app_tempo/model/weather_model.dart';
import 'package:app_tempo/services/weather_api.dart';
import 'package:app_tempo/views/current_weather.dart';
import 'package:app_tempo/views/informacao_adicional.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _PrevisaoTempoState();
}

class _PrevisaoTempoState extends State<HomePage> {
  WeatherApiClient client = WeatherApiClient();
  Weather? data;

  Future<void> getData() async {
    data = await client.getCurrentWeather("Sergipe");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: const Text(
          'Previsão do Tempo',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.black,
        ),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: CurrentWeather(Icons.wb_sunny_rounded,
                      "${data!.temp}°", "${data!.cityName}"),
                ),
                const SizedBox(
                  height: 60.0,
                ),
                const Text(
                  "Informação Adicional",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                InformacaoAdicional("${data!.wind}", "${data!.humidity}",
                    "${data!.pressure}", "${data!.feels_like}")
              ],
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return Container();
        },
      ),
    );
  }
}
