#Ejercicio: MercadoLibre

#Recibo el id del usuario por parametro

SELLER_ID=$1
SITE_ID="MLA"

resultado=$(curl -X GET https://api.mercadolibre.com/sites/$SITE_ID/search?seller_id=$SELLER_ID | jp -c \
"results.\
{ID: id, Title: title, Category_ID: category_id, Name: domain_id}")

echo $resultado < $HOME/log/resultados.log










