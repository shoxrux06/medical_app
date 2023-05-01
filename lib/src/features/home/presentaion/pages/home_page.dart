import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _painIndicator = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 10.0.w),
            child: const Text('Og\'riqlarni Qayd Etish'),
          ),
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 26.0.w),
              child: CircleAvatar(
                radius: 20.h,
                backgroundColor: const Color(0xffd7482f),
                child: const Text(
                  'A',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            width: double.infinity,
            padding: EdgeInsets.only(top: 20.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Ayni paytdagi og\'riq?',
                  style: TextStyle(fontSize: 18.sp),
                ),
                SizedBox(height: 16.h),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.blue)),
                  onPressed: () {
                    showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime.now())
                        .then(
                      (value) => showTimePicker(
                          context: context, initialTime: TimeOfDay.now()),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.edit_calendar_rounded, size: 24.h),
                      const SizedBox(width: 6),
                      Text(
                        'Sanani o\'zgartirish',
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 70.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26.0),
                  child: SfSlider(
                    value: _painIndicator,
                    min: 0,
                    max: 10,
                    interval: 1,
                    stepSize: 1,
                    showDividers: true,
                    shouldAlwaysShowTooltip: true,
                    onChanged: (val) {
                      setState(() {
                        _painIndicator = val;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 52.0.w),
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Og\'riq yo\'q', style: TextStyle(fontSize: 14.sp)),
                      Text('Qattiq og\'riq', style: TextStyle(fontSize: 14.sp)),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                ElevatedButton(
                    onPressed: () {},
                    child: const Text('+ Og\'riqni qo\'shish')),
                TextButton(
                    onPressed: () {},
                    child: const Text('+ Og\'riqni qo\'shish')),
                SizedBox(height: 40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
