//
//  protocols.swift
//  media-editor
//
//  Created by Ibrahim Abdul Aziz on 08/03/2024.
//

import SwiftUI

protocol ButtonSizeProtocol {
    var height: CGFloat { get }
    var cornerRadiuse: CGFloat { get }
    var font: Font { get }
}

protocol ButtonThemeProtocol {
    var backgroundColor: Color { get }
    var fontColor: Color { get }
    var borderColor: Color { get }
    var borderWidth: CGFloat { get }
}

protocol ButtonStateProtocol {
    
}
