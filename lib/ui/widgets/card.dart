part of 'widgets.dart';

class CardDetail extends StatelessWidget {
  final int status;
  final String description;
  final String date;
  final String total;
  CardDetail({this.status, this.description, this.date, this.total});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: double.infinity.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Row(
                children: [
                  Image.asset(
                    (status == 1 ? 'assets/ic_in.png' : 'assets/ic_out.png'),
                    height: 30.h,
                    width: 30.h,
                  ),
                  SizedBox(
                    width: 11.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        description,
                        style: primaryText.copyWith(
                            fontSize: 13.sp, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        date,
                        style: secondaryText,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          Text(total)
        ],
      ),
    );
  }
}
