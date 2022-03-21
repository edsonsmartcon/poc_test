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
        primarySwatch: Colors.blue,
      ),
      home: const Poc(),
    );
  }
}

class Poc extends StatefulWidget {
  const Poc({Key? key}) : super(key: key);

  @override
  State<Poc> createState() => _PocState();
}

class _PocState extends State<Poc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Builder(builder: (context) {
          return Container(
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverToBoxAdapter(
                    child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.red,
                    ),
                  )
                ];
              },
              body: SizedBox(
                width: 200,
                height: 400,
                child: ListView.builder(
                  itemCount: 80,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: SizedBox(
                      height: 20,
                      width: 100,
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
