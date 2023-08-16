import 'package:flutter/material.dart';
import 'package:themexpert/themexpert.dart';
import 'package:themexpert_video/theme/app_theme.dart';
import 'package:themexpert_video/theme/switch_component_theme.dart';

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
    return ThemeXConfiguration(
      darkMode: isDarkMode,
      builder: (context) => ThemeXWrapper(
        theme: AppTheme(context),
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: themeOf(context).surfaceColor,
            appBar: AppBar(
              backgroundColor: themeOf(context).surfaceColor,
              title: Text(
                'ThemeXpert Example',
                style: TextStyle(color: themeOf(context).highlightTextColor),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(30),
                child: SizedBox(
                  height: 30,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'POWERED BY REVELO',
                      style: themeOf(context).txBodySmaller,
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
                                  style: themeOf(context).txTitle,
                                ),
                                TextSpan(
                                  text: 'main theme',
                                  style: themeOf(context).txTitle.copyWith(
                                        fontWeight: FontWeight.w900,
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
                            style: themeOf(context).txBody,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: ThemeXWrapper(
                      theme: SwitchComponentTheme(context),
                      builder: (context) => Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: const EdgeInsets.all(12),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                                ThemeX.ofType<SwitchComponentTheme>(context)
                                    .borderRadius,
                            color: themeOf(context).surfaceColor,
                            boxShadow:
                                ThemeX.ofType<SwitchComponentTheme>(context)
                                    .shadow,
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Switch(
                                activeColor:
                                    themeOf(context).highlightTextColor,
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
                                style: themeOf(context).txBody,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
