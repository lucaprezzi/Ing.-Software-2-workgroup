class Invoice < ApplicationRecord
  belongs_to :client
  before_save :set_invoicing


    include ApplicationHelper

  def set_invoicing
    @performances=Performance
    @da_fatturare = @performances.select{|x| !x.invoiced}.select{|x| x.client_id == self.client_id}

    @client = Client.select{|x| x.id == self.client_id}.last
    amount = 0.0
    @da_fatturare.each{|x| amount += x.rate.to_f * x.duration.to_f}
    @da_fatturare.each{|x| Performance.where(id: x.id).update_all(invoiced: true)}

    self.amount = amount

    self.date = Date.current



    if (Invoice.last == nil)
      number = 1
    else
      if (self.date.year == Invoice.last.date.year)
        number = Invoice.last.number + 1
      else
        number = 1
      end
    end

    self.number = number


    string = "<html lang=\"en\">
  <head>
    <meta charset=\"utf-8\">
    <title>" + self.date.year.to_s + " - " + self.number.to_s + " - " + self.client.to_s + "</title>
    <link rel=\"stylesheet\" href=\"style.css\" media=\"all\" />

    <style type=\"text/css\">
    	.clearfix:after {
  content: "";
  display: table;
  clear: both;
}

a {
  color: #5D6975;
  text-decoration: underline;
}

body {
  position: relative;
  width: 21cm;
  height: 29.7cm;
  margin: 0 auto;
  color: #001028;
  background: #FFFFFF;
  font-family: Arial, sans-serif;
  font-size: 12px;
  font-family: Arial;
}

header {
  padding: 10px 0;
  margin-bottom: 30px;
}

#logo {
  text-align: center;
  margin-bottom: 10px;
}

#logo img {
  width: 90px;
}

h1 {
  border-top: 1px solid  #5D6975;
  border-bottom: 1px solid  #5D6975;
  color: #5D6975;
  font-size: 2.4em;
  line-height: 1.4em;
  font-weight: normal;
  text-align: center;
  margin: 0 0 20px 0;
  background: url(dimension.png);
}

#project {
  float: left;
}

#project span {
  color: #5D6975;
  text-align: left;
  width: 52px;
  margin-right: 60px;
  display: inline-block;
  font-size: 1em;
}

#company {
  float: right;
  text-align: right;
}

#project div,
#company div {
  white-space: nowrap;
}

table {
  width: 100%;
  font-size: 12px;
  border-collapse: collapse;
  border-spacing: 0;
  margin-bottom: 20px;
}

table tr:nth-child(2n-1) td {
  background: #F5F5F5;
}

table th,
table td {
  text-align: center;
}

table th {
  padding: 5px 40px;
  color: #5D6975;
  border-bottom: 1px solid #C1CED9;
  white-space: nowrap;
  font-weight: normal;
}

table .service,
table .desc {
  text-align: left;
}

table td {
  padding: 20px;
  text-align: right;
}

table td.service,
table td.desc {
  vertical-align: top;
}

table td.unit,
table td.qty,
table td.total {
  font-size: 1.2em;
}

table td.grand {
  border-top: 4px solid #5D6975;;
}



footer {
  color: #5D6975;
  width: 100%;
  height: 30px;
  position: absolute;
  bottom: 0;
  border-top: 1px solid #C1CED9;
  padding: 8px 0;
  text-align: center;
}


    </style>

  </head>
  <body>
    <header class=\"clearfix\">
      <div id=\"logo\">
        <!--<img src=\"logo.png\">-->
      </div>
      <h1>INVOICE</h1>
      <div id=\"company\" class=\"clearfix\">
        <div>" + give_data("Our_Nominative") + "</div>
        <div>" + give_data("Our_Address") + ",<br /> "+ give_data("Our_City") + " " + give_data("Our_Cap") + ", " + give_data("Our_State") + "</div>
        <div>" + give_data("Our_Telephone") + "</div>
        <div><a href=\"mailto:" + give_data("Our_Email") + "\">" + give_data("Our_Email") + "</a></div>
      </div>
      <div id=\"project\">
      	<div><span>INVOICE NUMBER</span>" + self.number.to_s + "</div>
      	<div><span>DATE</span>" + self.date.to_formatted_s(:rfc822).to_s + "</div>
      	<br>
        <div><span>CLIENT</span>" + @client.nominative + "</div>
        <div><span>MAIL</span>" + @client.email + "</div>
        <div><span>ADDRESS</span>" + @client.indirizzo_completo + "</div>
        <div><span>TELEPHONE</span>" + @client.numero + "</div>
        <div><span>P.IVA</span>" + @client.partita_iva + "</div>
        <div><span>C.F.</span>" + @client.codice_fiscale + "</div>
        <br><br><br>
      </div>
    </header>
    <main>
      <table border=\"1\">
        <thead>
          <tr>
            <th class=\"desc\">DESCRIPTION</th>
            <th>HOURLY RATE</th>
            <th>DURATION</th>
            <th>TOTAL</th>
          </tr>
        </thead>


        <tbody>
          <tr>"

    @da_fatturare.each{|x| string += "
            <td class=\"desc\">" + x.description + "</td>
            <td class=\"unit\">€ " + ('%.2f' % x.rate).to_s + "</td>
            <td class=\"qty\"> " + x.duration.to_s + " h</td>
            <td class=\"total\">€ " + ('%.2f' % (x.duration.to_f * x.rate.to_f)).to_s + "</td>
          </tr>"}

string += "<tr>
            <td colspan=\"3\">SUBTOTAL</td>
            <td class=\"total\"> €" + ('%.2f' % self.amount).to_s + "</td>
          </tr>

          <tr>
            <td colspan=\"3\">TAX " + give_data("Our_Tax") + "%</td>
            <td class=\"total\"> €" + ('%.2f' % ((1.0*self.amount*give_data("Our_Tax").to_f).to_f/100)).to_s + "</td>
          </tr>

          <tr>
            <td colspan=\"3\" class=\"grand total\">TOTAL TO PAY</td>
            <td class=\"grand total\"> €" + ('%.2f' % (self.amount*(1.0+(give_data("Our_Tax").to_f)/100))).to_s + "</td>
          </tr>

        </tbody>
      </table>
    </main>
  </body>
</html>"





kit = PDFKit.new(string)
kit.to_file("#{Rails.root}/public/invoice_pdf/#{self.date.year}-#{self.number}.pdf")


  end
end
