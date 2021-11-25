<?php
$con = mysqli_connect("localhost", "root", "archit2000", "myshoppingcart")or die($mysqli_error($con));
if(session_id() == '') {
    session_start();
}
