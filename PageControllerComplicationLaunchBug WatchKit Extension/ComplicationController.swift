//
//  ComplicationController.swift
//  PageControllerComplicationLaunchBug WatchKit Extension
//
//  Created by Jason Ji on 6/19/19.
//  Copyright © 2019 Jason Ji. All rights reserved.
//

import ClockKit


class ComplicationController: NSObject, CLKComplicationDataSource {
    func getSupportedTimeTravelDirections(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimeTravelDirections) -> Void) {
        handler([])
    }
    
    func getCurrentTimelineEntry(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineEntry?) -> Void) {
        guard complication.family == .modularSmall else { handler(nil); return }
        
        let template = CLKComplicationTemplateModularSmallSimpleImage()
        template.imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "Breastfed-29")!)
        template.imageProvider.tintColor = UIColor.blue
        
        handler(CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template))
    }
    
    func getLocalizableSampleTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void) {
        guard complication.family == .modularSmall else { handler(nil); return }
        
        let template = CLKComplicationTemplateModularSmallSimpleImage()
        template.imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "Breastfed-29")!)
        template.imageProvider.tintColor = UIColor.blue
        
        handler(template)
    }
}
