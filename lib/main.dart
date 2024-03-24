import 'package:clean_arch_with_getx/presentation/di/dependency_injection.dart';
import 'package:clean_arch_with_getx/presentation/image_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjections.init();
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
    imageController = Get.find();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Obx(() => Center(
            child: imageController.showLoading
                ? const CircularProgressIndicator()
                : GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,childAspectRatio: 0.8),
                    itemCount: imageController.imagesList.length,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          Image.network(imageController.imagesList[index].image),
                          Padding(padding: EdgeInsets.all(8),child: Text("Hey $index"),),
                          Padding(padding: EdgeInsets.all(8),child: Text("Hey Welcome Image"),),
                          Padding(padding: EdgeInsets.all(8),child: Text("Source: PicRiser"),)
                        ],
                      );
                    }))));
  }
/*ListView.builder(
  itemCount: imageController.imagesList.length,
  itemBuilder: (ctx, index) => Image.network(imageController
      .imagesList[index]
      .image))),*/
}
