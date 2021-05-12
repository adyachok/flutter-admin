import 'package:admin/constants.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';

import 'components/chart.dart';
import 'components/header.dart';
import 'components/my_files_header.dart';
import 'components/storage_info_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyFilesHeader(),
                if (!Responsive.isMobile(context))
                  SizedBox(
                    width: defaultPadding,
                  ),
                if (!Responsive.isMobile(context))
                  StorageInfo(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class StorageInfo extends StatelessWidget {
  const StorageInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius:
              const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Storage Details',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: defaultPadding,
            ),
            Chart(),
            StorageInfoCard(
              svgSrc: 'assets/icons/Documents.svg',
              title: 'Documents Files',
              amountOfFiles: '1.3GB',
              numOfFiles: 1328,
            ),
            StorageInfoCard(
              svgSrc: 'assets/icons/media.svg',
              title: 'Media Files',
              amountOfFiles: '15.2GB',
              numOfFiles: 1328,
            ),
            StorageInfoCard(
              svgSrc: 'assets/icons/unknown.svg',
              title: 'Unknown Files',
              amountOfFiles: '1.3GB',
              numOfFiles: 1328,
            ),
            StorageInfoCard(
              svgSrc: 'assets/icons/folder.svg',
              title: 'Other Files',
              amountOfFiles: '1.3GB',
              numOfFiles: 1328,
            ),
          ],
        ),
      ),
    );
  }
}
