import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      // print(' ${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
      if ((scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    add5();

    isLoading = false;
    setState(() {});

    if ((scrollController.position.pixels + 100) <= scrollController.position.maxScrollExtent) return;

    //Hace scroll automaticamente. de 100 pixeles.
    scrollController.animateTo(scrollController.position.pixels + 100,
        duration: const Duration(milliseconds: 300), curve: Curves.fastOutSlowIn);
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.black,
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: Stack(
            children: [
              RefreshIndicator(
                color: AppTheme.primary,
                backgroundColor: Colors.white.withOpacity(0.7),
                onRefresh: () => onRefresh(),
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(), //Produce el efecto iPhone, rebota al final del listView.
                    controller: scrollController,
                    itemCount: imagesIds.length,
                    itemBuilder: (BuildContext context, int index) {
                      return FadeInImage(
                          height: 300,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          placeholder: const AssetImage('assets/jar-loading.gif'),
                          image: NetworkImage('https://picsum.photos/800/600?image=${imagesIds[index]}'));
                    }),
              ),
              if (isLoading)
                Positioned(
                    bottom: 40,
                    left: size.width * 0.5 -
                        30, //La lógica es coger la mitad del ancho de la pantalla y restarle la mitad del ancho del widget.
                    child: const _LoadingIcon())
            ],
          ),
        ));
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        height: 60,
        width: 60,
        decoration: BoxDecoration(color: Colors.white.withOpacity(0.7), shape: BoxShape.circle),
        child: const CircularProgressIndicator(
          color: AppTheme.primary,
        ));
  }
}
