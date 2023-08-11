import 'package:flutter/material.dart';
import 'package:themexpert_video/tokens/app_colors.dart';
import 'package:themexpert_video/tokens/app_typography.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          title: const Text(
            'ThemeXpert Example',
            style: TextStyle(color: AppColors.blue),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: SizedBox(
              height: 30,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'POWERED BY REVELO',
                  style: AppTypography.baseText.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blue,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        left: 24,
                        right: 24,
                        top: 12,
                        bottom: 12,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'This is the app ',
                              style: AppTypography.baseText.copyWith(
                                fontSize: 38,
                                fontWeight: FontWeight.w600,
                                color: AppColors.blue,
                              ),
                            ),
                            TextSpan(
                              text: 'main theme',
                              style: AppTypography.baseText.copyWith(
                                fontSize: 38,
                                fontWeight: FontWeight.w900,
                                color: AppColors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 24,
                        right: 24,
                        top: 12,
                        bottom: 12,
                      ),
                      child: Text(
                        'All the tokens and cool things that your '
                        'app needs are configured here. Also, I need '
                        'to write a few more words so the description '
                        'feels a little less lorem-ipsum-ish',
                        style: AppTypography.baseText.copyWith(
                          color: AppColors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: AppColors.whiteLight,
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.darkBlue01,
                          blurRadius: 1,
                          offset: Offset(0, 1),
                        )
                      ],
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Switch(
                          activeColor: AppColors.blue,
                          value: isDarkMode,
                          onChanged: (value) {
                            setState(() {
                              isDarkMode = value;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Toggle Dark Mode',
                          style: AppTypography.baseText.copyWith(
                            color: AppColors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
