# frozen_string_literal: true

require_relative 'student_mixin'

kj = StudentMixin.new('Jason1', 'Kretzer1', 'jas1@gmail.com', 'jas1', 'password2')

kjhpw = kj.create_hash_digest(kj.password)

puts kjhpw
puts kjhpw == kj.password
puts kj.password
puts kj.verify_hash_digest(kjhpw) == kj.password
