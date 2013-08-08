def alphabetize(arr,rev=false)
    if rev==false
        arr.sort!
    else
        arr.sort!{|libro2,libro1| libro1<=>libro2}
    end
end
books=["La tercera resignación","Eva está dentro de su gato","La otra costilla de la muerte","Amargura para tres sonámbulos","Diálogo del espejo","Ojos de perro azul","La mujer que llegaba a las seis","Nabo, el negro que hizo esperar a los ángeles","Alguien desordena estas rosas","La noche de los alcaravanes","Monólogo de Isabel viendo llover en Macondo","El mar del tiempo perdido","La siesta del martes","Un día de éstos","En este pueblo no hay ladrones","La prodigiosa tarde de Baltazar","La viuda de Montiel","Un día después del sábado","Rosas artificiales","Los funerales de la Mamá Grande","Un señor muy viejo con unas alas enormes","El ahogado más hermoso del mundo","El último viaje del buque fantasma","Blacamán el bueno vendedor de milagros","Muerte constante más allá del amor","El rastro de tu sangre en la nieve","El verano feliz de la señora Forbes","Sólo vine a hablar por teléfono","La luz es como el agua","María dos Prazeres","Buen viaje, señor presidente","Me alquilo para soñar","Diecisiete ingleses envenenados","Espantos de agosto","La santa","Tramontana","El avión de la bella durmiente"]

puts "#{alphabetize(books)}"
puts "#{alphabetize(books,true)}"

chao=gets.chomp