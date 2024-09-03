import 'package:flutter/material.dart';
import 'package:raqib/Widgets/authenticaton_tab_widget.dart';
import 'package:raqib/Widgets/otp_tab_widget.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      appBar: AppBar(
        backgroundColor: Colors.yellow[50],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'OTP'),
            Tab(text: 'Authentication'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TabBarView(
          controller: _tabController,
          children: const [
            OtpTabWidget(),
            AuthenticationTabWidget(),
          ],
        ),
      ),
    );
  }
}
