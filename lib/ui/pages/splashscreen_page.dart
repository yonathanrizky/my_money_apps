part of 'pages.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity.w,
          height: MediaQuery.of(context).size.height,
          color: Color(0xffE5E5E5),
          child: Padding(
            padding: EdgeInsets.only(top: 126.h, left: 30.w, right: 30.w),
            child: Column(
              children: [
                Image.asset('assets/money.png'),
                SizedBox(
                  height: 43.h,
                ),
                Container(
                  height: 300.h,
                  width: double.infinity.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 27.w, right: 27.w, top: 33.h),
                    child: Column(
                      children: [
                        Text(
                          "Welcome!",
                          style: primaryText.copyWith(fontSize: 24.sp),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          "welcome to Fleet Finance, the easy way to improve your finances and help you control expenses and income",
                          textAlign: TextAlign.center,
                          style: secondaryText.copyWith(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff868686)),
                        ),
                        SizedBox(
                          height: 70.h,
                        ),
                        Container(
                          width: 153.w,
                          child: TextButton(
                            onPressed: () {
                              Get.to(Login());
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xff3366FF),
                            ),
                            child: Text(
                              "Get Started",
                              style: primaryText.copyWith(
                                  color: Colors.white, fontSize: 14.sp),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
