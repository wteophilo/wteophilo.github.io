---
layout: post
title: RSpec-It vs Xit
date: 2018-04-14 09:41 -0300
tags: [TDD,RSpec,Ruby on Rails]
---
Hoje vamos falar um pouco mais sobre o rspec e como pular alguns testes...
Calma a ideia não é burlar nossos testes mas as vezes estamos focados em uma feature e os testes quebram em outros locais...sei que você vai voltar e resolver o problema ;).

Sabemos que quando declaramos um novo teste e não o preenchemos o log é exibido como pendente.
{% highlight ruby %}
it "Deve fazer alguma coisa"
{% endhighlight %}


Resultado:
{% highlight PowerShell %}
Pending: (Failures listed here are expected and do not affect your suite's status)

  1) Calculator#sum Deve fazer algo
     # Not yet implemented
{% endhighlight %}

Agora para pularmos um item de nossos testes é necessário apenas adicionarmos o comando **xit** ao invés do it na descrição do teste. Abaixo existe um treço de código mostrando o compartamento do xit:

{% highlight Ruby %}
require "calculator"

describe Calculator do
	subject(:calc){described_class.new()}
	context "#sum" do
		it "with positive numbers" do 
			result = calc.sum(5,7)
			expect(result).to eq(12)
		end

		xit "with negative and positive numbers" do
			result = calc.sum(-5,7)
			expect(result).to eq(2)
		end

		xit "with negative numbers" do
			result = calc.sum(-5,-7)
			expect(result).to eq(-12)
		end

	end
end
{% endhighlight %}

{% highlight PowerShell %}
Pending: (Failures listed here are expected and do not affect your suite's status)

  1) Calculator#sum with negative and positive numbers
     # Temporarily skipped with xit
{% endhighlight %}


Por enquanto é só isso, nos vemos na próxima.
