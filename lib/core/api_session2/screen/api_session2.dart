import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit2/cubit/api2_cubit.dart';

class ApiSession2 extends StatelessWidget {
  const ApiSession2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Api2Cubit, Api2State>(builder: (context, state) {
      return const Scaffold();
    });
  }
}
