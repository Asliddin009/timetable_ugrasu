import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/di/init_di.dart';
import '../../auth/domain/auth_state/auth_cubit.dart';
import '../../setting/domain/cubit/setting_cubit.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Выбор группы"),
      ),
      body: _buildDefaultScreen(),
    );
  }

  Widget _buildDefaultScreen() {
    return Column(
      children: [
        Expanded(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.all(16.0),
            children: [
              TextFormField(
                decoration: InputDecoration(
                  label: Text('dsadsa')
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  /*_bloc.add(DataFormUploadEvent(
                    phoneEditController.text,
                    emailEditController.text,
                    addressEditController.text,
                    commentEditController.text,
                    state.login.defaultAccount.city,
                    state.login.defaultAccount.number,
                    state.authToken,
                  ));*/
                  //if(state.descResultError.contains("Вы уже оставляли заявку на поверку")){
                  showDialog(context: context, builder: (BuildContext ctx){
                    return AlertDialog(
                      title: const Text('Хотите снова отправить заявку?'),
                      content: Text("state.descResultError"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Да')),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Нет'))
                      ],
                    );
                  });
                  // }
                }, child: Text('ОТПРАВИТЬ ЗАЯВКУ'),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}

