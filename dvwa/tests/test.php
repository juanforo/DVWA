<?php

class MyProceduralTest extends PHPunit_Framework_Testcase {

        /*
         * Testing the addition function
         */

        public function testAddition(){
                include('dvwa/function.php'); // must include if tests are for non OOP code
                $result = my_addition(1,1);
                $this->assertEquals(2, $result);
        }
}
?>
