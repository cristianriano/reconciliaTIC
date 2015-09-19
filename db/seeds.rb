User.create!(name:  "Carlitos33",
             zone: "Sur",
             password:              "password",
             password_confirmation: "password",
             admin:     false,
             history: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In varius urna vitae elit congue consequat. Aliquam erat volutpat. In gravida at diam elementum pulvinar. In felis erat, mollis vitae vulputate vel, ultrices vitae urna. Pellentesque placerat facilisis ultricies. Suspendisse vitae dui ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sodales euismod libero, vitae faucibus elit cursus at. Sed venenatis laoreet sem ac lobortis. Ut ac sapien ultrices, pellentesque massa ac, vestibulum mauris. Curabitur iaculis in nulla nec eleifend. Cras vel nunc ut dui faucibus dictum. Suspendisse hendrerit ligula tellus, in dictum est fringilla quis. Nam at luctus tellus. Pellentesque egestas semper odio, ac eleifend sapien ullamcorper et. Sed nec ipsum tristique, pulvinar odio eget, tristique sem. Nullam risus neque, pellentesque non iaculis in, lacinia quis augue. Cras dolor odio, dictum vitae magna sed, euismod eleifend enim. Donec non interdum diam. Morbi sit amet felis in nisl lacinia auctor. Nulla ut turpis dui. Duis quis tellus erat. Maecenas ligula ex, viverra et lorem vitae, lacinia semper metus. Morbi ultrices efficitur bibendum. Curabitur lobortis auctor ullamcorper. Vestibulum laoreet elit nec enim finibus tincidunt. Fusce nec erat nisl. Morbi vitae metus a quam accumsan interdum. Etiam finibus eleifend mauris, in semper lacus consectetur eu. Vestibulum molestie mauris ut ante fringilla, ut euismod risus interdum. Quisque posuere erat quis dui ornare, non porttitor neque molestie. Donec nec sollicitudin arcu, et pretium dolor. Maecenas mattis dolor quis nisl rhoncus sagittis. Phasellus vulputate erat sit amet molestie pretium. Donec tristique nisl eget sagittis scelerisque. Integer non pellentesque magna. Vivamus tellus tellus, semper ut justo et, fringilla euismod metus. Vivamus ullamcorper accumsan elit sed interdum. Sed ut vestibulum erat. Fusce vel justo volutpat, sagittis diam quis, vehicula metus. Praesent vel mollis nisi, non congue enim.")

User.create!(name:  "cristianriano",
             zone: "Ninguna",
             password:              "password",
             password_confirmation: "password",
             admin:     true,
             history: "")

2.times do | n |
      Publication.create!( content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus leo tortor, efficitur eu risus viverra, commodo scelerisque urna. Aliquam sed tincidunt quam. Pellentesque at nisi ipsum. Fusce ac fringilla est. Cras ante orci, viverra vel ultrices eget, fringilla ut nisl. Quisque ornare, lorem in facilisis mattis, tellus neque tincidunt tellus, eu tincidunt libero nisi in est. Vivamus dignissim, turpis sed aliquet porta, ex ligula tempor metus, quis imperdiet diam dolor quis metus. Ut nec porta urna. Ut in mollis metus. Maecenas viverra elit odio, a finibus nunc posuere nec. Vestibulum pellentesque egestas nisi, vitae commodo nunc aliquam in. Sed suscipit malesuada ultrices. Sed fermentum suscipit velit, sit amet convallis nulla maximus et.")
end

Publication.create!(content: "Ut nec porta urna. Ut in mollis metus. Maecenas viverra elit odio, a finibus nunc posuere nec. Vestibulum pellentesque egestas nisi, vitae commodo nunc aliquam in. Sed suscipit malesuada ultrices. Sed fermentum suscipit velit, sit amet convallis nulla maximus et", user_id: 2)

3.times do | n |
      Pardon.create!(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus leo tortor #{n}", kind: "1")
end

3.times do | n |
      Pardon.create!(content: "Sed suscipit malesuada ultrices. Sed fermentum suscipit velit, sit amet convallis nulla maximus et. #{n}", kind: "2")
end

Question.create!(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus leo tortor, efficitur eu risus viverra, commodo scelerisque urna. Aliquam sed tincidunt quam. Pellentesque at nisi ipsum. Fusce ac fringilla est", email: "correo@ejemplo.com", zone: "NORTE", year: "1998")
Question.create!(content: "Ut nec porta urna. Ut in mollis metus. Maecenas viverra elit odio, a finibus nunc posuere nec. Vestibulum pellentesque egestas nisi, vitae commodo nunc aliquam in. Sed suscipit malesuada ultrices. Sed fermentum suscipit velit, sit amet convallis nulla maximus et", email: "correo@ejemplo.com", zone: "SUR", year: "2008")
Question.create!(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus leo tortor, efficitur eu risus viverra, commodo scelerisque urna. Aliquam sed tincidunt quam. Pellentesque at nisi ipsum. Fusce ac fringilla est", email: "correo@ejemplo.com", zone: "SUR", year: "1998")
#Question.create!(content: "Pregunta 3", email: "correo@ejemplo.com", zone: "OCCIDENTE", year: "1998")
#Question.create!(content: "Pregunta 4", email: "correo@ejemplo.com", zone: "ORIENTE", year: "1998")
#Question.create!(content: "Pregunta 5", email: "correo@ejemplo.com", zone: "NORTE", year: "2005")

Answer.create!(question_id: 1, content: "Sed suscipit malesuada ultrices. Sed fermentum suscipit velit, sit amet convallis nulla maximus et")
Answer.create!(question_id: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus leo tortor, efficitur eu risus viverra, commodo scelerisque urna. Aliquam sed tincidunt quam. Pellentesque at nisi ipsum. Fusce ac fringilla est")
Answer.create!(question_id: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus leo tortor, efficitur eu risus viverra, commodo scelerisque urna. Aliquam sed tincidunt quam. Pellentesque at nisi ipsum. Fusce ac fringilla est. Cras ante orci, viverra vel ultrices eget, fringilla ut nisl. Quisque ornare, lorem in facilisis mattis, tellus neque tincidunt tellus, eu tincidunt libero nisi in est. Vivamus dignissim, turpis sed aliquet porta, ex ligula tempor metus, quis imperdiet diam dolor quis metus. Ut nec porta urna. Ut in mollis metus. Maecenas viverra elit odio, a finibus nunc posuere nec. Vestibulum pellentesque egestas nisi, vitae commodo nunc aliquam in. Sed suscipit malesuada ultrices. Sed fermentum suscipit velit, sit amet convallis nulla maximus et")