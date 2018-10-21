class Cor
	def banner()
		"#{self.cyan}"+'
 ____             _        __                       __ _         
| __ ) _ __ _   _| |_ ___ / _| ___  _ __ ___ ___   / _| |_ _ __
|  _ \|  __| | | | __/ _ \ |_ / _ \|  __/ __/ _ \ | |_| __|  _ \
| |_) | |  | |_| | ||  __/  _| (_) | | | (_|  __/ |  _| |_| |_) |
|____/|_|   \__,_|\__\___|_|  \___/|_|  \___\___| |_|  \__| .__/ 
                                                          |_|
'+"#{self.branco}/========[Salves]========\\
#{self.branco}|#{self.amarelo}IMESFENO                #{self.branco}|
#{self.branco}|#{self.amarelo}FawkeS                  #{self.branco}|
#{self.branco}|#{self.amarelo}Nocivo                  #{self.branco}|
#{self.branco}|#{self.amarelo}Ruby                    #{self.branco}|
#{self.branco}\\========================/

 by:#{self.vermelho}ShelZyKody"+"\n\n\n"
	end

	def preto()
		"\033[1;33;30m"
	end

	def vermelho()
		"\033[1;33;31m"
	end

	def amarelo()
		"\033[1;33;33m"
	end

	def verde()
		"\033[1;33;32m"
	end

	def cyan()
		"\033[1;33;36m"
	end

	def branco()
		"\033[1;33;37m"
	end

end
