---
layout: post
title: "Aula 9B - Aprendendo a programar com Ruby: O Básico para iniciantes"
excerpt: "Material da aula 9B do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação."
category: [br, programacao]
lang: br
tags: [programação, tecnologia, curso, ruby, iniciantes]
comments: true
share: true
ads: true
---

![](/blog/images/curso_ruby_basico/banner-curso-ruby-9B.jpg)

> :warning: Material da aula 9.B! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 9.B. Ruby Basics 6 - Correção dos exercícios

Essa é a sexta parte da aula de ruby básico 6, onde eu faço a correção comentada dos exercícios.

### Vídeo da aula

- []()

### Exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-9A-aprendendo-a-programar-com-ruby-basico/](/blog/br/programacao/aula-9A-aprendendo-a-programar-com-ruby-basico/)

### Correção dos exercícios

#### 1.

Utilizando a função `.times`, escreva um código que imprima todos os números de 1 até 20, exceto múltiplos de 3.

```ruby
20.times do |x|
  if x % 3 == 0
    puts "- #{x}"
    next
  else
    puts x + 1
  end
end
```

---

#### 2.

Considerando a variável abaixo:

```ruby
letras = ["A", "B", "C"]
```

Escreva um código que imprima em cada linha a sequência: `A1`, `A2`, `A3`, `A4`, `A5`, `B1`, `B2`, `B3`, `B4`, `B5`, `C1`, `C2`, `C3`, `C4`, `C5`

NOTA: Você pode combinar o uso de `.times` e `.each` aqui.

---

#### 3.

Considerando a variável abaixo:

```ruby
temperatura_min_celsius = 10
temperatura_max_celsius = 40
```

Utilizando `ranges`, escreva um código que imprima cada uma das temperaturas junto com uma descrição baseado na regra abaixo:

- `<19` Imprimir "frio"
- `>=20 e <29` Imprimir "agradável"
- `>=30` imprimir "quente"

---

#### 4. DESAFIO

Considerando uma sequência de 1 até 3, veja o exemplo abaixo:

```
1
Rafael
2
Rafael
Rafael
3
Rafael
Rafael
Rafael
```

Escreva um código que imprima , linha a linha a sequência de 1 até 10. Entre cada número, imprima o seu nome a quantidade de vezes referente ao número que você imprimiu.
