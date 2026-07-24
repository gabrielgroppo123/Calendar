//
//  ContentView.swift
//  Calendar
//
//  Created by Gabriel Groppo on 18/07/26.
//

import SwiftUI

struct TelaPrincipal: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 28) {

                HStack {
                    Button {
                    } label: {
                        Image(systemName: "arrow.left.circle")
                            .font(.system(size: 44))
                            .foregroundColor(.primary)
                    }

                    Spacer()

                    Text("2026")
                        .font(.system(size: 42, weight: .bold))
                        .foregroundColor(Color("Atual"))

                    Spacer()

                    Button {
                    } label: {
                        Image(systemName: "arrow.right.circle")
                            .font(.system(size: 44))
                            .foregroundColor(.primary)
                    }
                }
                .padding(.horizontal, 80)

                HStack {
                    Image("Janeiro")
                    Spacer()
                    Image("Fevereiro")
                }
                .padding(.horizontal, 45)

                HStack {
                    Image("Marco")
                    Spacer()
                    Image("Abril")
                }
                .padding(.horizontal, 45)

                HStack {
                    Image("Maio")
                    Spacer()
                    Image("Junho")
                }
                .padding(.horizontal, 45)

                HStack {

                    NavigationLink(destination: TelaDosDias()) {
                        Image("Julho")
                    }
                    .buttonStyle(.plain)

                    Spacer()

                    Image("Agosto")
                }
                .padding(.horizontal, 45)

                HStack {
                    Image("Setembro")
                    Spacer()
                    Image("Outubro")
                }
                .padding(.horizontal, 45)

                HStack {
                    Image("Novembro")
                    Spacer()
                    Image("Dezembro")
                }
                .padding(.horizontal, 45)

                Spacer()
            }
            .padding(.top, 16)
        }
    }
}

#Preview {
    TelaPrincipal()
}
