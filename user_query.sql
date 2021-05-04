SELECT us.Z303_REC_KEY ,  SUBSTR(ext.Z308_REC_KEY,3) as external_id, 
    SUBSTR(bar.Z308_REC_KEY,3) as barcode, 
    us.Z303_NAME,
    concat('','folio-test@umass.edu') as email1,
    --address1.Z304_EMAIL_ADDRESS as email1,
    concat(threeohfive.Z305_BOR_STATUS,'AC') as patronGroup,
    --threeohfive.Z305_BOR_TYPE,
    concat('','AC') as BOR_TYPE,
  
    threeohfive.Z305_EXPIRY_DATE,
    threeohfive.z305_open_date
    from FCL00.Z303 us
    left join FCL00.Z308 ext
    on us.Z303_REC_KEY = ext.Z308_ID
    and SUBSTR(ext.Z308_REC_KEY, 0,2) = '02'
    inner join FCL00.Z308 bar
    on us.Z303_REC_KEY = bar.Z308_ID
    and SUBSTR(bar.Z308_REC_KEY, 0,2) = '01'
    left join FCL00.Z304 address1 
    on us.Z303_REC_KEY = SUBSTR(address1.Z304_REC_KEY,0,12) and SUBSTR(address1.Z304_REC_KEY,13) = '01'
    inner join AMH50.Z305 threeohfive on 
    us.Z303_REC_KEY = substr(threeohfive.Z305_REC_KEY,0,12)
    WHERE threeohfive.Z305_BOR_STATUS IN ('01', '02',  '04', '07',  '10', '11',   '20', '21', '23')
    and SUBSTR(ext.Z308_REC_KEY,3) is not null
    and threeohfive.Z305_EXPIRY_DATE > 20200429
    
UNION

SELECT us.Z303_REC_KEY ,  SUBSTR(ext.Z308_REC_KEY,3) as external_id, 
    SUBSTR(bar.Z308_REC_KEY,3) as barcode, 
    us.Z303_NAME,
    concat('','folio-test@umass.edu') as email1,
    --address1.Z304_EMAIL_ADDRESS as email1,
    concat(threeohfive.Z305_BOR_Status,'HC')  as patronGroup,
    threeohfive.Z305_BOR_TYPE,
    
    threeohfive.Z305_EXPIRY_DATE,
    threeohfive.z305_open_date
    from FCL00.Z303 us
    left join FCL00.Z308 ext
    on us.Z303_REC_KEY = ext.Z308_ID
    and SUBSTR(ext.Z308_REC_KEY, 0,2) = '02'
    inner join FCL00.Z308 bar
    on us.Z303_REC_KEY = bar.Z308_ID
    and SUBSTR(bar.Z308_REC_KEY, 0,2) = '01'
    left join FCL00.Z304 address1 
    on us.Z303_REC_KEY = SUBSTR(address1.Z304_REC_KEY,0,12) and SUBSTR(address1.Z304_REC_KEY,13) = '01'
    inner join HAM50.Z305 threeohfive on 
    us.Z303_REC_KEY = substr(threeohfive.Z305_REC_KEY,0,12)
    WHERE threeohfive.Z305_BOR_STATUS IN ('01', '02',  '04', '07',  '10', '11',   '20', '21', '23')
    and SUBSTR(ext.Z308_REC_KEY,3) is not null
    and threeohfive.Z305_EXPIRY_DATE > 20200429
UNION
SELECT us.Z303_REC_KEY ,  SUBSTR(ext.Z308_REC_KEY,3) as external_id, 
    SUBSTR(bar.Z308_REC_KEY,3) as barcode, 
    us.Z303_NAME,
    concat('','folio-test@umass.edu') as email1,
    --address1.Z304_EMAIL_ADDRESS as email1,
    concat(threeohfive.Z305_BOR_TYPE,'MH') as patronGroup,
    threeohfive.Z305_BOR_TYPE,
 
    threeohfive.Z305_EXPIRY_DATE,
    threeohfive.z305_open_date
    from FCL00.Z303 us
    left join FCL00.Z308 ext
    on us.Z303_REC_KEY = ext.Z308_ID
    and SUBSTR(ext.Z308_REC_KEY, 0,2) = '02'
    inner join FCL00.Z308 bar
    on us.Z303_REC_KEY = bar.Z308_ID
    and SUBSTR(bar.Z308_REC_KEY, 0,2) = '01'
    left join FCL00.Z304 address1 
    on us.Z303_REC_KEY = SUBSTR(address1.Z304_REC_KEY,0,12) and SUBSTR(address1.Z304_REC_KEY,13) = '01'
    inner join MHC50.Z305 threeohfive on 
    us.Z303_REC_KEY = substr(threeohfive.Z305_REC_KEY,0,12)
    WHERE threeohfive.Z305_BOR_STATUS IN ('01', '02',  '04', '07',  '10', '11',   '20', '21', '23')
    and SUBSTR(ext.Z308_REC_KEY,3) is not null
    and threeohfive.Z305_EXPIRY_DATE > 20200429
    
UNION
SELECT us.Z303_REC_KEY ,  SUBSTR(ext.Z308_REC_KEY,3) as external_id, 
    SUBSTR(bar.Z308_REC_KEY,3) as barcode, 
    us.Z303_NAME,
    concat('','folio-test@umass.edu') as email1,
    --address1.Z304_EMAIL_ADDRESS as email1,
    concat(threeohfive.Z305_BOR_Status,'SC') as patronGroup,
    threeohfive.Z305_BOR_TYPE,
  
    threeohfive.Z305_EXPIRY_DATE,
    threeohfive.z305_open_date
    from FCL00.Z303 us
    left join FCL00.Z308 ext
    on us.Z303_REC_KEY = ext.Z308_ID
    and SUBSTR(ext.Z308_REC_KEY, 0,2) = '02'
    inner join FCL00.Z308 bar
    on us.Z303_REC_KEY = bar.Z308_ID
    and SUBSTR(bar.Z308_REC_KEY, 0,2) = '01'
    left join FCL00.Z304 address1 
    on us.Z303_REC_KEY = SUBSTR(address1.Z304_REC_KEY,0,12) and SUBSTR(address1.Z304_REC_KEY,13) = '01'
    inner join SMT50.Z305 threeohfive on 
    us.Z303_REC_KEY = substr(threeohfive.Z305_REC_KEY,0,12)
    WHERE threeohfive.Z305_BOR_STATUS IN ('01', '02',  '04', '07',  '10', '11',   '20', '21', '23')
    and SUBSTR(ext.Z308_REC_KEY,3) is not null
    and threeohfive.Z305_EXPIRY_DATE > 20200429
    
UNION
SELECT us.Z303_REC_KEY ,  SUBSTR(ext.Z308_REC_KEY,3) as external_id, 
    SUBSTR(bar.Z308_REC_KEY,3) as barcode, 
    us.Z303_NAME,
    concat('','folio-test@umass.edu') as email1,
    --address1.Z304_EMAIL_ADDRESS as email1,
    concat(threeohfive.Z305_BOR_STATUS,'UM') as patronGroup,
    threeohfive.Z305_BOR_TYPE,
   
    threeohfive.Z305_EXPIRY_DATE,
    threeohfive.z305_open_date
    from FCL00.Z303 us
    left join FCL00.Z308 ext
    on us.Z303_REC_KEY = ext.Z308_ID
    and SUBSTR(ext.Z308_REC_KEY, 0,2) = '02'
    inner join FCL00.Z308 bar
    on us.Z303_REC_KEY = bar.Z308_ID
    and SUBSTR(bar.Z308_REC_KEY, 0,2) = '01'
    left join FCL00.Z304 address1 
    on us.Z303_REC_KEY = SUBSTR(address1.Z304_REC_KEY,0,12) and SUBSTR(address1.Z304_REC_KEY,13) = '01'
    inner join UMA50.Z305 threeohfive on 
    us.Z303_REC_KEY = substr(threeohfive.Z305_REC_KEY,0,12)
    WHERE threeohfive.Z305_BOR_STATUS IN ('01', '02',  '04', '07',  '10', '11',   '20', '21', '23')
    and SUBSTR(ext.Z308_REC_KEY,3) is not null
    and threeohfive.Z305_EXPIRY_DATE > 20150429
