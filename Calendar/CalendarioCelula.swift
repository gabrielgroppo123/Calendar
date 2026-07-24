//
//  CalendarioCelula.swift
//  Calendar
//
//  Created by Guilherme Alves de Souza on 21/07/26.
//

import SwiftUI

struct CalendarioCelula: View {

    let dia: String

    var body: some View {

        if dia.isEmpty {

            ZStack {
                Rectangle()
                    .stroke(Color.gray.opacity(0.18), lineWidth: 0.5)
                    .frame(height: 82)
            }

        } else {

            NavigationLink(destination: NovoLembrete()) {

                ZStack {

                    Rectangle()
                        .stroke(Color.gray.opacity(0.18), lineWidth: 0.5)
                        .frame(height: 82)

                    if dia == "15" {

                        Circle()
                            .fill(Color("Atual"))
                            .frame(width: 42, height: 42)

                        Text(dia)
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(.primary)

                    } else {

                        Text(dia)
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(textColor(for: dia))

                    }
                }
            }
            
            .tint(.primary)
            .buttonStyle(.plain)
        }
    }

    private func textColor(for dia: String) -> Color {

        switch dia {

        case "":
            return .clear

        case "20", "24", "31":
            return Color("Lembrete1")

        case "5", "12", "19", "26":
            return .gray

        default:
            return .primary
        }
    }
}

#Preview {

    let dias = [
        "", "", "", "1","2","3","4",
        "5","6","7","8","9","10","11",
        "12","13","14","15","16","17","18",
        "19","20","21","22","23","24","25",
        "26","27","28","29","30","31",""
    ]

    NavigationStack {

        ZStack {

            Color.black
                .ignoresSafeArea()

            LazyVGrid(
                columns: Array(repeating: GridItem(.flexible()), count: 7)
            ) {

                ForEach(dias.indices, id: \.self) { index in
                    CalendarioCelula(dia: dias[index])
                }

            }
            .padding()
        }
    }
}

