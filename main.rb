require "./CPF"
require "./CNPJ"

def clear
  if RUBY_PLATFORM =~ /win32|win64|\.NET|windows|cygwin|mingw32/i
    system "cls"
  else
    system "clear"
  end
end

loop do
  repeat = true
  clear
  puts "\e[1;97m
 _    __      ___     __              __________  ______           _______   ______      __
| |  / /___ _/ (_)___/ /___ ______   / ____/ __ \\/ ____/  ___     / ____/ | / / __ \\    / /
| | / / __ `/ / / __  / __ `/ ___/  / /   / /_/ / /_     / _ \\   / /   /  |/ / /_/ /_  / / 
| |/ / /_/ / / / /_/ / /_/ / /     / /___/ ____/ __/    /  __/  / /___/ /|  / ____/ /_/ /  
|___/\\__,_/_/_/\\__,_/\\__,_/_/      \\____/_/   /_/       \\___/   \\____/_/ |_/_/    \\____/   
                                                  \e[1;90mBy Alerson, Lincon, Silvio & Vinicius\e[0;0m"

  print "\nO que você deseja \e[1;34mvalidar\e[0;0m?[\e[1;32mCPF\e[0;0m, \e[1;33mCNPJ\e[0;0m, \e[1;31mSair\e[0;0m] "

  case gets.chomp.upcase
  when "CPF"
    print "\nInforme o \e[1;32mCPF\e[0;0m: "
    cpf = CPF.new(gets.chomp)
    puts "\nO CPF \e[1;34m#{cpf.to_s}\e[0;0m é #{cpf.valid? ? "\e[1;32mválido\e[0;0m" : "\e[1;31minválido\e[0;0m"}."
  when "CNPJ"
    print "\nInforme o \e[1;33mCNPJ\e[0;0m: "
    cnpj = CNPJ.new(gets.chomp)
    puts "\nO CNPJ \e[1;34m#{cnpj.to_s}\e[0;0m é #{cnpj.valid? ? "\e[1;32mválido\e[0;0m" : "\e[1;31minválido\e[0;0m"}."
  when "SAIR"
    repeat = false
    puts "\nAté a próxima. \e[1;32m(• ◡ •) /\e[0;0m"
  else
    puts "\nComando \e[1;31minválido\e[0;0m."
  end
  sleep(3)
  break unless repeat
end
clear
