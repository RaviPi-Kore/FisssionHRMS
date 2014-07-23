var reader = new FileReader(),
    i=0,
    numFiles = 0,
    imageFiles;

function readFile() {
    reader.readAsDataURL(imageFiles[i])
}


reader.onloadend = function(e) {
	$("#dynamicimg").attr('src',e.target.result);
    
};

function img(val) {
    imageFiles = document.getElementById('image').files
    numFiles = imageFiles.length;
    readFile();           
}

function img1(val) {
	
	document.getElementById("dynamicimg").style.visibility="visible";
    imageFiles = document.getElementById('file').files;
    numFiles = imageFiles.length;
    readFile();   
    

}

function changeProfilePicture(){
	$("#changePicture").dialog({
		 height: 200,
	     width: 350
	});
}