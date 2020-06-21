### Datagenerator

<hr>


테스트 데이터 생성기

- http://www.dominicgiles.com/datagenerator.html



테스트 데이터 생성하는 사이트는 여러 있었지만, 위 링크의 DataGenerator는 Row Count 수를 마음껏 늘릴 수 있어 사용하게 되었다. 프로그램을 다운받아 (JDK 8 필요) 원하는 Row Count를 설정 후 테스트 데이터를 생성한다.

- 필요한 설정은 datagenerator.xml에 정의한다. column, log Count 등등



Column은 4개, LogCount는 100,000개로 설정

**dategenerator.xml**

```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<TableDataGenerator xmlns="http://www.domincgiles.com/datagen">
    <DatabaseConnectionInformation>
        <Username>sh</Username>
        <Password>sh</Password>
        <ConnectString>//localhost/orcl</ConnectString>
        <DriverType>Oracle10g Type IV jdbc driver (thin)</DriverType>
    </DatabaseConnectionInformation>
    <Table RowCount="100000">
        <TableName>SIMPLETABLE</TableName>
        <Columns>
            <Column>
                <ColumnName>SeqNum</ColumnName>
                <DataType>NUMBER</DataType>
                <PrimaryKey>true</PrimaryKey>
                <NullsAllowed>false</NullsAllowed>
                <Size>6</Size>
                <PopulateWith>
                    <DataGenerator>
                        <NumberGenerator>
                            <id>DG1</id>
                            <Start>1</Start>
                            <End>100000</End>
                            <OrderedSequence>true</OrderedSequence>
                            <SequenceName>SEQUENCE1</SequenceName>
                            <PercentageNull>0</PercentageNull>
                            <LocalSequence>false</LocalSequence>
                            <NormalDistribution>false</NormalDistribution>
                        </NumberGenerator>
                    </DataGenerator>
                </PopulateWith>
            </Column>
            <Column>
                <ColumnName>RandomString</ColumnName>
                <DataType>VARCHAR</DataType>
                <PrimaryKey>false</PrimaryKey>
                <NullsAllowed>true</NullsAllowed>
                <Size>40</Size>
                <PopulateWith>
                    <DataGenerator>
                        <CharacterGenerator>
                            <id>DG1</id>
                            <CharacterClass>Alpha With Whitespace</CharacterClass>
                            <MinimumSize>10</MinimumSize>
                            <MaximumSize>35</MaximumSize>
                            <PercentageNull>20</PercentageNull>
                        </CharacterGenerator>
                    </DataGenerator>
                </PopulateWith>
            </Column>
            <Column>
                <ColumnName>Date</ColumnName>
                <DataType>DATE</DataType>
                <PrimaryKey>false</PrimaryKey>
                <NullsAllowed>false</NullsAllowed>
                <Size>40</Size>
                <PopulateWith>
                    <DataGenerator>
                        <DateGenerator>
                            <id>DG2</id>
                            <Start>2020-05-01T13:51:23.579Z</Start>
                            <End>2020-05-30T13:51:23.579Z</End>
                            <RoundUpDay>true</RoundUpDay>
                            <RoundUpHour>false</RoundUpHour>
                            <AddToResult>0</AddToResult>
                            <PercentageNull>0</PercentageNull>
                        </DateGenerator>
                    </DataGenerator>
                </PopulateWith>
            </Column>
            <Column>
                <ColumnName>RandomChar</ColumnName>
                <DataType>VARCHAR</DataType>
                <PrimaryKey>false</PrimaryKey>
                <NullsAllowed>false</NullsAllowed>
                <Size>1</Size>
                <PopulateWith>
                    <DataGenerator>
                        <EnumerationGenerator>
                            <id>DG3</id>
                            <EnumerationValues>a,b,c,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z</EnumerationValues>
                            <MinimumRepetitions>1</MinimumRepetitions>
                            <MaximumRepetitions>1</MaximumRepetitions>
                            <PercentageNull>0</PercentageNull>
                            <NormalDistribution>true</NormalDistribution>
                        </EnumerationGenerator>
                    </DataGenerator>
                </PopulateWith>
            </Column>
        </Columns>
        <Scaleable>true</Scaleable>
    </Table>
    <Sequence>
        <SequenceName>SEQUENCE1</SequenceName>
        <StartWith>1</StartWith>
        <IncrementBy>1</IncrementBy>
        <CacheSize>100000</CacheSize>
        <Ordered>false</Ordered>
    </Sequence>
    <PreGenerationScript/>
    <PostGenerationScript/>
</TableDataGenerator>
```



