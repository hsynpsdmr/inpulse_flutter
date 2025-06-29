import 'package:flutter/material.dart';
import 'package:inpulse_flutter/settings_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF22252A),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
                  },
                  child: Image.asset('assets/icons/settings.png'),
                ),

                Image.asset('assets/icons/inPulse.png'),
                Container(
                  width: 54,
                  height: 28,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, 0.64),
                      end: Alignment(1.00, 0.62),
                      colors: [const Color(0xFF373B41), const Color(0xFF474C58)],
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: const Color(0xFFE2447E),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'PRO',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '17.8K',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Followers',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.50),
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 67,
                    height: 67,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '@username',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '435',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Following',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.50),
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Text(
            'Watch Stories Anonymously',
            style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: 'Poppins', fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 20),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  final story = stories[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Container(
                                width: 55,
                                height: 55,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(image: NetworkImage(story["image"]!), fit: BoxFit.cover),
                                  shape: OvalBorder(
                                    side: BorderSide(
                                      width: 3,
                                      strokeAlign: BorderSide.strokeAlignOutside,
                                      color: const Color(0xFFE2447E),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 55,
                                height: 55,
                                decoration: ShapeDecoration(
                                  shape: OvalBorder(
                                    side: BorderSide(
                                      width: 2,
                                      strokeAlign: BorderSide.strokeAlignOutside,
                                      color: const Color(0xFF22252A),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          story["name"]!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          story["time"]!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.50),
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      width: double.infinity,
                      height: 74,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 0.50, color: Color(0xFF5A6880)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 32,
                            height: 32,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/icons/magnifying.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Profile Visitors',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Text(
                                'Who viewed your profile?',
                                style: TextStyle(
                                  color: Color(0xFF98A4B7),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                '3',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFFD041D5),
                                  fontSize: 30,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 40,
                                height: 16,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(left: 0, child: _buildSmallAvatar('assets/icons/image1.png')),
                                    Positioned(left: 12, child: _buildSmallAvatar('assets/icons/image2.png')),
                                    Positioned(
                                      left: 24,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          _buildSmallAvatar('assets/icons/image3.png'),
                                          Container(
                                            width: 16,
                                            height: 16,
                                            decoration: BoxDecoration(
                                              color: Colors.black.withOpacity(0.6),
                                              shape: BoxShape.circle,
                                            ),
                                            alignment: Alignment.center,
                                            child: const Text(
                                              '+1',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFFD041D5),
                                                fontSize: 6,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(top: 5, right: 5, child: Image.asset('assets/icons/pro-text.png')),
                  ],
                ),
                SizedBox(height: 10),
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      width: double.infinity,
                      height: 74,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 0.50, color: Color(0xFF5A6880)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 32,
                            height: 32,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/icons/hearth.png'), fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Secret Fans',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Text(
                                'Who are your secret admirers?',
                                style: TextStyle(
                                  color: Color(0xFF98A4B7),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '9',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: const Color(0xFFE2447F),
                                  fontSize: 30,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 40,
                                height: 16,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(left: 0, child: _buildSmallAvatar('assets/icons/image1.png')),
                                    Positioned(left: 12, child: _buildSmallAvatar('assets/icons/image2.png')),
                                    Positioned(
                                      left: 24,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          _buildSmallAvatar('assets/icons/image3.png'),
                                          Container(
                                            width: 16,
                                            height: 16,
                                            decoration: BoxDecoration(
                                              color: Colors.black.withOpacity(0.6),
                                              shape: BoxShape.circle,
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              '+7',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: const Color(0xFFE2447F),
                                                fontSize: 6,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(top: 5, right: 5, child: Image.asset('assets/icons/pro-text.png')),
                  ],
                ),
                SizedBox(height: 10),
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      width: double.infinity,
                      height: 74,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 0.50, color: Color(0xFF5A6880)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 32,
                            height: 32,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/icons/block.png'), fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Blockers',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Text(
                                'Who blocked you?',
                                style: TextStyle(
                                  color: Color(0xFF98A4B7),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '12',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFFDD3333),
                                  fontSize: 30,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 40,
                                height: 16,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(left: 0, child: _buildSmallAvatar('assets/icons/image1.png')),
                                    Positioned(left: 12, child: _buildSmallAvatar('assets/icons/image2.png')),
                                    Positioned(
                                      left: 24,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          _buildSmallAvatar('assets/icons/image3.png'),
                                          Container(
                                            width: 16,
                                            height: 16,
                                            decoration: BoxDecoration(
                                              color: Colors.black.withOpacity(0.6),
                                              shape: BoxShape.circle,
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              '+10',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: const Color(0xFFDD3333),
                                                fontSize: 6,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(top: 5, right: 5, child: Image.asset('assets/icons/pro-text.png')),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            height: 74,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 0.50, color: Color(0xFF5A6880)),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/icons/new-followers.png'),
                                    const SizedBox(width: 6),
                                    const Text(
                                      '599',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'New Followers',
                                  style: TextStyle(
                                    color: Color(0xFF98A4B7),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 5,
                            right: 5,
                            child: Row(
                              children: [
                                Image.asset('assets/icons/up.png'),
                                const Text(
                                  '6',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            height: 74,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 0.50, color: Color(0xFF5A6880)),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/icons/unfollowers.png'),
                                    const SizedBox(width: 6),
                                    const Text(
                                      '4',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'Unfollowers',
                                  style: TextStyle(
                                    color: Color(0xFF98A4B7),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 5,
                            right: 5,
                            child: Row(
                              children: [
                                Image.asset('assets/icons/down.png'),
                                const Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            height: 74,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 0.50, color: Color(0xFF5A6880)),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/icons/not-following-me.png'),
                                    const SizedBox(width: 6),
                                    const Text(
                                      '147',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'Not Following Me',
                                  style: TextStyle(
                                    color: Color(0xFF98A4B7),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 5,
                            right: 5,
                            child: Row(
                              children: [
                                Image.asset('assets/icons/up.png'),
                                const Text(
                                  '4',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            height: 74,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 0.50, color: Color(0xFF5A6880)),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/icons/im-not-following.png'),
                                    const SizedBox(width: 6),
                                    const Text(
                                      '83',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'I’m Not Following',
                                  style: TextStyle(
                                    color: Color(0xFF98A4B7),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 5,
                            right: 5,
                            child: Row(
                              children: [
                                Image.asset('assets/icons/up.png'),
                                const Text(
                                  '2',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Spacer(),
        ],
      ),
    );
  }
}

Widget _buildSmallAvatar(String assetPath) {
  return Container(
    width: 16,
    height: 16,
    decoration: ShapeDecoration(
      image: DecorationImage(image: AssetImage(assetPath), fit: BoxFit.cover),
      shape: const OvalBorder(
        side: BorderSide(width: 1, strokeAlign: BorderSide.strokeAlignOutside, color: Color(0xFF22252A)),
      ),
    ),
  );
}

final List<Map<String, String>> stories = [
  {"image": "https://randomuser.me/api/portraits/women/1.jpg", "name": "Aslı Güzelyurt", "time": "1m"},
  {"image": "https://randomuser.me/api/portraits/men/2.jpg", "name": "Burak Güven", "time": "3m"},
  {"image": "https://randomuser.me/api/portraits/men/3.jpg", "name": "İsmet Yüce", "time": "5m"},
  {"image": "https://randomuser.me/api/portraits/women/4.jpg", "name": "Alara Pekpembiş", "time": "2m"},
  {"image": "https://randomuser.me/api/portraits/men/5.jpg", "name": "Ziya Yıldırım", "time": "6m"},
  {"image": "https://randomuser.me/api/portraits/men/6.jpg", "name": "Suat Eren", "time": "4m"},
  {"image": "https://randomuser.me/api/portraits/women/7.jpg", "name": "Naz Kılıç", "time": "7m"},
  {"image": "https://randomuser.me/api/portraits/women/8.jpg", "name": "Derya Öz", "time": "10m"},
  {"image": "https://randomuser.me/api/portraits/men/9.jpg", "name": "Kaan Tunca", "time": "8m"},
  {"image": "https://randomuser.me/api/portraits/women/10.jpg", "name": "Merve Nur", "time": "9m"},
];
