# Loading GIFs Example

Use `cupertinoActivityIndicator` or `circularProgressIndicator` where ever a loading GIF is needed.

```dart
FadeInImage.assetNetwork(placeholder: cupertinoActivityIndicator, image: "image.png", placeholderScale: 5);

Image.asset(circularProgressIndicator, scale: 10);
```