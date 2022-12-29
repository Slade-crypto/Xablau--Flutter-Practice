import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xablau/http/http_controller.dart';
import 'package:xablau/model/user_model.dart';

class HttpPage extends GetView<HttpController> {
  const HttpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Http"), centerTitle: true),
      body: controller.obx((state) {
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (_, index) {
            final UserModel item = state[index];
            return ListTile(
              title: Text(item.name!),
            );
          },
        );
      }, onError: (error) {
        return SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(error!),
              TextButton(
                onPressed: () => controller.findUsers(),
                child: Text('Tentar Novamente'),
              ),
            ],
          ),
        );
      }),
    );
  }
}
