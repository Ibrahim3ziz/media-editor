//
//  ButtonSizes.swift
//  media-editor
//
//  Created by Ibrahim Abdul Aziz on 18/03/2024.
//

import SwiftUI

class ButtonBigSize: ButtonSizeProtocol {
    var height: CGFloat = 52
    var cornerRadiuse: CGFloat = 16
    var font: Font = .system(size: 20)
}

class ButtonMediumSize: ButtonSizeProtocol {
    var height: CGFloat = 44
    var cornerRadiuse: CGFloat = 12
    var font: Font = .system(size: 14)
}
