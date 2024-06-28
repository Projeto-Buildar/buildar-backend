describe pagamento_status;
select * from pagamento_status;

UPDATE pagamento_status
SET status_pagamento = CASE status_pagamento
    WHEN '0' THEN 'pendente'
    WHEN '1' THEN 'concluído'
    ELSE 'Desconhecido'
END;

ALTER TABLE pagamento_status
MODIFY COLUMN status_pagamento VARCHAR(20);

INSERT INTO pagamento_status (id_pagamento, status_pagamento) 
VALUES ('8', '1'),  
    ('4', '0'),  
    ('2', '1'),  
    ('5', '0'),  
    ('7', '0'),
    ('6', '1'),    
    ('1', '1'),   
    ('3', '0'),   
    ('9', '1'),   
    ('43', '0'),   
    ('44', '1'),   
    ('45', '0'),   
    ('46', '1'),  
    ('47', '0'), 
    ('48', '1'),  
    ('49', '0'),  
    ('50', '1'),   
    ('51', '0'), 
    ('52', '1'), 
    ('53', '0'), 
    ('54', '1'), 
    ('55', '0'),  
    ('56', '1'), 
    ('57', '0'),  
    ('58', '1'),  
    ('59', '0'),  
    ('60', '1'),  
    ('61', '0'),   
    ('62', '1'),   
    ('63', '0'),  
    ('64', '1'),  
    ('65', '0'),  
    ('66', '1'), 
    ('67', '0'),   
    ('68', '1'), 
    ('69', '0'),   
    ('70', '1'),   
    ('71', '0'),
    ('72', '1'),  
    ('73', '0'), 
    ('74', '1'); 
