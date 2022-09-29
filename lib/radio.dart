import 'package:flutter/material.dart';
import 'package:radio_button/model.dart';

class RadioButtonAdvancedWidget extends StatefulWidget {
  @override
  _RadioButtonAdvancedWidgetState createState() =>
      _RadioButtonAdvancedWidgetState();
}

class _RadioButtonAdvancedWidgetState extends State<RadioButtonAdvancedWidget> {
  static const users = [
    User(name: 'Tidak Ada', description: 'coba'),
    User(name: 'Kotor', description: 'coba'),
    User(name: 'Bersih', description: 'coba'),
  ];

  User selectedValue = users.first;

  @override
  Widget build(BuildContext context) => ListView(
        physics: NeverScrollableScrollPhysics(),
        children: users
            .map((user) => Container(
                  child: RadioListTile<User>(
                    value: user,
                    groupValue: selectedValue,
                    title: Text(user.name),
                    onChanged: (value) =>
                        setState(() => selectedValue = value!),
                  ),
                ))
            .toList(),

        // RadioListTile<int>(
        //   value: 0,
        //   groupValue: selectedValue,
        //   title: Text('Mike'),
        //   subtitle: Text('Flutter Developer, Freelancer'),
        //   secondary: OutlineButton(
        //     child: Text('View Profile'),
        //     onPressed: () {},
        //   ),
        //   onChanged: (value) => setState(() => selectedValue = value),
        // ),
        // RadioListTile<int>(
        //   value: 1,
        //   groupValue: selectedValue,
        //   title: Text('Emma'),
        //   subtitle: Text('Creative Director, Photo Stylist'),
        //   secondary: OutlineButton(
        //     child: Text('View Profile'),
        //     onPressed: () {},
        //   ),
        //   onChanged: (value) => setState(() => selectedValue = value),
        // ),
        // RadioListTile<int>(
        //   value: 2,
        //   groupValue: selectedValue,
        //   title: Text('James'),
        //   subtitle: Text('Industrial Designer, YouTuber'),
        //   secondary: OutlineButton(
        //     child: Text('View Profile'),
        //     onPressed: () {},
        //   ),
        //   onChanged: (value) => setState(() => selectedValue = value),
        // ),
      );
}
