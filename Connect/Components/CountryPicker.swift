//
//  CountryPicker.swift
//  Connect
//
//  Created by саргашкаева on 3.06.2023.
//

import SwiftUI

func countryFlag(_ countryCode: String) -> String {
  String(String.UnicodeScalarView(countryCode.unicodeScalars.compactMap {
    UnicodeScalar(127397 + $0.value)
  }))
}

struct CountryListTest: View {
  
  
  var body: some View {
    List(NSLocale.isoCountryCodes, id: \.self) { countryCode in
      HStack {
        Text(countryFlag(countryCode))
        Text(Locale.current.localizedString(forRegionCode: countryCode) ?? "")
        Spacer()
        Text(countryCode)
      }
    }
  }
}

struct CountryListTest_Previews: PreviewProvider {
    static var previews: some View {
        CountryListTest()
            .previewLayout(.sizeThatFits)
    }
}
