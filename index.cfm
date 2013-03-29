<!DOCTYPE html>
<html>
<head>
	<title></title>
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<style>
		body{
			margin:0;
			padding:0;
			font-family: arial;
		}
		#container{
			/*width:960px;*/
			margin:0 auto;
		}
		#sidebar, #content{
			overflow:scroll;
			overflow-x:hidden;
		}
		#sidebar{
			float:left;
			width:15%;
		}
		#sidebar ul{
			list-style-type: none;
			margin:0;
			padding:0;
		}
		.subnav li{
			margin-left:30px;
		}
		#content{
			float:right;
			width:85%;
		}
		#content h3{
			margin-left: 10px;
		}
		#content section{
			border: 1px solid #cfcfcf;
			border-radius: 5px;
			margin-bottom:5px;
			margin: 10px;
			padding:10px;
		}

		::-webkit-scrollbar {
		    width: 12px;
		}

		::-webkit-scrollbar-track {
		    border-radius: 0px;
		    background-color:#fff;
		}
		::-webkit-scrollbar-track:hover {
		    background-color:#cfcfcf;
		}
		 
		::-webkit-scrollbar-thumb {
		    border-radius: 0px;
		    background-color:#cfcfcf;
		    /*-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.5); */
		}
		::-webkit-scrollbar-thumb:hover {
		    border-radius: 0px;
		    background-color:#a9a9a9;
		    /*-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.5); */
		}
	</style>
</head>	
<body>
	<div id="container">
		<div id="sidebar">
			<ul>
				<li>
					Test
					<ul class="subnav">
						<li>Lifehacker</li>
					</ul>
				</li>
			</ul>
		</div>
		<div id="content">
			<h3>Lifehacker &raquo;</h3>
			<hr />
			<section>
				<a href="#" class="title">Title</a><a href="#"><img src="" /></a>
				<article>
					Content here
				</article>
			</section>
			<section>
				<a href="#" class="title">Title</a><a href="#"><img src="" /></a>
				<article>
					Content here
				</article>
			</section>
			<section>
				<a href="#" class="title">Title</a><a href="#"><img src="" /></a>
				<article>
					Content here
				</article>
			</section>
			<section>
				<a href="#" class="title">Title</a><a href="#"><img src="" /></a>
				<article>
					Content here
				</article>
			</section>
			<section>
				<a href="#" class="title">Title</a><a href="#"><img src="" /></a>
				<article>
					Content here
				</article>
			</section>
			<section>
				<a href="#" class="title">Title</a><a href="#"><img src="" /></a>
				<article>
					Content here
				</article>
			</section>
			<section>
				<a href="#" class="title">Title</a><a href="#"><img src="" /></a>
				<article>
					Content here
				</article>
			</section>
			<section>
				<a href="#" class="title">Title</a><a href="#"><img src="" /></a>
				<article>
					Content here
				</article>
			</section>
			<section>
				<a href="#" class="title">Title</a><a href="#"><img src="" /></a>
				<article>
					Content here
				</article>
			</section>
			<section>
				<a href="#" class="title">Title</a><a href="#"><img src="" /></a>
				<article>
					Content here
				</article>
			</section>
			<section>
				<a href="#" class="title">Title</a><a href="#"><img src="" /></a>
				<article>
					Content here
				</article>
			</section>
			<section>
				<a href="#" class="title">Title</a><a href="#"><img src="" /></a>
				<article>
					Content here
				</article>
			</section>
			<section>
				<a href="#" class="title">Title</a><a href="#"><img src="" /></a>
				<article>
					Content here
				</article>
			</section>
		</div>
	</div>
	<script>
	$(function(){
		var browser_height = $(window).height(),
			doc_width = $(document).width();
		
		$('#container').css('height', browser_height);	
		$('#sidebar').css('height', browser_height);
		$('#content').css('height', browser_height);

		doc_width -= 20;
		$('#container').css('width', doc_width);	

		$(window).on('resize', function(){
			browser_height = $(window).height();
			$('#container').css('height', browser_height);	
			$('#sidebar').css('height', browser_height);	
			$('#content').css('height', browser_height);	
		});
		$('#content').scroll(function(){
	        console.log($('#content').scrollTop());
	        console.log($('#content').height());
		  if($('#content').scrollTop() == $('#content').height() ) {
	        $('#content').append('<h1>Test</h1>');
	        console.log($('#content').height());

		  }
		});
	    
	    

	    //     // $.ajax({
	    //     // url: "loadmore.php",
	    //     // success: function(html)
	    //     // {
	    //     //     if(html)
	    //     //     {
	    //     //         $("#postswrapper").append(html);
	    //     //         $('div#loadmoreajaxloader').hide();
	    //     //     }else
	    //     //     {
	    //     //         $('div#loadmoreajaxloader').html('<center>No more posts to show.</center>');
	    //     //     }
	    //     // }
	    //     // });
	    // }


	});
	</script>
</body>
</html>