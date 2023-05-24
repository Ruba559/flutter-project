import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/class/statusrequest.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ?   const Center(child: Text('data1'))
        : statusRequest == StatusRequest.offlinefailure
            ? Center(child: Text('data2'))
            : statusRequest == StatusRequest.serverfailure
                ?Center(child: Text('data3'))
                : statusRequest == StatusRequest.failure
                    ? Center(child:Text('data4'))
                    : widget;
  }
}