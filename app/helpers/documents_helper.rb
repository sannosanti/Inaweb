module DocumentsHelper

	def categorias
		[
			['Diseño', 1],
			['Tics', 2],
			['Confeccion', 3]
		]
	end

	def get_categoria(categoria)
		  
		  categorias.find { |c| c[1] == categoria }[0]
		  	
	end
end


