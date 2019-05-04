# SwiftFrameGadget

[![CI Status](https://img.shields.io/travis/linzhiyi/SwiftFrameGadget.svg?style=flat)](https://travis-ci.org/linzhiyi/SwiftFrameGadget)
[![Version](https://img.shields.io/cocoapods/v/SwiftFrameGadget.svg?style=flat)](https://cocoapods.org/pods/SwiftFrameGadget)
[![License](https://img.shields.io/cocoapods/l/SwiftFrameGadget.svg?style=flat)](https://cocoapods.org/pods/SwiftFrameGadget)
[![Platform](https://img.shields.io/cocoapods/p/SwiftFrameGadget.svg?style=flat)](https://cocoapods.org/pods/SwiftFrameGadget)

SwiftFrameGadget is a very small view extension. It provides you a more elegant way to use frame layout.

## Feature

 `SwiftFrameGadget` provide some anchor to make the layout easier.

1. `top`
2. `bottom`
3. `left`
4. `right`
5. `centerX`
6. `centerY`
7. `width`
8. `height`

## Usage

Without `SwiftFrameGadget`, If you want to set a view next to another view, you may write code like this:

```swift
// viewA, viewB
let x = viewA.frame.origin.x + viewA.frame.width + 5
viewB.frame = CGRect(x: x, y: viewA.frame.origin.y, width: viewB.frame.width, viewB.frame.height)
```

With `SwiftFrameGadget`, you can write more grace code like this:

```swift
// viewA, viewB
viewB.left = viewA.right + 5
viewB.top = viewA.top
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

None

## Installation

SwiftFrameGadget is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftFrameGadget'
```

## Author

limchihi, limchihi@foxmail.com

## License

SwiftFrameGadget is available under the MIT license. See the LICENSE file for more info.
