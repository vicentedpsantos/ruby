p %w[1 23.0 0 4].map{ |x| x.to_i }
p %w[1 23.0 0 4].map(&:to_i)

p ("a".."g").to_a.map { |i| i * 2 }

p Hash[[1, 2.1, 3.33, 0.9].map { |x| [x, x.to_i] }]

p Hash[%w[A dynamic open source programming language].map { |x| [x, x.length] }]

link = { a: 'foo', b: 'bar', lat: '120.323', long: '32.321'}.map{ |a, b| "#{a}=#{b}"}.join('&')
p link


# Inject
p [3, 4, 2, 53, 28].inject(&:+)
p [3, 4, 2, 53].inject(&:*)
p [3, 4, 2, 53, 5, 2, 64, 12, 28].inject(&:-)
p [3, 4, 2, 53, 5, 2, 64, 12, 28].inject(&:/)
p [2, 3, 5].inject(&:**)
