//
//  LinhaLembrete.swift
//  Calendar
//
//  Created by Guilherme Alves de Souza on 21/07/26.
//

import SwiftUI

struct LinhaLembrete: View {

    let data: String
    let titulo: String
    var action: () -> Void = {}

    var body: some View {

        Button(action: action) {
            HStack(spacing: 16) {

                Image(systemName: "calendar.circle.fill")
                    .font(.title2)
                    .foregroundStyle(.orange)

                VStack(alignment: .leading, spacing: 4) {

                    Text(data)
                        .font(.caption)
                        .foregroundStyle(.secondary)

                    Text(titulo)
                        .font(.headline)
                        .foregroundStyle(.primary)
                }

                Spacer()

                Text("Detalhes")

                Image(systemName: "chevron.right")
                    .foregroundStyle(.secondary)
            }
            .padding()
            .background(Color(.secondarySystemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 16))
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    ZStack {
        Color(.systemBackground)
            .ignoresSafeArea()

        VStack(spacing: 16) {

            LinhaLembrete(
                data: "20/07",
                titulo: "Aniversário da mãe"
            )

            LinhaLembrete(
                data: "24/07",
                titulo: "Entrega do projeto"
            )

            LinhaLembrete(
                data: "31/07",
                titulo: "Consulta médica"
            )
        }
        .padding()
    }
}
