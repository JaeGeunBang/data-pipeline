# date-pipeline



WSL2, Docker를 통해 셋팅한다.



**데이터 생성 (Data-Generator)**

- DateGenerator (http://www.dominicgiles.com/datagenerator.html)
- Sample 데이터는 fluentd/data 에 저장해둠
  - {id, name, date, char, number}

```
1,sxrAWiWJ HErmizNjNkcT S,19-Feb-2013 00:00:00,q,407
2,wgS ODtdsolFqcSi,08-Mar-2013 00:00:00,p,970
3,L xZPEpBFUw Xxwptdhyy ,08-Apr-2013 00:00:00,p,918
4,oRmLEPlhFdx pKbLpGwRVXg,12-Jan-2013 00:00:00,k,144
5,faBTLeXfQCSCv hUxyHLh nJQJJKGepuT,06-Jan-2013 00:00:00,h,571
6,aEoVwc m vlnwwt T,09-Mar-2013 00:00:00,k,209
```



**로그 수집**

- fluentd, kafka

  

**저장소**

- Hadoop, HBase, Hive 