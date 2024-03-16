import 'package:clean_arch_with_getx/presentation/image_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean With GetX',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Clean With GetX'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final ImageController imageController;
  @override
  void initState() {
     imageController = Get.put(ImageController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Obx(
          () => Center(
              child: ListView.builder(
                  itemCount: imageController.imagesList.length,
                  itemBuilder: (ctx, index) => Image.network(imageController
                      .imagesList[index]
                      .image))), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
