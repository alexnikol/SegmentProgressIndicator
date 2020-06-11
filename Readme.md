# MULTI-SEGMENT INDICATOR

## Installation:
1. Copy ANSegmentIndicator.swift to your project
2. Code Example
```swift
var settings = ANSegmentIndicatorSettings()
settings.defaultSegmentColor = UIColor.gray
settings.segmentBorderType = .round
settings.segmentsCount = 6
settings.segmentWidth = 20
settings.segmentColor = UIColor.systemPink
let segment = ANSegmentIndicator(frame: CGRect(x: 300, y: 300, width: 200.0, height: 200.0))
segment.settings = settings
indicators.append(segment)
self.view.addSubview(segment)
```

![EXAMPLE](http://alexalmostengineer.co.ua/wp-content/uploads/2020/06/Screen-Recording-2020-06-11-at-1.gif)
