
-- top 10 músicas mais vendidas em quantidade

select
    t."TrackId",
    t."Name",
    count(*) as quantidade
from "Track" t
join "InvoiceLine" il on t."TrackId" = il."TrackId"
join "Invoice" i on i."InvoiceId" = il."InvoiceId"
group by t."Name", t."TrackId"
order by quantidade desc
limit 10;

-- top 10 músicas que mais faturaram em valor monetário

select
    t."TrackId",
    t."Name",
    sum(i."Total") as valor_faturado
from "Track" t
join "InvoiceLine" il on t."TrackId" = il."TrackId"
join "Invoice" i on i."InvoiceId" = il."InvoiceId"
group by t."Name", t."TrackId"
order by valor_faturado desc
limit 10;


-- Email dos top 10 clientes que mais compraram músicas em quantidade

select
    c."CustomerId",
    c."Email",
    count(*) as quantidade
from "Track" t
join "InvoiceLine" il on t."TrackId" = il."TrackId"
join "Invoice" i on i."InvoiceId" = il."InvoiceId"
join "Customer" c on c."CustomerId" = i."CustomerId"
group by c."CustomerId"
order by quantidade desc
limit 10;

-- Email dos top 10 clientes que mais gastaram em valor monetário

select
    c."CustomerId",
    c."Email",
    sum(i."Total") as total_gasto
from "Track" t
join "InvoiceLine" il on t."TrackId" = il."TrackId"
join "Invoice" i on i."InvoiceId" = il."InvoiceId"
join "Customer" c on c."CustomerId" = i."CustomerId"
group by c."CustomerId"
order by total_gasto desc
limit 10;

-- top 10 albuns com musicas mais vendidas em quantidade

select
    a."Title",
    count(*) as quantidade
from "Track" t
join "Album" a on a."AlbumId" = t."AlbumId"
join "InvoiceLine" il on t."TrackId" = il."TrackId"
join "Invoice" i on i."InvoiceId" = il."InvoiceId"
join "Customer" c on c."CustomerId" = i."CustomerId"
group by a."Title"
order by quantidade desc
limit 10;

-- top 10 albuns que mais faturaram

select
    a."AlbumId",
    a."Title",
    sum(i."Total") as quantidade_faturada
from "Track" t
join "Album" a on a."AlbumId" = t."AlbumId"
join "InvoiceLine" il on t."TrackId" = il."TrackId"
join "Invoice" i on i."InvoiceId" = il."InvoiceId"
join "Customer" c on c."CustomerId" = i."CustomerId"
group by a."AlbumId"
order by quantidade_faturada desc
limit 10;

-- top 10 generos com musicas mais vendidas em quantidade

select
    g."Name",
    count(*) as quantidade
from "Track" t
join "Genre" g on g."GenreId" = t."GenreId"
join "InvoiceLine" il on t."TrackId" = il."TrackId"
join "Invoice" i on i."InvoiceId" = il."InvoiceId"
join "Customer" c on c."CustomerId" = i."CustomerId"
group by g."GenreId"
order by quantidade desc
limit 10;

-- top 10 generos que mais faturaram

select
    g."Name",
    sum(i."Total") as quantidade_faturada
from "Track" t
join "Genre" g on g."GenreId" = t."GenreId"
join "InvoiceLine" il on t."TrackId" = il."TrackId"
join "Invoice" i on i."InvoiceId" = il."InvoiceId"
join "Customer" c on c."CustomerId" = i."CustomerId"
group by g."GenreId"
order by quantidade_faturada desc
limit 10;

-- top 10 artistas com musicas mais vendidas em quantidade

select
    art."Name",
    count(*) as quantidade
from "Track" t
join "Album" a on a."AlbumId" = t."AlbumId"
join "Artist" art on art."ArtistId" = a."ArtistId"
join "InvoiceLine" il on t."TrackId" = il."TrackId"
join "Invoice" i on i."InvoiceId" = il."InvoiceId"
join "Customer" c on c."CustomerId" = i."CustomerId"
group by art."ArtistId"
order by quantidade desc
limit 10;

-- top 10 artistas que mais faturaram

select
    art."Name",
    sum(i."Total") as quantidade_faturada
from "Track" t
join "Album" a on a."AlbumId" = t."AlbumId"
join "Artist" art on art."ArtistId" = a."ArtistId"
join "InvoiceLine" il on t."TrackId" = il."TrackId"
join "Invoice" i on i."InvoiceId" = il."InvoiceId"
join "Customer" c on c."CustomerId" = i."CustomerId"
group by art."ArtistId"
order by quantidade_faturada desc
limit 10;

-- top 10 midias com musicas mais vendidas em quantidade

select
    mt."Name",
    count(*) as quantidade
from "Track" t
join "MediaType" mt on mt."MediaTypeId" = t."MediaTypeId"
join "InvoiceLine" il on t."TrackId" = il."TrackId"
join "Invoice" i on i."InvoiceId" = il."InvoiceId"
join "Customer" c on c."CustomerId" = i."CustomerId"
group by mt."MediaTypeId"
order by quantidade desc
limit 10;

-- top 10 midias que mais faturaram

select
    mt."Name",
    sum(i."Total") as quantidade_faturada
from "Track" t
join "MediaType" mt on mt."MediaTypeId" = t."MediaTypeId"
join "InvoiceLine" il on t."TrackId" = il."TrackId"
join "Invoice" i on i."InvoiceId" = il."InvoiceId"
join "Customer" c on c."CustomerId" = i."CustomerId"
group by mt."MediaTypeId"
order by quantidade_faturada desc
limit 10;

-- quantidade de funcionários em cada estado

select
    e."State",
    count(*)
from "Employee" e
group by e."State";


-- quantidade de funcionários em cada país

select
    e."Country",
    count(*)
from "Employee" e
group by e."Country";

-- quantidade de clientes em cada estado

select
    c."State",
    count(*)
from "Customer" c
group by c."State";

-- quantidade de clientes em cada país

select
    c."Country",
    count(*)
from "Customer" c
group by c."Country";







