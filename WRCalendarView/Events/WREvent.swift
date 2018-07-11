//
//  WREvent.swift
//  Pods
//
//  Created by wayfinder on 2017. 4. 29..
//
//

import UIKit
import DateToolsSwift

open class WREvent: TimePeriod {
    open var title: String = ""
    open var identifier: String = ""
    
    open class func make(date:Date, chunk: TimeChunk, title: String, identifier: String) -> WREvent {
        let event = WREvent(beginning: date, chunk: chunk)
        event.title = title
        event.identifier = identifier
        return event
    }
}
