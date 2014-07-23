	function searchInGrid(searchBoxId,gridId) {
    		var searchText = document.getElementById(searchBoxId).value;
    		var targetTable = document.getElementById(gridId);
    		var targetTableColCount;

    		//Loop through table rows
    		for (var rowIndex = 0; rowIndex < targetTable.rows.length; rowIndex++) {
    			var rowData = '';

    			//Get column count from header row
    			if (rowIndex == 0) {
    				targetTableColCount = targetTable.rows.item(rowIndex).cells.length;
    				continue; //do not execute further code for header row.
    			}

    			//Process data rows. (rowIndex >= 1)
    			for (var colIndex = 0; colIndex < targetTableColCount; colIndex++) {
    				var cellText = '';

    				if (navigator.appName == 'Microsoft Internet Explorer')
    					cellText = targetTable.rows.item(rowIndex).cells.item(colIndex).innerText;
    				else
    					cellText = targetTable.rows.item(rowIndex).cells.item(colIndex).textContent;

    				rowData += cellText;
    			}

    			// Make search case insensitive.
    			rowData = rowData.toLowerCase();
    			searchText = searchText.toLowerCase();

    			//If search term is not found in row data
    			//then hide the row, else show
    			if (rowData.indexOf(searchText) == -1)
    				targetTable.rows.item(rowIndex).style.display = 'none';
    			else
    				targetTable.rows.item(rowIndex).style.display = 'table-row';
    		}
	}
	
	
	function isEmpty(fieldname){
		if($.trim($("#"+fieldname).val()).length > 0){
			return false;
		}else{
			return true;
		}
	}
	
	function containsOnlyNumerics(fieldname){
		if(isNaN($.trim($("#"+fieldname).val()))){
			return false;
		}else{
			return true;
		}
	}
	
	function containsOnlyAlphabets(fieldname) {
        var regexp = /^[a-zA-Z ]*$/;
        if(regexp.test($.trim($("#"+fieldname).val()))){
        	return true;
        }else{
        	return false;
        }
	}

	function containsOnlyAlphanumerics(fieldname) {
        var regexp = /^[0-9a-zA-Z ]*$/;
        if(regexp.test($.trim($("#"+fieldname).val()))){
        	return true;
        }else{
        	return false;
        }
	}
	
	function formatValue(value){
		if($.trim(value).length > 0){
			return $.trim(value);
		}else{
			return null;
		}
		
	}
	
	
//	function dateConverter(dateParam){
//		var date = new Date(dateParam);
//		formatedDate = addZeroIfLessThan10(date.getMonth()+1) +"/"+ addZeroIfLessThan10(date.getDate()) + "/" + date.getFullYear();
//		return formatedDate;
//		return dateParam;
//	}
	
	
	function addZeroIfLessThan10(num){
		var str;
		if(num%10 > 0 && num < 10  ){
			str = "0"+num;
		}else{
			str = num;
		}
		return str;
	}
