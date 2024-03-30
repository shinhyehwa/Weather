import 'package:flutter/cupertino.dart';
import 'package:weather_app/data/data_source/api/api_client_provider.dart';
import 'package:weather_app/di.dart';
import 'package:weather_app/presentation/my_app.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
configureDependencies();
ApiClientProvider.init();
  runApp(const MyApp());
}