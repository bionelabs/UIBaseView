# UIBaseView
UIBaseView help me easy build fast a project for my client. This lirbary is updating...

## Installation
### CocoaPods
CocoaPods is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Alamofire into your Xcode project using CocoaPods, specify it in your Podfile:

```swift
pod 'UIHoneycombView'
```

## Use

```swift
import UIBaseView
```

### View Layout 

```swift
view.visual.anchor(...)
view.visual.size(...)
view.visual.format(...)
view.visual.center(...)
view.visual.equal(...)
view.visual.stack(...)
...
```
### Button
```swift
let button = UIButton()
button.touch(.touchUpInside) {
    // todo
}
```

### BaseView
```swift
// BaseView
// BaseCollectionViewCell
// BaseTableViewCell

view.addSubviews(...)

protocol BaseViewProtocol {
    
    func setupViews()
    
    func setupComponents()
    
    func setupConstraints()
    
}

```

### View animation
```swift

// Animation
view.shake()
view.pop()
view.fadeTo(...)
view.fadeIn()
view.fadeOut()

// Rotate
view.startRotating()
view.stopRotating()

```

### 

## Contact
- Email: caophuocthanh@gmail.com
- Site: https://onebuffer.com
- Linkedin: https://www.linkedin.com/in/caophuocthanh/


