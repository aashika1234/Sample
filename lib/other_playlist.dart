import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OthersPlaylist extends StatelessWidget {
  OthersPlaylist({super.key});
  final List<String> images = [
    'assets/images/content1.png',
    'assets/images/content2.png',
    'assets/images/content3.png',
    'assets/images/content4.png',
    'assets/images/content5.png'
  ];
  final List<String> texts = [
    'Marc Andreessen & Chris Dixon of...',
    'Endgame | Vitalik Buterin',
    'We’re All Gonna Die with Eliezer ',
    "Elizabeth Warren's Attack on Crypto...",
    "Elizabeth Warren's Attack on Crypto..."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C0C0C),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 25,
        ),
        backgroundColor: const Color(0xff0C0C0C),
        centerTitle: false,
        title: const Text(
          'Bankless Hall of Fame',
          style: TextStyle(
              fontSize: 21, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 29),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'David Hoffman',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        Row(
                          children: [
                            const Text(
                              '9 Videos',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffBFC4CA)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 13, right: 4),
                              child: SvgPicture.asset('assets/icons/globe.svg'),
                            ),
                            const Text(
                              'Public',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffBFC4CA)),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/archive-add.svg'),
                        const SizedBox(
                          width: 32,
                        ),
                        SvgPicture.asset('assets/icons/oncomment.svg')
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '10 Videos',
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        const Text(
                          'Sort',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffBFC4CA)),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        SvgPicture.asset('assets/icons/hamburger.svg')
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: images.length,
                itemBuilder: (context, index) => PlaylistCart(
                  icon: images[index],
                  title: texts[index],
                ),
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 32,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PlaylistCart extends StatelessWidget {
  const PlaylistCart({super.key, required this.icon, required this.title});
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                icon,
                width: 142,
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 160,
                      child: Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/profile1.png',
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset('assets/icons/youtube.svg')
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SvgPicture.asset('assets/icons/more-vertical.svg')
        ],
      ),
    );
  }
}
