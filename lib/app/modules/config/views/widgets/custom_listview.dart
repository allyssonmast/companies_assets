import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLisView extends StatefulWidget {
  final String? mainTitle;
  final List list;
  const CustomLisView({super.key, this.mainTitle, required this.list});

  @override
  State<CustomLisView> createState() => _CustomLisViewState();
}

class _CustomLisViewState extends State<CustomLisView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.mainTitle != null)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.sp),
            child: Text(widget.mainTitle!),
          ),
        ListView.builder(
          itemCount: widget.list.length,
          padding: EdgeInsets.symmetric(vertical: 8.sp),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) {
            return Card(
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(widget.list[index]['title']),
                  subtitle: (widget.list[index] as Map).containsKey('subTitle')
                      ? Text(widget.list[index]['subTitle'])
                      : null,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
