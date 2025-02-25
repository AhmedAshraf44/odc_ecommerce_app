import 'package:flutter/material.dart';
import 'package:odc_ecommerce/feature/profile/presentation/view/widget/edit_profile_view.dart';
import 'package:odc_ecommerce/feature/profile/presentation/view/widget/payment_method.dart';
import 'package:odc_ecommerce/feature/profile/presentation/view/widget/privacy_policy.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProfileView(),
                  ),
                );
              },
              icon: Icon(Icons.edit_square),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileHeader(),
            const SectionTitle(title: "Account Settings"),
            SettingsTile(
              icon: Icons.location_on,
              title: "Address",
              onTap: () {},
            ),
            SettingsTile(
              icon: Icons.payment,
              title: "Payment Method",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentMethod()));
              },
            ),
            SettingsTile(
              icon: Icons.notifications,
              title: "Notification",
              // trailing: Switch(
              //   value: true,
              //   onChanged: (bool value) {},
              // ),
              onTap: () {},
            ),
            SettingsTile(
              icon: Icons.security,
              title: "Account Security",
              onTap: () {},
            ),
            const SectionTitle(title: "General"),
            SettingsTile(
              icon: Icons.person_add,
              title: "Invite Friends",
              onTap: () {},
            ),
            SettingsTile(
              icon: Icons.privacy_tip,
              title: "Privacy Policy",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PrivacyPolicy()));
              },
            ),
            SettingsTile(
              icon: Icons.help,
              title: "Help Center",
              onTap: () {},
            ),
            const LogoutButton(),
          ],
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      padding: const EdgeInsets.symmetric(vertical: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 252, 254, 255),
            const Color.fromARGB(255, 220, 233, 240)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg"),
          ),
          const SizedBox(height: 10),
          const Text(
            "Bryan Adam",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "bryan.adam87@gmail.com",
            style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
          ),
        ],
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget? trailing;
  final VoidCallback onTap;

  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: Colors.blue),
          title: Text(title),
          trailing: trailing ??
              const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
          onTap: onTap,
        ),
        Divider(
          indent: 20,
          endIndent: 20,
          thickness: 0.5,
        ),
      ],
    );
  }
}

// Section Title
class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
      ),
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.logout, color: Colors.red),
      title: const Text("Logout", style: TextStyle(color: Colors.red)),
      onTap: () {},
    );
  }
}
