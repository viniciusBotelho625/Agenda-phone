import 'package:app_crud/provider/users.dart';
import 'package:app_crud/routes/app_routes.dart';
import 'package:app_crud/views/user_form.dart';
import 'package:app_crud/views/user_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Users(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          AppRoutes.Home: (_) => UserList(),
          AppRoutes.User_Form: (_) => UserForm()
        },
      ),
    );
  }
}
