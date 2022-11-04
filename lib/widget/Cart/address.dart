import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  List add = [
    {
      "name": "nithish",
      "num": "9095791287",
      "door": "8/36",
      "city": "coimbatore",
      "pin": "641 407"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
        child:  Row(
          children: [
             Expanded(
              child: Text(
                "Deliver to:",
                style: TextStyle(fontSize: 14.sp),
              ),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                    MaterialStateProperty.all(Colors.grey.shade300),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(color: Colors.black)))),
                onPressed: () {},
                child: const Text("change",style: TextStyle(color: Colors.blue),))
          ],
        ),
    );
  }
}
