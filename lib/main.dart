import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ruta/DeliveryScreen.dart';
import 'package:ruta/DirectionsProvider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (_) => DirectionProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DeliveryScreen(),
      ),
    );
  }
}

class AskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fasty - Delivery'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Desde: La Magdalena',
            ),
            Text(
              'CC. Recreo',
            ),
            FlatButton(
              child: Text("Aceptar Viaje"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
