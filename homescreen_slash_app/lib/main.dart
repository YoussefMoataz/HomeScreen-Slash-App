import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homescreen_slash_app/config/routes/routing.dart';
import 'package:homescreen_slash_app/core/di/di.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/bloc/categories/categories_cubit.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/bloc/products/products_cubit.dart';

Future<void> main() async {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductsCubit(),
        ),
        BlocProvider(
          create: (context) => CategoriesCubit(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
