import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/bloc/user_bloc.dart';
import 'package:flutter_bloc_example/widgets/error_alert.dart';
import 'package:flutter_bloc_example/widgets/user_info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final bloc = UserBloc();
  @override
  Widget build(BuildContext context) {
    const size = 50.0;
    const style = TextStyle(fontSize: size);
    return MaterialApp(
      title: 'Material App',
      home: BlocProvider(
        create: (context) => bloc,
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    bloc.add(UserEventFetchData(Random().nextInt(10)));
                  },
                  child: const Text("Fetch Data",style: style,),
                ),
                BlocBuilder<UserBloc, UserState>(builder: (context, state) {
                  return Text("State: $state",style: style,);
                }),
                BlocBuilder<UserBloc, UserState>(builder: (context, state) {
                  if (state is UserLoading) {
                    return const SizedBox.square(
                      dimension: size * 2,
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is UserLoaded) {
                    return UserInfo(
                      userModel: state.user,
                    );
                  } else if (state is UserError) {
                    return ErrorAlert(
                      message: state.message,
                    );
                  }
                  return const SizedBox();
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
