import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../model/album_model/album_model.dart';

part 'api_state.dart';

class ApiCubit extends Cubit<ApiState> {
  ApiCubit() : super(ApiInitial());
  List<AlbumModel> albums = [];

  void getAlbumsData() async {
    emit(GetAlbumLoadingState());
    var data = [];
    await Dio()
        .get('https://jsonplaceholder.typicode.com/albums')
        .then((value) {
      print(value.statusCode);
      data = value.data;
      albums = data.map((e) => AlbumModel.fromJson(e)).toList();
      print(
        albums[0].title,
      );
      emit(GetAlbumSuccessState());
    }).catchError((e) {
      print(e.toString());
      emit(GetAlbumErrorState());
    });
  }
}
