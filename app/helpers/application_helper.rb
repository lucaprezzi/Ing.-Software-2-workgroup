module ApplicationHelper
  def fulltitle(pagetitle='')
    basetitle='Invoicing App'
    if pagetitle.empty?
      basetitle
    else
      pagetitle + ' | ' +basetitle
    end
  end

  def oggi_devo_fatturare
    fatturare = false
    Performance.all.select{|x| !x.invoiced}.each{|x| if (x.date.month != Date.current.month) then fatturare = true end}
    fatturare
  end

  def fattura_tutto
    @performances = Performance.select{|x| !x.invoiced}.select{|x| x.date.month != Date.current.month}
    if (@performances != nil)
      Client.all.each{|x| @cliente_da_fatturare = false
                          @performances.each{|y| if (y.client_id == x.id) then @cliente_da_fatturare = true end}
                          if (@cliente_da_fatturare)
                            @invoice = Invoice.new(client_id: x.id)
                            @invoice.save
                          end}
    end
  end

  def numero_clienti
    Client.all.length
  end

  def numero_fatture_emesse
    Invoice.all.length
  end

  def prestazioni_non_ancora_fatturate
    Performance.all.select{|x| !x.invoiced}.length
  end

  def somma_non_fatturata
    sum = 0.00
    Performance.all.select{|x| !x.invoiced}.each{|x| sum += x.rate.to_f * x.duration.to_f}
    sum
  end


  def store_data(data_name, data)
    datas = PStore.new("datas.pstore")
    datas.transaction do
      datas[data_name] = data
    end
  end

  def give_data(data_name)
    datas=PStore.new("datas.pstore")
    result = ""
    datas.transaction(true) do
      result = datas.fetch(data_name).to_s
    end
    result
  end



end
