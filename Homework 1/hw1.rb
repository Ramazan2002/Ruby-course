print 'Шифровать или дешифровать? '
metod = gets
metod = metod.to_i
print 'Укажите файл '
file = gets
if metod == 0
	system("gpg -c #{file}")
	system("gpg-connect-agent reloadagent /bye")
end

if metod == 1
	system("gpg --decrypt-files #{file}")

end