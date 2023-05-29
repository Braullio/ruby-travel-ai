require './lib/travel'

p Travel
    .new
    .with_dates('10/08/2023', '15/08/2023')
    .from('Goiânia')
    .to('São Paulo')
    .plan!