s = File.open('FL_insurance_sample.csv', 'rb') { |io| puts io.read }
s.encoding