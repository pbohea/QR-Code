# Write your solution here!
require "rqrcode"

user_digit = ""
pp "What kind of QR code would you like to generate?"
pp "1. Open a URL"
pp "2. Join a wifi network"
pp "3. send a text message"

pp "Press 4 to exit"
user_digit = gets.chomp.to_i

if user_digit == 4
  puts "Bye, have a good day!"
elsif user_digit == 1
    pp "What is the URL you would like to encode?"
    user_url = gets.chomp

    # Use the RQRCode::QRCode class to encode some text
    qrcode = RQRCode::QRCode.new(user_url)

    pp "What would you like to call the PNG?"

    user_png = gets.chomp

   # Use the .as_png method to create a 500 pixels by 500 pixels image
    png = qrcode.as_png({ :size => 500 })

  # Write the image data to a file
    IO.binwrite("#{user_png}.png", png.to_s)
#elsif user_digit == 2
  
end
