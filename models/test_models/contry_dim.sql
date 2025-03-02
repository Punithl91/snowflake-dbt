select ContryName, Decode(ContryCode,'IN','100','US','200','UK','300',Null) as ContryCode
 from {{ref("contry_code")}}