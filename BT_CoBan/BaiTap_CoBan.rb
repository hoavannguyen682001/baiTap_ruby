#Bai 1 Nhập các số vào mảng, in ra số lớn nhất, nhỏ nhất, giá trị trung bình của mảng.
puts "Bai 1. Nhập các số vào mảng, in ra số lớn nhất, nhỏ nhất, giá trị trung bình của mảng."
arr = []
avg = 0
for i in 0..3 do
    print "Nhap phan tu thu #{i}: "
    arr[i] = gets.chomp().to_i
    avg += arr[i] 
end
puts "Gia tri lon nhat cua mang la: #{arr.max} " 
puts "Gia tri nho nhat cua mang la: #{arr.min} " 
puts "Gia tri trung binh cua mang la: #{avg.to_f / arr.length}" 
