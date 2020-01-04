def doc_email(email)
    email_down_case = []
    status = {}
    customers = []
    cust = []
    customers = []
  
  
    email.each do |for_email|
      email_down_case << for_email.downcase     
    end
  
  
    email_down_case.each do |for_email_down|
      status = { 'gmail.com' => for_email_down.count("gmail.com"),
                 'hotmail.com' => for_email_down.count("^hotmail.com^"),
                 'yahoo.com' => for_email_down.count("^yahoo.com"),
                 'yahoo.com.br' => for_email_down.count("^yahoo.com.br")
                }
    end
  
    email.each do |for_email|
      cust = for_email.split('@')
      customers << cust[0]
    end
  
    customers.each do |to_cust|
      customer = { 'name' => to_cust}
    end 
  
    puts 'cust:' + customer.inspect
    puts 'email case down:' + email_down_case.inspect
  
  end

  


  name = cust[0]
    provider = cust[1]
    customer << {'name' => cust[0], 'provider' => cust[1]}
