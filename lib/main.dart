import 'package:custom_widgets/bloc/weather_bloc.dart';
import 'package:custom_widgets/data_provider/weather_data_provider.dart';
import 'package:custom_widgets/repository/weather_repository.dart';
import 'package:custom_widgets/screens/homepage.dart';
import 'package:custom_widgets/screens/wallpapers.dart';
import 'package:custom_widgets/screens/weather_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => WeatherRepository(WeatherDataProvider()),
      child: BlocProvider(
        create: (context) => WeatherBloc(context.read<WeatherRepository>()),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: '/',
          routes: {
            '/': (_) => const MyHomePage(),
            '/wallpaper_screen': (_) => const WallpaperScreen(),
            '/weather_information_screen': (_) => const WeatherScreen(),
          },
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
