![Loading Gifs Cover](packages/Loading%20GIFs%20Cover.gif)
# [Loading GIFs](https://gallery.imfast.io/flutterwebsites/loadinggifs/)
[![GitHub release](https://img.shields.io/github/release/Codelessly/FlutterLoadingGIFs.svg?style=flat-square)](https://github.com/Codelessly/FlutterLoadingGIFs/releases) [![GitHub Release Date](https://img.shields.io/github/release-date/Codelessly/FlutterLoadingGIFs.svg?style=flat-square)](https://github.com/Codelessly/FlutterLoadingGIFs/releases) [![GitHub issues](https://img.shields.io/github/issues/Codelessly/FlutterLoadingGIFs.svg?style=flat-square)](https://github.com/Codelessly/FlutterLoadingGIFs/issues) [![GitHub top language](https://img.shields.io/github/languages/top/Codelessly/FlutterLoadingGIFs.svg?style=flat-square)](https://github.com/Codelessly/FlutterLoadingGIFs) [![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/Codelessly/FlutterLoadingGIFs.svg?style=flat-square)](https://github.com/Codelessly/FlutterLoadingGIFs) [![Libraries.io for GitHub](https://img.shields.io/librariesio/github/Codelessly/FlutterLoadingGIFs.svg?style=flat-square)](https://libraries.io/github/Codelessly/FlutterLoadingGIFs) [![License](https://img.shields.io/badge/License-BSD%200--Clause-orange.svg)](https://opensource.org/licenses/0BSD)

<img src="packages/cupertino_activity_indicator_square_large.gif" width="128">

> ### High quality Android and iOS loading spinners.

[View Demo](https://gallery.imfast.io/flutterwebsites/loadinggifs/)

Loading GIFs is a collection of high fidelity loading animations in GIF format. Included are Android "Material Design" and iOS "Cupertino" default loading indicators.

## Usage

[![Pub release](https://img.shields.io/pub/v/loading_gifs.svg?style=flat-square)](https://pub.dev/packages/loading_gifs)



Import this library into your project:

```yaml
loading_gifs: ^latest_version
```

Use `cupertinoActivityIndicator` or `circularProgressIndicator` where ever a loading GIF is needed.
```dart
FadeInImage.assetNetwork(placeholder: cupertinoActivityIndicator, image: "image.png");
```
That's it!

## Usage Tips

![Loading GIFs Sizes](packages/Loading%20GIFs%20Sizes.gif)

The `loading_gifs` library is size optimized and only includes the base asset. Control the size of the loading spinners with `scale` and `placeholderScale`.

```dart
FadeInImage.assetNetwork(placeholder: cupertinoActivityIndicator, image: "image.png", placeholderScale: 5);

Image.asset(circularProgressIndicator, scale: 10);
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
|[Large (16KB)](packages/cupertino_activity_indicator_large.gif)|[Medium (16KB)](packages/cupertino_activity_indicator_medium.gif)|[Small (17KB)](packages/cupertino_activity_indicator_small.gif)|

### Android (Material) Loading Indicators

|![Material Loading Indicator Full](packages/circular_progress_indicator.gif)|![Material Loading Indicator Optimized](packages/circular_progress_indicator_selective.gif)| 
|--|--|
|[Full (1.13MB)](packages/circular_progress_indicator.gif)|[Optimized (263KB)](packages/circular_progress_indicator_selective.gif)|

|![Material Loading Indicator Square Large](packages/circular_progress_indicator_square_large.gif)|![Material Loading Indicator Square Medium](packages/circular_progress_indicator_square_medium.gif)|![Material Loading Indicator Square Small](packages/circular_progress_indicator_square_small.gif)| 
|--|--|--|
|[Large Square (225KB)](packages/circular_progress_indicator_square_large.gif)|[Medium Square (148KB)](packages/circular_progress_indicator_square_medium.gif)|[Small Square (100KB)](packages/circular_progress_indicator_square_small.gif)|

|![Material Loading Indicator Large](packages/circular_progress_indicator_large.gif)|![Material Loading Indicator Medium](packages/circular_progress_indicator_medium.gif)|![Material Loading Indicator Small](packages/circular_progress_indicator_small.gif)| 
|--|--|--|
|[Large (129KB)](packages/circular_progress_indicator_large.gif)|[Medium (161KB)](packages/circular_progress_indicator_medium.gif)|[Small (211KB)](packages/circular_progress_indicator_small.gif)|

## About

Here at Codelessly, we're working on #NoCode and code generation automation tools to increase productivity. If you are interested in a website builder powered by computer vision or flow-based automation, drop us a line below 😎

Loading GIFs is licensed under Zero-Clause BSD and released as Emailware. If you like this project or it helped you, please subscribe to updates. Although it is not required, you might miss the goodies we share!

<a href="https://codelessly.com" target="_blank"><img src="packages/Email%20Newsletter%20Signup.png"></a>

## Contributors ❤️

**Design:** 
* [Ray Li](https://github.com/searchy2)

**Development:** 
* [Ray Li](https://github.com/searchy2)

**Sponsor:** [Codelessly - No Code Automation Tools](https://codelessly.com)

<a href="mailto:ray@codelessly.com">
  <img alt="Codelessly Email"
       src="https://lh3.googleusercontent.com/yN_m90WN_HSCohXdgC2k91uSTk9dnYfoxTYwG_mv_l5_05dV2CzkQ1B6rEqH4uqdgjA=w96" />
</a>
<a href="https://codelessly.com">
  <img alt="Codelessly Website"
       src="https://lh3.googleusercontent.com/YmMGcgeO7Km9-J9vFRByov5sb7OUKetnKs8pTi0JZMDj3GVJ61GMTcTlHB7u9uHDHag=w96" />
</a>
<a href="https://twitter.com/codelessly1">
  <img alt="Codelessly Twitter"
       src="https://lh3.ggpht.com/lSLM0xhCA1RZOwaQcjhlwmsvaIQYaP3c5qbDKCgLALhydrgExnaSKZdGa8S3YtRuVA=w96" />
</a>
<a href="https://github.com/Codelessly">
  <img alt="Codelessly GitHub"
       src="https://lh3.googleusercontent.com/L15QqmKK7Vl-Ag1ZxaBqNQlXVEw58JT2BDb-ef5t2eboDh0pPSLjDgi3-aQ3Opdhhyk=w96" />
</a>
<br></br>
<a href="https://github.com/flutter/flutter">
  <img alt="Flutter"
       src="packages/Flutter%20Logo%20Banner.png" />
</a>


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