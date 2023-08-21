import 'package:bloc_context/counter/counter_cubit.dart';
import 'package:bloc_context/show_me_counter.dart';
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
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
          title: 'Bloc Context',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ShowMeCounter()));
                },
                child: Text(
                  'Show me counter',
                  style: TextStyle(fontSize: 20),
                )),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Inrement counter',
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}