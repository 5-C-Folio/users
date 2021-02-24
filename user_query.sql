 SELECT us.Z303_REC_KEY ,  SUBSTR(ext.Z308_REC_KEY,3) as external_id, 
    SUBSTR(bar.Z308_REC_KEY,3) as barcode, 
    us.Z303_NAME,
    concat('MH','') as institution,
    address1.Z304_EMAIL_ADDRESS as email1,
    threeohfive.Z305_BOR_TYPE,
    concat(threeohfive.Z305_BOR_STATUS,'MH'),
    threeohfive.Z305_EXPIRY_DATE,
    threeohfive.Z305_OPEN_DATE
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
