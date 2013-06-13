module NewspapersHelper

	def random_grandiose_word
		words = ["illustrious",
						 "eminent",
						 "esteemed",
						 "magnificent",
						 "venerable",
						 "respected"]
		words.sample
	end
end
