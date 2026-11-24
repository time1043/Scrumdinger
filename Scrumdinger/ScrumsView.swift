//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by oswin902 on 2026/11/24.
//

import SwiftUI
import ThemeKit

struct ScrumsView: View {
    let scrums: [DailyScrum]

    var body: some View {
        List(scrums, id: \.title) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}
