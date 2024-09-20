import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {
  static const name = 'infinite_scroll_screen';
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  List<int> imagesIds = [1, 2, 3, 4, 5];
  final ScrollController controller = ScrollController();
  bool isLoading = false;
  bool isMounted = true;

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      if (controller.position.pixels >= controller.position.maxScrollExtent) {
        loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    isMounted = false;
    super.dispose();
  }

  void addFiveImages() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
  }

  Future loadNextPage() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));
    addFiveImages();
    isLoading = false;
    //TODO Revisar si esta montado el componente para hacer el scroll
    if (!isMounted) return;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          controller: controller,
          itemCount: imagesIds.length,
          itemBuilder: (context, index) {
            return FadeInImage(
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
              placeholder: const AssetImage('assets/images/jar-loading.gif'),
              image: NetworkImage(
                  'https://picsum.photos/id/${imagesIds[index]}/500/300'),
              imageErrorBuilder: (context, error, stackTrace) {
                return const Center(child: Text('Error loading image'));
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
