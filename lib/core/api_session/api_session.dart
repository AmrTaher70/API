import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:api/core/cubit/cubit/api_cubit.dart';

class ApiSession extends StatelessWidget {
  const ApiSession({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApiCubit, ApiState>(
      builder: (context, state) {
        if (state is GetAlbumLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GetAlbumErrorState) {
          // Show toast error message
          Fluttertoast.showToast(
            msg: "Error ",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.red,
            textColor: Colors.white,
          );

          return Container();
        } else if (state is GetAlbumSuccessState) {
          return ListView.builder(
            itemCount: 99,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                trailing: Text(BlocProvider.of<ApiCubit>(context)
                    .albums[index]
                    .userId
                    .toString()),
                leading: Text(BlocProvider.of<ApiCubit>(context)
                    .albums[index]
                    .id
                    .toString()),
                title: Text(
                    BlocProvider.of<ApiCubit>(context).albums[index].title),
              );
            },
          );
        } else {
          return Container();
        }
      },
    );
  }
}
