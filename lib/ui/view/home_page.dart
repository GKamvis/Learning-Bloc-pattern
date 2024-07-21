import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:myapp/ui/cubit/home_page_cubit.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final tfContoller = TextEditingController();
  final tf1Contoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<HomePageCubit, int>(builder: (context, res) {
              return res == 0 ? Text("Result") : Text("$res");
            }),
            TextField(
                controller: tfContoller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Num1 ")),
            TextField(
                controller: tf1Contoller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Num2 ")),
            Gap(20),
            ElevatedButton(
                onPressed: () {
                  context
                      .read<HomePageCubit>()
                      .add(tfContoller.text, tf1Contoller.text);
                },
                child: Text("Add")),
            Gap(20),
            ElevatedButton(
                onPressed: () {
                  context
                      .read<HomePageCubit>()
                      .multiply(tfContoller.text, tf1Contoller.text);
                },
                child: Text("Multiply")),
          ],
        ),
      )),
    );
  }
}
