<!DOCTYPE html>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>

<head>
    
    <link href="stylesheet" type="text/css">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    

    <title>Fake News</title>
    <style>
        /* Center the loader */
        #loader {
          position: absolute;
          left: 50%;
          top: 55%;
          z-index: 1;
          width: 120px;
          height: 120px;
          margin: -76px 0 0 -76px;
          border: 12px solid #f3f3f3;
          border-radius: 50%;
          border-top: 12px solid #80aaff;
          animation: spin 2s linear infinite;
        }
    @keyframes spin {
      0% { transform: rotate(0deg); }
      100% { transform: rotate(360deg); }
}

    </style>        
    <meta name="viewport" content="width=device-width">
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    <script>
        function loaddoc() {
            
				
            if (document.getElementById("sample").value == "")
                alert("please enter the text in the box");
            else if(document.getElementById("choose").value=="All")
                {
                     AllHeading();


                }
            else {
                document.getElementById("datasave").innerText = "";
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (this.readyState == 4 && this.status == 200) {
                        
                        document.getElementById("id1").innerHTML = this.responseText;
                        showPage();
                        
                    }
                };
                var url = "/process.jsp?sample=" + document.getElementById("sample").value + "&choose=" + document.getElementById("choose").value+"&run=1";
                console.log(url);
                xhttp.open("GET", url, true);
                xhttp.send();
                StartAnimation();

            }

        }
        </script>
        <script>
            function loaddoc2() {
            if (document.getElementById("sample2").value === "")
                alert("please enter the text in the box")
            else if(document.getElementById("choose2").value==="All")

            {
                All();

            }
            else {
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                        document.getElementById("id1").innerHTML = this.responseText;
                        showPage();
                    }
                };
                var url2 = "/process.jsp?sample2=" + document.getElementById("sample2").value + "&choose2=" + document.getElementById("choose2").value+"&run=1";
                console.log(url2);
                xhttp.open("GET", url2, true);
                xhttp.send();
                StartAnimation();
            }


        }
        
        function SendHeading(i,mxCnt){
					
					var xhr=[];
					var j;
                xhr[i] = new XMLHttpRequest();
					j=i+1;
                    
                url = "/process.jsp?sample=" + document.getElementById("sample").value + "&choose=Model"+j+"&run="+j ;					
                xhr[i].open("GET", url, true);
                xhr[i].onreadystatechange = function(){
                    if (xhr[i].readyState === 4 && xhr[i].status === 200){
                        if(i==0){
									document.getElementById("id1").innerHTML =this.responseText;
							}
							else{
							 document.getElementById("id1").innerHTML = document.getElementById("id1").innerHTML+this.responseText;
							}
							 if (i <mxCnt){
                                SendHeading(i+1,mxCnt)
                                
								}
                                else if(i == mxCnt){
                                    showPage();
                                }
                    }
                };
					
               xhr[i].send();
               
            }  

function AllHeading()
{


		  let  i=0;
		  let mxCnt=3;
          StartAnimation();
		  SendHeading(i,mxCnt);  


		
} //end function All








function Send(i,mxCnt){
					
					var xhr=[];
					var j;
                xhr[i] = new XMLHttpRequest();
					j=i+1;
                    
                url = "/process.jsp?sample2=" + document.getElementById("sample2").value + "&choose2=Model"+j+"&run="+j ;					
                xhr[i].open("GET", url, true);
                xhr[i].onreadystatechange = function(){
                    if (xhr[i].readyState === 4 && xhr[i].status === 200){
                        if(i==0){
									document.getElementById("id1").innerHTML =this.responseText;
							}
							else{
							 document.getElementById("id1").innerHTML = document.getElementById("id1").innerHTML+this.responseText;
							}
							 if (i <mxCnt){
									Send(i+1,mxCnt)
								}
                                else if(i == mxCnt){
                                    showPage();
                                }
                    }
                };
					
               xhr[i].send();
               
            }  

function All()
{


		  let  i=0;
		  let mxCnt=3;
          StartAnimation();
		  Send(i,mxCnt);  


		
} //end function All

function showPage() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("TableHeader").style.display = "block";
  document.getElementById("id1").style.display = "block";
  document.getElementById("NewsHeadline").style.display = "block";
  document.getElementById("NewsContent").style.display = "block";
}
function Start() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("TableHeader").style.display = "none";
}
function StartAnimation() {
  document.getElementById("loader").style.display = "block";
  document.getElementById("TableHeader").style.display = "none";
  document.getElementById("id1").style.display = "none";
  document.getElementById("NewsHeadline").style.display = "none";
  document.getElementById("NewsContent").style.display = "none";
  
}



    </script>
    <meta charset="utf-8">
    <style>
        h1,
        h2 {
            text-align: center;
            height: fit-content;
        }
        
        .tab1 {
            tab-size: 2;
        }
  
        
    </style>
</head>

<body onload="Start()">
    <div class="container">
        <div class="row" style="text-align:center; background-color:rgb(118, 181, 215); color:black; margin: 0">
            <div class="col-sm-2">
                <img  src="CDAC-LOGO.png" style="width: 50%; height: 69px;" >
            </div>
            <div class="col-sm-8">
                <h1 style="font-family: Georgia, Times, serif, Times, serif ">Fake News Detection System</h1>
            </div>
            <div class="col-sm-2">

            </div>
        </div>
        <h2 style="background-color:rgba(208, 212, 93, 0.994); padding: 40px 0px;"> সত্যান্বেষী সংবাদ
            <p style="font-size: medium;font-style: italic;">Know what you read is How much "true"</p>
        </h2>
        <br></br>
    
    
        <p id="NewsHeadline" >
            <a class="btn btn-info btn-lg btn-block" data-toggle="collapse" 
            href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample" 
            data-toggle="collapse" href="#collapse1" class="" aria-expanded="true">Check News Headline
            </a>
            <div class="collapse" id="collapseExample">
                <div class="card card-body">
                    <!-- <form action="/process.jsp" method="get" class="text-center" > -->
                        <form style="margin: 0px 300px;padding: 0px 0px ; text-align:center" action="/process.jsp" method="get" >
                        <input style="color: rgb(3, 1, 5);" type="text" id="sample" placeholder="Please Enter the News..." size="70">
                        <br></br>
                        <input type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" 
                        aria-controls="collapseExample" style="background-color:DodgerBlue;" type="button" onclick="loaddoc()" 
                        class="btn btn-primary" value="Check...">
                
                        <select style="background-color:rgb(5, 146, 29);" id="choose" class="btn btn-primary">
                            <option value="Model1">Model1</option>
                            <option value="Model2">Model2</option>
                            <option value="Model3">Model3</option>
                            <option value="Model1">Model4</option>
                            <option value="All">All</option>   
                        </select>
                    </form>   
    </p>
    </div>
    </div>
     <br></br>
        <p id="NewsContent" >
            <a class="btn btn-info btn-lg btn-block" data-toggle="collapse" href="#collapseExample2" 
            role="button" aria-expanded="false" aria-controls="collapseExample2" data-toggle="collapse" 
            href="#collapse1" class="" aria-expanded="true">Check News content
             </a>
    
            <div class="collapse" id="collapseExample2">
                <div class="card card-body">
    
                    <style>
                        textarea 
                        {
                        width: 500px;
                        height: 150px;
                        }  
                        
                     </style>  
                      
        <form style="margin: 0px 350px;padding: 0px 0px ; text-align:center" action="/process.jsp" method="get" >
            
            <textarea class="text-warning bg-black" id="sample2" placeholder="Please enter the News content"  rows="3"></textarea>
            <br></br>
                     
            <input type="button" data-toggle="collapse" data-target="#collapseExample2" aria-expanded="false" aria-controls="collapseExample2" style="background-color:DodgerBlue;" type="button" onclick="loaddoc2()" class="btn btn-primary" value="Check...">
    
            <select style="background-color:rgb(5, 146, 29);" id="choose2" class="btn btn-primary">
               
                <option value="Model1">Model1</option>
                <option value="Model2">Model2</option>
                <option value="Model3">Model3</option>
                <option value="Model1">Model4</option>
                <option value="All">All</option>
    
            </select>
        </form>
    </p>
    </div>
    </div>
    <br></br>
    <br></br>
    <div id="loader">
    </div>
     <div id="TableHeader" class="text-center"> <h3 style="font-family: Times New Roman, Times, serif "> <b>Predicted Result</b></h3> </div>
     <div id="id1">
    </div>
    <div id="id2">
    </div>
    <div id="id3">
     </div>

    
    <script>
        function btnfun(){
            let text;
            if (confirm("Do you want to save or not?") == true) {
                console.log('helo');
                
                    function datasave(){
                        console.log("inside function");
    
            
                    var xhttp = new XMLHttpRequest();
                    xhttp.onreadystatechange = function () {
                        if (this.readyState == 4 && this.status == 200) {
                            
                            document.getElementById("datasave").innerHTML = this.responseText;
                            // showPage();
                            
                        }
                    }
                    
                    var url = "/create.jsp?decision=" + document.getElementById("id33").value + "&input=" + document.getElementById("input2").innerText.trim()+"&run=2";
                    
                    console.log(url);
                    xhttp.open("GET", url, true);
                    xhttp.send();
                }
                datasave();
      } else {
        text = "You canceled!";
        console.log('cancel');
      }
    }
      </script>
      <div id="datasave"></div>
    
    </div>

</body>

</html>