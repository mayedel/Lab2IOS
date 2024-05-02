//
//  Observable.swift
//  Lab2
//
//  Created by María Espejo on 2/5/24.
//

import Foundation

protocol PolygonObservable: AnyObject {
    func addObserver(_ observer: PolygonObserver)
    func removeObserver(_ observer: PolygonObserver)
    func notifyObserver()
}
