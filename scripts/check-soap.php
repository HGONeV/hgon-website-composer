<?php

$client = new \SoapClient("http://rkw-kompetenzzentrum.rkw.local/index.php?type=1445105145&wsdl=1&no_varnish=1",
    array(
        'trace'      => 1,
        'exceptions' => 0,
        'cache_wsdl' => WSDL_CACHE_NONE,
        'login' => '',
        '"password' => '',
    )
);

# $result = $client->setOrderStatus(41,0);
 echo "<pre>";
# var_dump($result);

echo "<hr>";

# $result = $client->findOrdersByTimestamp(12);
# $result = $client->findAllPublications();
# $result = $client->findEventsByTimestamp(1507230588);
# $result = $client->findEventReservationsByTimestamp();
# $result = $client->findEventReservationAddPersonsByTimestamp();
# $result = $client->findEventPlacesByTimestamp();
$result = $client->findAllSeries();
# $result = $client->findFeUsersByTimestamp(12);
# $result = $client->findFeUserGroupsByTimestamp(12);
var_dump($result);
