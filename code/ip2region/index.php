<?php
/**
 * PHP Ip2region Test Page
 */
//  $data  = Ip2region::btreeSearchString($_GET["ip"]);
 $data  = Ip2region::binarySearch(ip2long($_GET["ip"]));
 echo json_encode($data);
