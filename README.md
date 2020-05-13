[![Loading GIFs Cover](packages/Loading%20GIFs%20Cover.gif)](https://gallery.codelessly.com/flutterwebsites/loadinggifs/?utm_medium=image&utm_campaign=cover)
# [Loading GIFs](https://gallery.codelessly.com/flutterwebsites/loadinggifs/?utm_medium=link&utm_campaign=title)
[![Pub release](https://img.shields.io/pub/v/loading_gifs.svg?style=flat-square)](https://pub.dev/packages/loading_gifs) [![GitHub Release Date](https://img.shields.io/github/release-date/Codelessly/FlutterLoadingGIFs.svg?style=flat-square)](https://github.com/Codelessly/FlutterLoadingGIFs/releases) [![GitHub issues](https://img.shields.io/github/issues/Codelessly/FlutterLoadingGIFs.svg?style=flat-square)](https://github.com/Codelessly/FlutterLoadingGIFs/issues) [![GitHub top language](https://img.shields.io/github/languages/top/Codelessly/FlutterLoadingGIFs.svg?style=flat-square)](https://github.com/Codelessly/FlutterLoadingGIFs) [![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/Codelessly/FlutterLoadingGIFs.svg?style=flat-square)](https://github.com/Codelessly/FlutterLoadingGIFs) [![Libraries.io for GitHub](https://img.shields.io/librariesio/github/Codelessly/FlutterLoadingGIFs.svg?style=flat-square)](https://libraries.io/github/Codelessly/FlutterLoadingGIFs) [![License](https://img.shields.io/badge/License-BSD%200--Clause-orange.svg?style=flat-square)](https://opensource.org/licenses/0BSD)

<img src="https://github.com/Codelessly/FlutterLoadingGIFs/blob/master/packages/cupertino_activity_indicator_square_large.gif?raw=true" width="128">

> ### High quality Android and iOS loading spinners.

[View Demo](https://gallery.codelessly.com/flutterwebsites/loadinggifs/?utm_medium=link&utm_campaign=demo)

Loading GIFs is a collection of high fidelity loading animations in GIF format. Included are Android "Material Design" and iOS "Cupertino" default loading indicators.

## Usage

[![Pub release](https://img.shields.io/pub/v/loading_gifs.svg?style=flat-square)](https://pub.dev/packages/loading_gifs)

Import this library into your project:

```yaml
loading_gifs: ^latest_version
```

Use `cupertinoActivityIndicator` or `circularProgressIndicator` where ever a loading image is needed.
```dart
FadeInImage.assetNetwork(placeholder: cupertinoActivityIndicator, image: "image.png");
```
That's it!

## Usage Tips

[![Loading GIFs Sizes](packages/Loading%20GIFs%20Sizes.gif)](https://gallery.codelessly.com/flutterwebsites/loadinggifs/?utm_medium=image&utm_campaign=preview)

### Size

This library is optimized for size so it only includes the base asset sizes. Change the size of the loading spinners using `scale` and `placeholderScale`.

```dart
FadeInImage.assetNetwork(placeholder: cupertinoActivityIndicator, image: "image.png", placeholderScale: 5);

Image.asset(circularProgressIndicator, scale: 10);
```

### Dynamic Images

When loading images whose dimensions are unknown ahead of time, use `cupertinoActivityIndicatorSmall` instead of `cupertinoActivityIndicator`. `cupertinoActivityIndicatorSmall` is a min height variant of `cupertinoActivityIndicator` which allows Flutter to correctly expand the loaded image into the layout.

The small variant should be used when loading a list of images or compositing an image from multiple images.

```dart
  ListView(
    children: <Widget>[
      FadeInImage.assetNetwork(
          placeholder: cupertinoActivityIndicatorSmall,
          image: "image_1.png"),
      FadeInImage.assetNetwork(
          placeholder: cupertinoActivityIndicatorSmall,
          image: "image_2.png"),
      FadeInImage.assetNetwork(
          placeholder: cupertinoActivityIndicatorSmall,
          image: "image_3.png"),
    ],
  )
```

### Empty Placeholder

`FadeInImage` requires a valid placeholder image to avoid "Asset not found" errors. Use `placeholderEmpty`, a 1x1 pixel transparent PNG, when an empty placeholder is needed.

```dart
FadeInImage.assetNetwork(placeholder: placeholderEmpty, image: "image.png");
```

## Assets

### iOS (Cupertino) Loading Indicators

|![iOS Loading Indicator Full](packages/cupertino_activity_indicator.gif)|![iOS Loading Indicator Optimized](packages/cupertino_activity_indicator_selective.gif)| 
|--|--|
|[Full (159KB)](packages/cupertino_activity_indicator.gif)|[Optimized (78KB)](packages/cupertino_activity_indicator_selective.gif)|

|![iOS Loading Indicator Square Large](packages/cupertino_activity_indicator_square_large.gif)|![iOS Loading Indicator Square Medium](packages/cupertino_activity_indicator_square_medium.gif)|![iOS Loading Indicator Square Small](packages/cupertino_activity_indicator_square_small.gif)| 
|--|--|--|
|[Large Square (36KB)](packages/cupertino_activity_indicator_square_large.gif)|[Medium Square (14KB)](packages/cupertino_activity_indicator_square_medium.gif)|[Small Square (7KB)](packages/cupertino_activity_indicator_square_small.gif)|

|![iOS Loading Indicator Large](packages/cupertino_activity_indicator_large.gif)|![iOS Loading Indicator Medium](packages/cupertino_activity_indicator_medium.gif)|![iOS Loading Indicator Small](packages/cupertino_activity_indicator_small.gif)| 
|--|--|--|
|[Large (16KB)](packages/cupertino_activity_indicator_large.gif)|[Medium (16KB)](packages/cupertino_activity_indicator_medium.gif)|[Small (16KB)](packages/cupertino_activity_indicator_small.gif)|

### Android (Material) Loading Indicators

|![Material Loading Indicator Full](packages/circular_progress_indicator.gif)|![Material Loading Indicator Optimized](packages/circular_progress_indicator_selective.gif)| 
|--|--|
|[Full (1.13MB)](packages/circular_progress_indicator.gif)|[Optimized (263KB)](packages/circular_progress_indicator_selective.gif)|

|![Material Loading Indicator Square Large](packages/circular_progress_indicator_square_large.gif)|![Material Loading Indicator Square Medium](packages/circular_progress_indicator_square_medium.gif)|![Material Loading Indicator Square Small](packages/circular_progress_indicator_square_small.gif)| 
|--|--|--|
|[Large Square (225KB)](packages/circular_progress_indicator_square_large.gif)|[Medium Square (148KB)](packages/circular_progress_indicator_square_medium.gif)|[Small Square (100KB)](packages/circular_progress_indicator_square_small.gif)|

|![Material Loading Indicator Large](packages/circular_progress_indicator_large.gif)|![Material Loading Indicator Medium](packages/circular_progress_indicator_medium.gif)|![Material Loading Indicator Small](packages/circular_progress_indicator_small.gif)| 
|--|--|--|
|[Large (129KB)](packages/circular_progress_indicator_large.gif)|[Medium (149KB)](packages/circular_progress_indicator_medium.gif)|[Small (186KB)](packages/circular_progress_indicator_small.gif)|

## About

Here at Codelessly, we're working on #NoCode and code generation automation tools to increase productivity. If that sounds interesting, you'll want to subscribe to updates below 😎

Loading GIFs is licensed under Zero-Clause BSD and released as Emailware. If you like this project or it helped you, please subscribe to updates. Although it is not required, you might miss the goodies we share!

[![Codelessly Newsletter Signup](https://raw.githubusercontent.com/Codelessly/FlutterLoadingGIFs/master/packages/Email%20Newsletter%20Signup.png)](https://codelessly.com/?utm_medium=banner&utm_campaign=newsletter_subscribe)

## Contributors ❤️

**Design:** 
* [Ray Li](https://github.com/searchy2)

**Development:** 
* [Ray Li](https://github.com/searchy2)

**Sponsor:** [Codelessly - No Code Automation Tools](https://codelessly.com/?utm_medium=link&utm_campaign=direct)

<a href="mailto:ray@codelessly.com">
  <img alt="Codelessly Email"
       src="https://lh3.googleusercontent.com/yN_m90WN_HSCohXdgC2k91uSTk9dnYfoxTYwG_mv_l5_05dV2CzkQ1B6rEqH4uqdgjA=w96" />
</a>
<a href="https://codelessly.com/?utm_medium=icon&utm_campaign=direct">
  <img alt="Codelessly Website"
       src="https://lh3.googleusercontent.com/YmMGcgeO7Km9-J9vFRByov5sb7OUKetnKs8pTi0JZMDj3GVJ61GMTcTlHB7u9uHDHag=w96" />
</a>
<a href="https://twitter.com/BuildCodelessly">
  <img alt="Codelessly Twitter"
       src="https://lh3.ggpht.com/lSLM0xhCA1RZOwaQcjhlwmsvaIQYaP3c5qbDKCgLALhydrgExnaSKZdGa8S3YtRuVA=w96" />
</a>
<a href="https://github.com/Codelessly">
  <img alt="Codelessly GitHub"
       src="https://lh3.googleusercontent.com/L15QqmKK7Vl-Ag1ZxaBqNQlXVEw58JT2BDb-ef5t2eboDh0pPSLjDgi3-aQ3Opdhhyk=w96" />
</a>
<br></br>

[![Flutter Logo Banner](https://raw.githubusercontent.com/Codelessly/FlutterLoadingGIFs/master/packages/Flutter%20Logo%20Banner.png)](https://github.com/flutter/flutter)

## License

    BSD Zero Clause License

    Copyright © 2020 Codelessly

    Permission to use, copy, modify, and/or distribute this software for any
    purpose with or without fee is hereby granted.

    THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
    REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
    AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
    INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
    LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
    OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
    PERFORMANCE OF THIS SOFTWARE.