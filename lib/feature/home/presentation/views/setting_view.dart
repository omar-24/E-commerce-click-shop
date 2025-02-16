import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/fonts.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  bool allowTransaction = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Settings',style: AppFonts.AppBarTitle),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SizedBox(height: 60,),
          _buildSwitchTile(
            title: 'Allow transaction',
            subtitle: 'Transactions are allowed',
            icon: Icons.lock,
            value: allowTransaction,
            onChanged: (val) {
              setState(() {
                allowTransaction = val;
              });
            },
          ),
          SizedBox(height: 20,),
          _buildListTile(
            title: 'View your pin',
            icon: Icons.visibility,
            onTap: () {},
          ),
          SizedBox(height: 20,),
          _buildListTile(
            title: 'Change your pin',
            icon: Icons.credit_card,
            onTap: () {},
          ),
          SizedBox(height: 20,),
          _buildListTile(
            title: 'Replace your card',
            subtitle: 'Card was lost or stolen...',
            icon: Icons.badge,
            onTap: () {},
          ),
          SizedBox(height: 20,),
          _buildListTile(
            title: 'Add to Apple Pay',
            icon: Icons.credit_card,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildSwitchTile({
    required String title,
    required String subtitle,
    required IconData icon,
    required bool value,
    required Function(bool) onChanged,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
        activeColor: Colors.purple,
      ),
    );
  }

  Widget _buildListTile({
    required String title,
    String? subtitle,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
