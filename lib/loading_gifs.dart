/// Loading indicator GIFs. Material and Cupertino (Android and iOS) loading indicators in assorted sizes. Use as placeholders for loading remote image assets.
library loading_gifs;

/// CupertinoActivityIndicator GIF asset path.
/// ```dart
/// Image.asset(cupertinoActivityIndicator);
/// ```
const String cupertinoActivityIndicator =
    "packages/loading_gifs/assets/images/cupertino_activity_indicator.gif";

/// Small CupertinoActivityIndicator GIF asset path.
/// Use this asset instead of [cupertinoActivityIndicator]
/// for dynamic images whose dimensions are
/// unknown ahead of time. Use where the
/// loading image resizes itself into the layout for
/// correct size calculation.
/// ```dart
/// Image.asset(cupertinoActivityIndicatorSmall);
/// ```
const String cupertinoActivityIndicatorSmall =
    "packages/loading_gifs/assets/images/cupertino_activity_indicator_small.gif";

/// CircularProgressIndicator GIF asset path.
/// ```dart
/// Image.asset(circularProgressIndicator);
/// ```
const String circularProgressIndicator =
    "packages/loading_gifs/assets/images/circular_progress_indicator.gif";

/// Small CircularProgressIndicator GIF asset path.
/// Use this asset instead of [circularProgressIndicator]
/// for dynamic images whose dimensions are
/// unknown ahead of time. Use where the
/// loading image resizes itself into the layout for
/// correct size calculation.
/// ```dart
/// Image.asset(circularProgressIndicatorSmall);
/// ```
const String circularProgressIndicatorSmall =
    "packages/loading_gifs/assets/images/circular_progress_indicator_small.gif";

/// Transparent 1x1 pixel empty placeholder.
/// [FadeInNetworkImage] requires a valid placeholder
/// image. Use this empty placeholder to avoid
/// AssetBundle errors.
/// ```dart
/// FadeInImage.assetNetwork(placeholder: placeholderEmpty, image: 'image_path');
///```
const String placeholderEmpty =
    "packages/loading_gifs/assets/images/placeholder_empty.png";
