import 'package:api/core/texts/texts.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'api2_state.dart';

class Api2Cubit extends Cubit<Api2State> {
  Api2Cubit() : super(Api2Initial());
  // sign in
  void postData() async {
    await Dio()
        .post(
          EndPoints.baseurl + EndPoints.signIn,
          data: {
            "email": "amrhafiz47@gmail.com",
            "password": "amr123",
          },
        )
        .then((value) => print(value.data))
        .catchError((e) {
          print(e.toString());
        });
  }
}
