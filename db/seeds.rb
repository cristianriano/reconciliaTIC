User.create!(name:  "Carlitos33",
             zone: "Sur",
             password:              "password",
             password_confirmation: "password",
             admin:     false,
             history: "Yo me uni a la guerrilla de niño por que...")

User.create!(name:  "cristianriano",
             zone: "None",
             password:              "password",
             password_confirmation: "password",
             admin:     true,
             history: "")

10.times do | n |
      Publication.create!( content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus leo tortor, efficitur eu risus viverra, commodo scelerisque urna. Aliquam sed tincidunt quam. Pellentesque at nisi ipsum. Fusce ac fringilla est. Cras ante orci, viverra vel ultrices eget, fringilla ut nisl. Quisque ornare, lorem in facilisis mattis, tellus neque tincidunt tellus, eu tincidunt libero nisi in est. Vivamus dignissim, turpis sed aliquet porta, ex ligula tempor metus, quis imperdiet diam dolor quis metus. Ut nec porta urna. Ut in mollis metus. Maecenas viverra elit odio, a finibus nunc posuere nec. Vestibulum pellentesque egestas nisi, vitae commodo nunc aliquam in. Sed suscipit malesuada ultrices. Sed fermentum suscipit velit, sit amet convallis nulla maximus et.")
end

3.times do | n |
      Pardon.create!(content: "motivo perdon #{n}", kind: "1")
end

3.times do | n |
      Pardon.create!(content: "motivo perdon #{n}", kind: "2")
end

Question.create!(content: "Pregunta 1", email: "correo@ejemplo.com", zone: "NORTE", year: "1998")
Question.create!(content: "Pregunta 2", email: "correo@ejemplo.com", zone: "SUR", year: "1998")
Question.create!(content: "Pregunta 3", email: "correo@ejemplo.com", zone: "OCCIDENTE", year: "1998")
Question.create!(content: "Pregunta 4", email: "correo@ejemplo.com", zone: "ORIENTE", year: "1998")
Question.create!(content: "Pregunta 5", email: "correo@ejemplo.com", zone: "NORTE", year: "2005")

Answer.create!(question_id: 1, content: "Respuesta 1")
Answer.create!(question_id: 2, content: "Respuesta 2")
Answer.create!(question_id: 3, content: "Respuesta 3")