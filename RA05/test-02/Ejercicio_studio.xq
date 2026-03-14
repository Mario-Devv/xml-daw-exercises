(:a) Nombres de todos los socios.
//socios/socio/data(@nombre)
:)
(:b) Códigos de producto de las entradas producidas el 2 de octubre.
//entradas/entrada/data(@fecha)[contains(., '10-02')]
:)

(:c) Cantidades de las entradas de producto P002 del socio S003.
//entradas/entrada[@socio='S003' and @producto='P002']/@cantidad
:)

(:d) Identificadores de socios que realizan entradas superiores a 15000 Kg el 4 de
octubre.
data(//entradas/entrada[@cantidad > 15000 and contains(@fecha,'10-04')]/@socio)
:)
/