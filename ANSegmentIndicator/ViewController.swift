//
//  ViewController.swift
//  ANSegmentIndicator
//
//  Created by Alexander Nikolaychuk on 09.06.2020.
//  Copyright © 2020 AlexAlmostEngineer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var indicators: [ANSegmentIndicator] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
            self.setupSegment1()
            self.setupSegment2()
            self.setupSegment3()
            self.setupSegment4()
            self.setupSegment5()
            self.setupSegment6()
            var progressInPercents = 1.0
            Timer.scheduledTimer(withTimeInterval: 0.7, repeats: true) { timer in
                progressInPercents = progressInPercents + 7.0
                self.indicators.forEach {
                    $0.updateProgress(percent: progressInPercents)
                }
            }
        }
    }

    func setupSegment1() {
        let segment = ANSegmentIndicator(frame: CGRect(x: 40, y: 100, width: 120.0, height: 120.0))
        indicators.append(segment)
        self.view.addSubview(segment)
    }
     
    func setupSegment6() {
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
    }
    
    func setupSegment2() {
        var settings = ANSegmentIndicatorSettings()
        settings.defaultSegmentColor = UIColor.yellow
        settings.segmentBorderType = .butt
        settings.segmentsCount = 10
        settings.segmentWidth = 1
        settings.segmentColor = UIColor.gray
        let segment = ANSegmentIndicator(frame: CGRect(x: 200, y: 100, width: 120.0, height: 120.0))
        segment.settings = settings
        indicators.append(segment)
        self.view.addSubview(segment)
    }
    
    func setupSegment3() {
        var settings = ANSegmentIndicatorSettings()
        settings.defaultSegmentColor = UIColor.orange
        settings.segmentBorderType = .square
        settings.segmentsCount = 3
        settings.segmentWidth = 10
        settings.segmentColor = UIColor.green
        let segment = ANSegmentIndicator(frame: CGRect(x: 360, y: 100, width: 120.0, height: 120.0))
        segment.settings = settings
        indicators.append(segment)
        self.view.addSubview(segment)
    }
    
    func setupSegment4() {
        var settings = ANSegmentIndicatorSettings()
        settings.defaultSegmentColor = UIColor.green
        settings.segmentBorderType = .round
        settings.segmentsCount = 2
        settings.segmentWidth = 20
        settings.segmentColor = UIColor.red
        let segment = ANSegmentIndicator(frame: CGRect(x: 520, y: 100, width: 120.0, height: 120.0))
        segment.settings = settings
        indicators.append(segment)
        self.view.addSubview(segment)
    }
    
    func setupSegment5() {
        var settings = ANSegmentIndicatorSettings()
        settings.isStaticSegmentsVisible = false
        settings.segmentBorderType = .butt
        settings.segmentsCount = 20
        settings.segmentWidth = 2
        settings.segmentColor = UIColor.blue
        let segment = ANSegmentIndicator(frame: CGRect(x: 680, y: 100, width: 120.0, height: 120.0))
        segment.settings = settings
        indicators.append(segment)
        self.view.addSubview(segment)
    }

}
