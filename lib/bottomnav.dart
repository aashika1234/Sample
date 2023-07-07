import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xff0C0C0C),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 16, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/icons/logo.svg'),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/bell.svg'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 26),
                        child: SvgPicture.asset('assets/icons/search.svg'),
                      ),
                      Image.asset(
                        'assets/images/small_profile.png',
                        width: 24,
                        height: 24,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/profile.png',
                      width: 96,
                      height: 96,
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  const Center(
                    child: Text(
                      'David Hoffman',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Stand up comic/mixed martial arts fanatic/psychedelic adventuurer Alpha GRLA',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffE6E6E6),
                        height: 24 / 17),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            top: 18, bottom: 19, right: 26, left: 29),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: const Color(0xff3C424D))),
                        child: Row(children: [
                          SvgPicture.asset('assets/icons/strike.svg'),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'CONNECTED',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ]),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 18, bottom: 19, right: 26, left: 29),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: const Color(0xff3C424D))),
                        child: Row(children: [
                          SvgPicture.asset('assets/icons/coinstream.svg'),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'COINSTREAM',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ]),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  SvgPicture.asset(
                    'assets/icons/progressbar.svg',
                    width: MediaQuery.of(context).size.width,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Streamed: 35%  |  Claimed: 20%',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffBFC4CA)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Theme(
              data: theme.copyWith(
                colorScheme: theme.colorScheme.copyWith(
                  surfaceVariant: const Color(0xff494F55),
                ),
              ),
              child: TabBar(
                  labelPadding: const EdgeInsets.all(10),
                  controller: tabController,
                  labelColor: Colors.white,
                  labelStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                  indicatorPadding: const EdgeInsets.only(top: 13),
                  unselectedLabelColor: const Color(0xff89919A),
                  unselectedLabelStyle: const TextStyle(
                      color: Color(0xff89919A),
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                  indicatorColor: const Color(0xffD9D9D9),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
                    Text(
                      'Latest',
                    ),
                    Text(
                      'Playlists',
                    )
                  ]),
            ),
            Expanded(
              child: TabBarView(controller: tabController, children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/content.png',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                const Center(
                  child: Text(
                    'hello,testing',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent),
        child: SizedBox(
          child: BottomNavigationBar(
            elevation: 10,
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xff0C0C0C),
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/home.svg'), label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/music-playlist.svg'),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/footprint.svg'),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/message-question.svg'),
                  label: ''),
            ],
            selectedItemColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
