import 'package:flutter/material.dart';
import 'package:project_flutter/widget/page_view_home.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  late PageController _pageController;
  int _cuurentpage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10, end: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'View product',
                    style: TextStyle(color: Color(0xff474559), fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.search_rounded,
                        color: Color(0xff474559),
                      ))
                ],
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                onPageChanged: (int page) {
                  setState(() {
                    _cuurentpage = page;
                  });
                },
                children: const [
                  page_view_home(
                    image: 'images/imagepageview1.png',
                  ),
                  page_view_home(
                    image: 'images/imagepageview1.png',
                  ),
                  page_view_home(
                    image: 'images/imagepageview1.png',
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabPageSelectorIndicator(
                    backgroundColor:
                        _cuurentpage == 0 ? Colors.blue : Colors.grey,
                    borderColor: Colors.grey,
                    size: 10),
                TabPageSelectorIndicator(
                    backgroundColor:
                        _cuurentpage == 1 ? Colors.blue : Colors.grey,
                    borderColor: Colors.grey,
                    size: 10),
                TabPageSelectorIndicator(
                    backgroundColor:
                        _cuurentpage == 2 ? Colors.blue : Colors.grey,
                    borderColor: Colors.grey,
                    size: 10),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 12, end: 12),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 20,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 13,
                      mainAxisSpacing: 13,
                      childAspectRatio: 120 / 160,
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 1),
                            Image.asset('images/im1.png'),
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsetsDirectional.only(start: 20),
                              child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text(
                                  'Bagpack',
                                  style: TextStyle(
                                    color: Color(0xff474559),
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  '10.00',
                                  style: TextStyle(
                                    color: Color(0xff9E9DB0),
                                    fontSize: 15,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add_shopping_cart_outlined,
                                      color: Color(0xff474559),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
