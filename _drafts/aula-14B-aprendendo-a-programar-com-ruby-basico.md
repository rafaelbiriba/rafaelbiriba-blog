---
layout: post
title: "Aula 14B - Aprendendo a programar com Ruby: O Básico para iniciantes"
excerpt: "Material da aula 14B do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação."
category: [br, programacao]
lang: br
tags: [programação, tecnologia, curso, ruby, iniciantes]
comments: true
share: true
ads: true
---
![](/blog/images/curso_ruby_basico/banner-curso-ruby-14B.jpg)

> :warning: Material da aula 14.B! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 14.B. Programação orientada a objetos - Correção dos exercícios

Nessa aula eu faço a correção dos exercícios da aula 14A, referente a classes, instâncias e métodos.

### Vídeo da aula

- []()

### Exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-14A-aprendendo-a-programar-com-ruby-basico/](/blog/br/programacao/aula-14A-aprendendo-a-programar-com-ruby-basico/)

### Correção dos exercícios

#### 1.

```ruby
class Calculadora
  def self.ao_quadrado(numero)
    numero * numero
  end
end

puts Calculadora.ao_quadrado(3)
```

---

#### 2.

```ruby
class CarroAzul
  def cor
    "Azul"
  end
end

class CarroPreto
  def cor
    "Preto"
  end
end

class CarroBranco
  def cor
    "Branco"
  end
end

carro1 = CarroAzul.new
carro2 = CarroPreto.new
carro3 = CarroBranco.new

[carro1, carro2, carro3].each do |carro|
  puts carro.cor
end

# Azul
# Preto
# Branco
```
