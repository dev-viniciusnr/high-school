					for(i=2;i<=100;i++){
					if(i % 2==0){
						if(i % 20==0){
							document.write('<td>'+i+'</td></tr>');
							if(i < 100){
								document.write("<tr class='trcolor'>");
							}
						}
						else{
							document.write('<td>'+i+'</td>');
						}
					}
				}
