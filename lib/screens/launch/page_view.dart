import 'package:flutter/material.dart';
import 'package:project_flutter/widget/widget_page_view.dart';
import 'package:project_flutter/widget/widget_container.dart';

// ignore: camel_case_types
class Page_View extends StatefulWidget {
  const Page_View({Key? key}) : super(key: key);

  @override
  State<Page_View> createState() => _Page_ViewState();
}

// ignore: camel_case_types
class _Page_ViewState extends State<Page_View> {
  late PageController _pageController;
  int cureentPage = 0;

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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Visibility(
              visible: cureentPage != 2,
              replacement: Align(
                alignment: AlignmentDirectional.topEnd,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/SingIN');
                  },
                  child: const Text(
                    'START',
                    style: TextStyle(
                      color: Color(0xff23203F),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional.topEnd,
                child: TextButton(
                  onPressed: () {
                    _pageController.animateToPage(2,
                        duration: const Duration(seconds: 1),
                        curve: Curves.bounceIn);
                  },
                  child: const Text(
                    'SKIP',
                    style: TextStyle(
                      color: Color(0xff23203F),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                onPageChanged: (int page) {
                  setState(() {
                    cureentPage = page;
                  });
                },
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: const [
                  widget_page_view(
                    subtitle:
                        'Now were up in the big leagues \n gettingour turn at bat. The Brady \n   Bunch that  s the way we  Brady Bunch..     ',
                    image: 'images/image1.png',
                    title: 'Welcome!',
                  ),
                  widget_page_view(
                    subtitle:
                        'Now were up in the big leagues \n gettingour turn at bat. The Brady \n   Bunch that  s the way we  Brady Bunch..     ',
                    image: 'images/image2.png',
                    title: 'Add to cart',
                  ),
                  widget_page_view(
                    subtitle:
                        'Now were up in the big leagues \n gettingour turn at bat. The Brady \n   Bunch that  s the way we  Brady Bunch..     ',
                    image: 'images/image3.png',
                    title: 'Enjoy Purchase!',
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget_container(Selected: cureentPage == 0, marginEnd: 14),
                const SizedBox(
                  width: 15,
                ),
                widget_container(Selected: cureentPage == 1, marginEnd: 14),
                const SizedBox(
                  width: 15,
                ),
                widget_container(Selected: cureentPage == 2, marginEnd: 14),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
