import 'package:api/core/api_session/api_session.dart';
import 'package:api/core/cubit/cubit/api_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/api_session2/cubit2/cubit/api2_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ApiCubit()..getAlbumsData(),
        ),
        BlocProvider(
          create: (context) => Api2Cubit()..postData(),
        ),
      ],
      child: const MaterialApp(
        title: 'Flutter',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ApiSession(),
        ),
      ),
    );
  }
}
