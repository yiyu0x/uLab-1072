a = [0, 0.05, 0.016666666666666663, 0.013636363636363641, 0.0118705035971223, 0.010667938043629935]
#[20, 20.0, 60.0, 73.33333333333333, 84.24242424242424, 93.73882712012208, 100]
b = []
for i in a:
	b.append( 65536 - i * 100000)
print(b)