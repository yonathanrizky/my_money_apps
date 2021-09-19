part of 'pages.dart';

class Home extends StatelessWidget {
  signOut() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("email", null);
    preferences.commit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: double.infinity.w,
              height: 300.h,
              decoration: BoxDecoration(
                  color: Color(0xff254EDB),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff254EDB), Color(0xff84A9FF)]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: Padding(
                padding: EdgeInsets.only(top: 100.h),
                child: Column(
                  children: [
                    Text(
                      "My Money",
                      style: primaryText.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 13.sp),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Rp. 10.430.000",
                      style: primaryText.copyWith(
                          fontSize: 24.sp, color: Colors.white),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                  ],
                ),
              )),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 190.5.h),
                child: Container(
                  height: 109.75.h,
                  width: double.infinity.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Pengeluaran",
                            style: primaryText.copyWith(
                                fontWeight: FontWeight.normal, fontSize: 13.sp),
                          ),
                          Text(
                            "Rp 80.000.000",
                            style: primaryText,
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Pemasukan",
                            style: primaryText.copyWith(
                                fontWeight: FontWeight.normal, fontSize: 13.sp),
                          ),
                          Text(
                            "Rp 100.000.000",
                            style: primaryText,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 145.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                          color: Color(0xff2C2C2C),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/arrow.png',
                            width: 24.w,
                            height: 24.h,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "Save Money",
                            overflow: TextOverflow.ellipsis,
                            style: primaryText.copyWith(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 145.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                          color: Color(0xff2C2C2C),
                          borderRadius: BorderRadius.circular(15)),
                      child: GestureDetector(
                        onTap: () {
                          signOut();
                          Get.offAll(Login());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/scan.png',
                              width: 24.w,
                              height: 24.h,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Pay",
                              style: primaryText.copyWith(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Expanded(
                child: Container(
                  width: double.infinity.w,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 25.h, left: 30.w, right: 30.w),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            "Transaksi Terakhir",
                            style: primaryText,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Container(
                              child: Column(
                                children: [
                                  CardDetail(
                                    status: 1,
                                    description: "Gajian",
                                    date: "25-08-2020",
                                    total: "+ 10.000.000",
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  CardDetail(
                                    status: 2,
                                    description: "Jajan",
                                    date: "25-08-2020",
                                    total: "- 50.000",
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  CardDetail(
                                    status: 2,
                                    description: "Bayar Tagihan",
                                    date: "25-08-2020",
                                    total: "- 900.000",
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
