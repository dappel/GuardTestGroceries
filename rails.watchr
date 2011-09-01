watch('^app/assets/sylesheets/(.*\.scss)') { |m| check_sass(m[1]) }

def check_sass(sass_file)
	system("clear; sass --check app/assets/sylesheets/#{sass_file}")
end