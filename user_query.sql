 --MH
 SELECT us.Z303_REC_KEY ,  SUBSTR(ext.Z308_REC_KEY,3) as external_id, 
    SUBSTR(bar.Z308_REC_KEY,3) as barcode, 
    us.Z303_NAME,
    concat('Mount Hoyloke College','') as institution,
    --address1.Z304_EMAIL_ADDRESS as email1, fake email for testing
    concat('folio-test@umass.edu','') as email1,
    threeohfive.Z305_BOR_TYPE,
    concat(threeohfive.Z305_BOR_STATUS,'MH') as Z305_BOR_STATUS ,
    threeohfive.Z305_EXPIRY_DATE,
    threeohfive.Z305_OPEN_DATE,
    concat(SUBSTR(ext.Z308_REC_KEY,3),'') as username
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
   WHERE threeohfive.Z305_BOR_STATUS IN (
   '01',
'02',
'04',
'07',
'09',
'10',
'33',
'47',
'23',
'40',
'48',
'20',
'21',
'29',
'11',
'22',
'39',
'12',
'18',
'19')
and SUBSTR(ext.Z308_REC_KEY,3) is not NULL

UNION
--AC
SELECT us.Z303_REC_KEY ,  SUBSTR(ext.Z308_REC_KEY,3) as external_id, 
    SUBSTR(bar.Z308_REC_KEY,3) as barcode, 
    us.Z303_NAME,
    concat('Amherst College','') as institution,
    --address1.Z304_EMAIL_ADDRESS as email1, fake email for testing
    concat('folio-test@umass.edu','') as email1,
    threeohfive.Z305_BOR_TYPE,
    concat(threeohfive.Z305_BOR_STATUS,'AC'),
    threeohfive.Z305_EXPIRY_DATE,
    threeohfive.Z305_OPEN_DATE,
    concat(SUBSTR(ext.Z308_REC_KEY,3),'') as username
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
   WHERE threeohfive.Z305_BOR_STATUS IN (
   '01',
'02',
'04',
'07',
'09',
'10',
'33',
'47',
'23',
'40',
'48',
'20',
'21',
'29',
'11',
'22',
'39',
'12',
'18',
'19')
and SUBSTR(ext.Z308_REC_KEY,3) is not NULL

UNION
--HC
SELECT us.Z303_REC_KEY ,  SUBSTR(ext.Z308_REC_KEY,3) as external_id, 
    SUBSTR(bar.Z308_REC_KEY,3) as barcode, 
    us.Z303_NAME,
    concat('Hampshire College','') as institution,
    --address1.Z304_EMAIL_ADDRESS as email1, fake email for testing
    concat('folio-test@umass.edu','') as email1,
    threeohfive.Z305_BOR_TYPE,
    concat(threeohfive.Z305_BOR_STATUS,'HC'),
    threeohfive.Z305_EXPIRY_DATE,
    threeohfive.Z305_OPEN_DATE,
    concat(SUBSTR(ext.Z308_REC_KEY,3),'') as username
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
   WHERE threeohfive.Z305_BOR_STATUS IN (
   '01',
'02',
'04',
'07',
'09',
'10',
'33',
'47',
'23',
'40',
'48',
'20',
'21',
'29',
'11',
'22',
'39',
'12',
'18',
'19')
and SUBSTR(ext.Z308_REC_KEY,3) is not NULL

UNION
--SC
SELECT us.Z303_REC_KEY ,  SUBSTR(ext.Z308_REC_KEY,3) as external_id, 
    SUBSTR(bar.Z308_REC_KEY,3) as barcode, 
    us.Z303_NAME,
    concat('Smith College','') as institution,
    --address1.Z304_EMAIL_ADDRESS as email1, fake email for testing
    concat('folio-test@umass.edu','') as email1,
    threeohfive.Z305_BOR_TYPE,
    concat(threeohfive.Z305_BOR_STATUS,'SC'),
    threeohfive.Z305_EXPIRY_DATE,
    threeohfive.Z305_OPEN_DATE,
    concat(SUBSTR(ext.Z308_REC_KEY,3),'') as username
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
   WHERE threeohfive.Z305_BOR_STATUS IN (
   '01',
'02',
'04',
'07',
'09',
'10',
'33',
'47',
'23',
'40',
'48',
'20',
'21',
'29',
'11',
'22',
'39',
'12',
'18',
'19')
and SUBSTR(ext.Z308_REC_KEY,3) is not NULL
--UM
UNION
SELECT us.Z303_REC_KEY ,  SUBSTR(ext.Z308_REC_KEY,3) as external_id, 
    SUBSTR(bar.Z308_REC_KEY,3) as barcode, 
    us.Z303_NAME,
    concat('Umass Amherst','') as institution,
    --address1.Z304_EMAIL_ADDRESS as email1, fake email for testing
    concat('folio-test@umass.edu','') as email1,
    threeohfive.Z305_BOR_TYPE,
    concat(threeohfive.Z305_BOR_STATUS,'UM'),
    threeohfive.Z305_EXPIRY_DATE,
    threeohfive.Z305_OPEN_DATE,
    concat(SUBSTR(ext.Z308_REC_KEY,3),'') as username
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
   WHERE threeohfive.Z305_BOR_STATUS IN (
   '01',
'02',
'04',
'07',
'09',
'10',
'33',
'47',
'23',
'40',
'48',
'20',
'21',
'29',
'11',
'22',
'39',
'12',
'18',
'19')
and SUBSTR(ext.Z308_REC_KEY,3) is not NULL
