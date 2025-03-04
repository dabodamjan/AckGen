//
//  CustomNavigationTitle.swift
//  AckGen
//
//  Created by Damjan Dabo on 25.10.22.
//

import SwiftUI

@available(iOS 14, *)
struct NavigationTitleViewModifier: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        content.navigationTitle(text)
    }
}

struct NavigationBarTitleViewModifier: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        content.navigationBarTitle(text)
    }
}

extension View {
    @ViewBuilder
    func customNavigationTitle(_ text: String) -> some View {
        if #available(iOS 14, *) {
            self.modifier(NavigationTitleViewModifier(text: text))
        }
        else {
            self.modifier(NavigationBarTitleViewModifier(text: text))
        }
    }
}
