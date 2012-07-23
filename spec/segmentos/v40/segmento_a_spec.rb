require 'spec_helper'

include Cnab240::V40

describe SegmentoA do

	it "deve instanciar segmento" do
		segmento = Cnab240::V40::SegmentoA.new
		segmento.should be_an_instance_of(Cnab240::V40::SegmentoA)
	end

	it "deve conter campos" do
		segmento = Cnab240::V40::SegmentoA.new

		segmento.should respond_to(:controle_banco)
		segmento.should respond_to(:controle_lote)
		segmento.should respond_to(:controle_registro)

		segmento.should respond_to(:servico_numero_registro)
		segmento.should respond_to(:servico_codigo_segmento)
		segmento.should respond_to(:servico_codigo_movimento)

		segmento.should respond_to(:favorecido_camara)
		segmento.should respond_to(:favorecido_banco)
		segmento.should respond_to(:brancos_1)
		
		segmento.should respond_to(:favorecido_agencia_codigo)
		segmento.should respond_to(:brancos_2)
		segmento.should respond_to(:brancos_3)

		segmento.should respond_to(:favorecido_conta_numero)
		segmento.should respond_to(:brancos_4)
		segmento.should respond_to(:favorecido_agencia_conta_dv)
		segmento.should respond_to(:favorecido_nome)

		segmento.should respond_to(:credito_seu_numero)
		segmento.should respond_to(:brancos_5)
		segmento.should respond_to(:credito_data_pagamento)
		segmento.should respond_to(:credito_moeda_tipo)
		segmento.should respond_to(:credito_moeda_quantidade)
		segmento.should respond_to(:credito_valor_pagamento)
		segmento.should respond_to(:credito_nosso_numero)
		segmento.should respond_to(:credito_data_real)
		segmento.should respond_to(:credito_valor_real)

		segmento.should respond_to(:tipo_mora)
		segmento.should respond_to(:valor_mora)

		segmento.should respond_to(:complemento)
		segmento.should respond_to(:brancos_6)
		segmento.should respond_to(:numero_inscricao)

		segmento.should respond_to(:ocorrencias)
	end

	it "deve ter 240 caracteres" do
		segmento = Cnab240::V40::SegmentoA.new
		segmento.linha.length.should be(240)
	end

	it "deve manter coesao" do 
		c = Cnab240::V40::SegmentoA
		obj = c.new
		linha1 = obj.linha
		obj2 = c.read(linha1)
		linha2 = obj2.linha
		linha1.should eq linha2
	end

end