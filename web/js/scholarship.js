/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function() {
     $('#scholarshipSection').hide();
     
     $('#scholarship').click(function(){
         
        var checked_scholarship_radio = $('input:radio[name=scholarship]:checked').val();
        if(checked_scholarship_radio==='yes')
            $.ajax({
                url: "scholarshipTypes.txt",
                dataType: "text",
                method:"get",
                success: 
                  function(result) {
                     $('#scholarshipTypes').html(result);
                     $('#scholarshipSection').show();
                     }
            });
        else {
           $('#scholarshipSection').hide();  
        }
           
        });
 });

