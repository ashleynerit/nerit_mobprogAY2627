import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import 'custom_text.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    required this.numOfLikes,
    this.hasImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.w),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.person),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: userName,
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomFont(
                            text: date,
                            fontSize: 12.sp,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 3.w),
                          Icon(Icons.public, size: 12.sp, color: Colors.grey),
                        ],
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: 8.h),
            CustomFont(text: postContent, fontSize: 12.sp, color: Colors.black),
            if (hasImage)
              Container(
                width: double.infinity,
                height: 180.h,
                margin: EdgeInsets.symmetric(vertical: 12.h),
                child: const Placeholder(),
              )
            else
              SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up, color: FB_DARK_PRIMARY),
                  label: CustomFont(
                    text: numOfLikes.toString(),
                    fontSize: 12.sp,
                    color: FB_DARK_PRIMARY,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.comment, color: FB_DARK_PRIMARY),
                  label: CustomFont(
                    text: 'Comment',
                    fontSize: 12.sp,
                    color: FB_DARK_PRIMARY,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.redo, color: FB_DARK_PRIMARY),
                  label: CustomFont(
                    text: 'Share',
                    fontSize: 12.sp,
                    color: FB_DARK_PRIMARY,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                const CircleAvatar(
                  radius: 15,
                  child: Icon(Icons.person, size: 18),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(12.w, 0, 0, 0),
                    alignment: Alignment.centerLeft,
                    height: 32.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: CustomFont(
                      text: 'Write a comment...',
                      fontSize: 11.sp,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            CustomFont(
              text: 'View comments',
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: FB_DARK_PRIMARY,
            ),
          ],
        ),
      ),
    );
  }
}
