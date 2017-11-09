$.ajax({
          url: "https://www.google.com/",  
          type: "POST",   
          data: "",
          success: function(data) {
        	        alert("success");
        	    },
          error: function(e) {
        	        alert("error");
        	    }	  
    });