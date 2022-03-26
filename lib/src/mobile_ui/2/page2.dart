import 'package:f_ui/src/navigation/navigation_service.dart';
import 'package:f_ui/src/res/colors.dart';
import 'package:f_ui/src/res/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  static List<MessageModel> messages = [
    MessageModel(
      text:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie fermentum porttitor diam purus ",
      isRight: false,
      time: "08:30",
    ),
    MessageModel(
      text:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie.",
      isRight: false,
      time: "08:30",
    ),
    MessageModel(
      text: "Lorem ipsum dolor amet, consectetur.",
      isRight: true,
      time: "08:30",
    ),
    MessageModel(
      text: "Consectetur",
      isRight: false,
      time: "08:30",
    ),
    MessageModel(
      text: "ipsum .",
      isRight: true,
      time: "08:30",
    ),
    MessageModel(
      text: "ipsum .",
      isRight: true,
      time: "08:30",
    ),
    MessageModel(
      text: "ipsum .",
      isRight: true,
      time: "08:30",
    ),
    MessageModel(
      text: "ipsum .",
      isRight: true,
      time: "08:30",
    ),
    MessageModel(
      text: "ipsum .",
      isRight: true,
      time: "08:30",
    ),
  ];

  Widget _buildHeader(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: 24.r,
        height: 24.r,
        child: IconButton(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          padding: EdgeInsets.zero,
          onPressed: () {
            GetIt.I.get<NavigationService>().back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBox(BuildContext context) {
    return TextFormField(
      readOnly: true,
      autofocus: false,
      decoration: InputDecoration(
        prefixIcon: Container(
          padding: EdgeInsets.only(left: 9.w),
          child: const Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
        prefixIconConstraints: BoxConstraints(
          minHeight: 24.r,
          maxHeight: 24.r,
          minWidth: 41.w,
          maxWidth: 41.r,
        ),
        hintText: "Search conversations",
        isDense: true,
        filled: true,
        fillColor: AppColors.grey,
        focusedBorder: AppStyles.focusedTransparentBorder,
        disabledBorder: AppStyles.focusedTransparentBorder,
        enabledBorder: AppStyles.focusedTransparentBorder,
        errorBorder: AppStyles.focusedTransparentBorder,
        focusedErrorBorder: AppStyles.focusedTransparentBorder,
        errorStyle: errorTextStyle(context),
      ),
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.text,
      onSaved: (val) {},
      onEditingComplete: () {},
      onChanged: (val) {},
      onTap: () {},
    );
  }

  Widget _buildIconButton({
    required IconData icon,
    Function? onPress,
    Color bgColor = AppColors.grey,
    EdgeInsetsGeometry margin = EdgeInsets.zero,
  }) {
    return Container(
      width: 45.r,
      height: 45.r,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45.r),
        color: bgColor,
      ),
      child: SizedBox(
        width: 24.r,
        height: 24.r,
        child: IconButton(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          padding: EdgeInsets.zero,
          onPressed: () => onPress!(),
          icon: Icon(
            icon,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildNameRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            'Wolfag',
            style: GoogleFonts.workSans(
              textStyle: TextStyle(
                fontSize: 28.sp,
                color: Colors.black,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
              ),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        _buildIconButton(icon: Icons.phone),
        SizedBox(width: 17.h),
        _buildIconButton(icon: Icons.videocam),
      ],
    );
  }

  Widget _buildChatMessage({
    required MessageModel chat,
    required bool showProfileBox,
  }) {
    if (chat.isRight) {
      return Container(
        margin: EdgeInsets.only(bottom: 42.h),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              child: Text(chat.time),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(18.w, 13.h, 18.w, 12.h),
                      decoration: BoxDecoration(
                        color: const Color(0xffd0d0d0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          topRight: Radius.circular(20.r),
                          bottomLeft: Radius.circular(20.r),
                        ),
                      ),
                      child: Text(chat.text),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
    return Container(
      margin: EdgeInsets.only(bottom: 42.h),
      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Visibility(
              visible: showProfileBox,
              maintainAnimation: true,
              maintainState: true,
              maintainSize: true,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Container(
                  width: 40.r,
                  height: 40.r,
                  color: const Color(0xffd0d0d0),
                ),
              ),
            ),
            SizedBox(width: 21.w),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(18.w, 13.h, 18.w, 12.h),
                      decoration: BoxDecoration(
                        color: const Color(0xffd0d0d0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          topRight: Radius.circular(20.r),
                          bottomRight: Radius.circular(20.r),
                        ),
                      ),
                      child: Text(chat.text),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: showProfileBox,
                  maintainAnimation: true,
                  maintainState: true,
                  maintainSize: true,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.r),
                    child: Text(chat.time),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildChatList() {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        itemCount: messages.length,
        itemBuilder: (context, index) {
          var showProfileBox = true;
          if (index != 0) {
            var currentChat = messages[index];
            var previousChat = messages[index - 1];
            showProfileBox = currentChat.isRight != previousChat.isRight;
          }
          return _buildChatMessage(
            chat: messages[index],
            showProfileBox: showProfileBox,
          );
        },
      ),
    );
  }

  Widget _buildChatInput(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 9.h, bottom: 9.h),
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.r),
        color: AppColors.grey,
      ),
      child: Row(
        children: [
          SizedBox(width: 25.r),
          Expanded(
            child: TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              onSaved: (val) {},
              onEditingComplete: () {},
              onChanged: (val) {},
              onTap: () {},
              validator: (val) {},
              decoration: InputDecoration(
                hintText: "Your message",
                isDense: true,
                filled: true,
                fillColor: AppColors.grey,
                focusedBorder: AppStyles.focusedTransparentBorder,
                enabledBorder: AppStyles.focusedTransparentBorder,
                disabledBorder: AppStyles.focusedTransparentBorder,
                errorBorder: AppStyles.focusedTransparentBorder,
                errorStyle: errorTextStyle(context),
              ),
            ),
          ),
          _buildIconButton(
            icon: Icons.send,
            bgColor: const Color(0xfff4f4f4),
            margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.fromLTRB(24.w, 44.h, 26.w, 0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.r),
              topRight: Radius.circular(24.r),
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xffc4c4c4).withOpacity(0.25),
                spreadRadius: 0,
                blurRadius: 8,
                offset: const Offset(0, -4),
              ),
            ]),
        child: Column(
          children: [
            _buildChatList(),
            _buildChatInput(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderBlock(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(24.w, 20.h, 24.w, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildHeader(context),
          SizedBox(height: 15.h),
          _buildSearchBox(context),
          SizedBox(height: 15.h),
          _buildNameRow(context),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeaderBlock(context),
            SizedBox(height: 52.h),
            _buildBody(context),
          ],
        ),
      ),
    );
  }
}

class UserModel {
  final int userId;
  UserModel(this.userId);
}

class MessageModel {
  final String text;
  final String time;
  final bool isRight;

  MessageModel({
    required this.text,
    required this.time,
    required this.isRight,
  });
}

class ChatModel {
  final int chatId;
  final UserModel sender;
  final UserModel receiver;
  final MessageModel message;
  final String sentAt;

  ChatModel({
    required this.chatId,
    required this.sender,
    required this.receiver,
    required this.message,
    required this.sentAt,
  });
}
