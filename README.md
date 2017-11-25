# ImageSwapper

[![CI Status](http://img.shields.io/travis/tsarikovskiy/ImageSwapper.svg?style=flat)](https://travis-ci.org/tsarikovskiy/ImageSwapper)
[![Version](https://img.shields.io/cocoapods/v/ImageSwapper.svg?style=flat)](http://cocoapods.org/pods/ImageSwapper)
[![License](https://img.shields.io/cocoapods/l/ImageSwapper.svg?style=flat)](http://cocoapods.org/pods/ImageSwapper)
[![Platform](https://img.shields.io/cocoapods/p/ImageSwapper.svg?style=flat)](http://cocoapods.org/pods/ImageSwapper)

## Examples
![](Example/waterDropExample.gif)

Simply call this method on action button, pass the reference to image view that you want to change and new image:
```swift
ImageSwapper.waterDrop(image: imageView, toImage: #imageLiteral(resourceName: "beer.png"))
```

## Installation

ImageSwapper is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ImageSwapper'
```

## Evolution

Stay tuned for new animations.


## Questions or feedback?

Feel free to [open an issue](https://github.com/tsarikovskiy/ImageSwapper/issues/new), or find me [@s_tsarikovskiy on Twitter](https://twitter.com/s_tsarikovskiy).
