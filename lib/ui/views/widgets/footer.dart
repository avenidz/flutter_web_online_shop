import 'package:flutter/material.dart';
import 'package:flutter_web_online_shop/ui/common/app_colors.dart';
import 'package:flutter_web_online_shop/ui/resources/generated/locale_keys.g.dart';
import 'package:flutter_web_online_shop/ui/resources/png/png_images.dart';
import 'package:flutter_web_online_shop/ui/views/widgets/app_text.dart';
import 'package:flutter_web_online_shop/utils/view_identifier.dart';
import 'package:easy_localization/easy_localization.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (ViewIdentifier.isMobileView(constraints.maxWidth)) {
        return _mobileView();
      } else {
        return _desktopView();
      }
    });
  }

  Widget _mobileView() {
    return Container(
      padding: const EdgeInsets.only(top: 37.0, left: 46.0),
      width: double.infinity,
      color: ColorRes.dirtyWhite,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(PngImages.footerLogo),
          const SizedBox(
            height: 43.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.send,
                  color: ColorRes.labelColorDirtyWhite,
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: AppText(
                    label: LocaleKeys.footer_message.tr(),
                    textAlign: TextAlign.left,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: ColorRes.labelColorDirtyWhite,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 22.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.phone_android,
                  color: ColorRes.labelColorDirtyWhite,
                ),
                const SizedBox(
                  width: 16.0,
                ),
                AppText(
                  label: LocaleKeys.footer_phone.tr(),
                  textAlign: TextAlign.left,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: ColorRes.labelColorDirtyWhite,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 35.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.mail_outline,
                  color: ColorRes.labelColorDirtyWhite,
                ),
                const SizedBox(
                  width: 16.0,
                ),
                AppText(
                  label: LocaleKeys.footer_email.tr(),
                  textAlign: TextAlign.left,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: ColorRes.labelColorDirtyWhite,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 34.0,
          ),
          Image.asset(
            PngImages.mediaPlatform,
            width: 214.0,
            height: 64.0,
          ),
          const SizedBox(
            height: 47.0,
          ),
          AppText(
            label: LocaleKeys.footer_collection.tr().toUpperCase(),
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
          const SizedBox(
            height: 13.0,
          ),
          AppText(
            label: LocaleKeys.footer_information.tr().toUpperCase(),
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
          const SizedBox(
            height: 13.0,
          ),
          AppText(
            label: LocaleKeys.footer_more.tr().toUpperCase(),
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
          const SizedBox(height: 121.0),
        ],
      ),
    );
  }

  Widget _desktopView() {
    return Container(
      padding: const EdgeInsets.only(top: 37.0),
      width: double.infinity,
      color: ColorRes.dirtyWhite,
      alignment: Alignment.center,
      child: SizedBox(
        width: 1440.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(PngImages.footerLogo),
                const SizedBox(
                  height: 43.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.send,
                        color: ColorRes.labelColorDirtyWhite,
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Expanded(
                        child: AppText(
                          label: LocaleKeys.footer_message.tr(),
                          textAlign: TextAlign.left,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          color: ColorRes.labelColorDirtyWhite,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 22.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.phone_android,
                        color: ColorRes.labelColorDirtyWhite,
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      AppText(
                        label: LocaleKeys.footer_phone.tr(),
                        textAlign: TextAlign.left,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        color: ColorRes.labelColorDirtyWhite,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.mail_outline,
                        color: ColorRes.labelColorDirtyWhite,
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      AppText(
                        label: LocaleKeys.footer_email.tr(),
                        textAlign: TextAlign.left,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        color: ColorRes.labelColorDirtyWhite,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 34.0,
                ),
                Image.asset(
                  PngImages.mediaPlatform,
                  width: 214.0,
                  height: 64.0,
                ),
                const SizedBox(
                  height: 47.0,
                ),
              ],
            )),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              label: LocaleKeys.footer_collection.tr().toUpperCase(),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              label: LocaleKeys.footer_information.tr().toUpperCase(),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              label: LocaleKeys.footer_more.tr().toUpperCase(),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                            const SizedBox(height: 18.0),
                            AppText(
                              label: LocaleKeys.label_lorem_ipsum.tr(),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ColorRes.labelColorDirtyWhite,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
