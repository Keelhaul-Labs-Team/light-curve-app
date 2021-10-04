import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

extension ColorUtils on Color {
  Color mix(Color another, double amount) {
    return Color.lerp(this, another, amount)!;
  }
}

class AvatarCacheImage extends StatelessWidget {
  final double radius;
  final String? urlPath;
  final String? placeholderPath;
  final String? tagHero;
  final bool bgColorInverted;

  const AvatarCacheImage({
    Key? key,
    required this.radius,
    this.urlPath,
    this.placeholderPath,
    this.tagHero,
    this.bgColorInverted = false,
  }) : super(key: key);

  bool get withAnnotationHero => tagHero != null;

  @override
  Widget build(BuildContext context) {
//    final colorOff = getColor(color: DinamoColor.fontColorTittle);
    if (urlPath == null) {
      return Icon(Icons.account_circle,
          size: (radius + 1) * 2, color: Theme.of(context).primaryColor.withOpacity(0.85));
    }
    if (urlPath!.isEmpty) return _getContainerCircular(child: _placeholderShimmer);
    if (!withAnnotationHero) return _getContainerCircular(child: _cachedNetworkImage);
    return Hero(tag: tagHero!, child: _getContainerCircular(child: _cachedNetworkImage));
  }

  Widget get _cachedNetworkImage => CachedNetworkImage(
        // placeholderFadeInDuration: const Duration(milliseconds: 100),
        fadeInDuration:
            bgColorInverted ? const Duration(milliseconds: 050) : const Duration(milliseconds: 100),
        fadeOutDuration:
            bgColorInverted ? const Duration(milliseconds: 150) : const Duration(milliseconds: 250),
        imageUrl: urlPath!,
        //   cacheKey: tagHero,
        fit: BoxFit.cover,
        placeholder: (context, url) => placeholderPath == null
            ? _placeholderShimmer
            : CachedNetworkImage(
                //   cacheKey: placeholderPath,
                imageUrl: placeholderPath!,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => _placeholderShimmer),
        errorWidget: (context, url, error) => Image.network(
          urlPath!,
          errorBuilder: (context, error, stackTrace) => _placeholderShimmer,
        ),
      );

  Widget _getContainerCircular({Widget? child}) {
    return Container(
      padding: EdgeInsets.all(bgColorInverted ? 1.4 : 0.4),
      decoration: BoxDecoration(
        //color: getColor(color: DinamoColor.primaryLight),
        shape: BoxShape.circle,
        border: Border.all(
          width: bgColorInverted ? 0.1 : 0.05,
          color: _primaryColor,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius * 2),
        child: Container(
          height: radius * 2,
          width: radius * 2,
          color: bgColorInverted ? null : _baseColor,
          child: child,
        ),
      ),
    );
  }

/*   Widget get _circularProgressIndicator => Container(
        margin: EdgeInsets.all(radius * 0.5),
        child: Center(
          child: CircularProgressIndicator(
            strokeWidth: 2.8,
            backgroundColor: bgColorInverted ? null : getColor(color: DinamoColor.greyBackground),
            valueColor: AlwaysStoppedAnimation<Color>(
              getColor(color: bgColorInverted ? DinamoColor.primaryLight : DinamoColor.primary),
            ),
          ),
        ),
      ); */
  static final _baseColor =
      const Color(0xffE3F2FD).mix(const Color(0xffFAFAFA), .4).mix(const Color(0xffE9EBEE), .2);

  static const _durationShimer = Duration(milliseconds: 1200);

  Widget get _placeholderShimmer => Shimmer.fromColors(
        period: _durationShimer,
        highlightColor: Colors.white.mix(_primaryColor, .03),
        baseColor: _baseColor,
        child: Container(color: const Color(0xff51C4D9).withOpacity(1)),
      );

  static const _primaryColor = Color(0xff4F7BE3);
}
