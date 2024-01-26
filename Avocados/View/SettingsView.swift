//
//  SettingsView.swift
//  Avocados
//
//  Created by Jonathan Ricky Sandjaja on 19/01/24.
//

import SwiftUI

struct SettingsView: View {
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            //MARK: - HEADER
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                .foregroundStyle(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form {
                //MARK: - SECTION #1
                Section {
                    Toggle("Enable Notification", isOn: $enableNotification)
                    
                    Toggle("Background Refresh", isOn: $backgroundRefresh)
                } header: {
                    Text("General Settings")
                }

                //MARK: - SECTION #2
                Section {
                    if enableNotification {
                        HStack {
                            Text("Product")
                                .foregroundStyle(.gray)
                            
                            Spacer()
                            
                            Text("Avocado Recipes")
                        }
                        
                        HStack {
                            Text("Compatibility")
                                .foregroundStyle(.gray)
                            
                            Spacer()
                            
                            Text("iPhone & iPad")
                        }
                        
                        HStack {
                            Text("Developer")
                                .foregroundStyle(.gray)
                            
                            Spacer()
                            
                            Text("Jonathan Ricky Sandjaja")
                        }
                        
                        HStack {
                            Text("Designer")
                                .foregroundStyle(.gray)
                            
                            Spacer()
                            
                            Text("Robert Petras")
                        }
                        
                        HStack {
                            Text("Website")
                                .foregroundStyle(.gray)
                            
                            Spacer()
                            
                            Text("swiftuimasterclass.com")
                        }
                        
                        HStack {
                            Text("Version")
                                .foregroundStyle(.gray)
                            
                            Spacer()
                            
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal Message")
                                .foregroundStyle(.gray)
                            
                            Spacer()
                            
                            Text("Happy coding!")
                        }
                    }
                } header: {
                    Text("Application")
                }

            }
        }
        .frame(maxWidth: 640)
    }
}

#Preview {
    SettingsView()
}
