import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/widgets/main_fill_Button.dart';

class BottomSheet extends StatefulWidget {
  const BottomSheet({super.key});

  @override
  State<BottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showModalBottomSheet<void>(
            elevation: 5,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 300,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Select plan",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Comfortaa",
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            MainFillButton(text: "text", onTap: () {})
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        icon: const Icon(
          Icons.arrow_drop_down_sharp,
          color: Colors.deepOrange,
        ));
  }
}
