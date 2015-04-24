var objectName;
var thisPage = location.href;

// we have to send you back to the top of the topic because of a HTML Help API bug when you call a topic with a hash in the URL
function replaceURL() {
	if (location.hash == "" )
		thisPage = location.href;
	else
		thisPage = location.pathname;
	
	location.replace(thisPage);
	}


function placeObject(objectName) {
		setTimeout(replaceURL, 500);
		location.replace("http://127.0.0.1:3580/National%20Instruments/LabVIEW/LabVIEW/7.1/DropControlOrFunction?drop=" + objectName );
	return false;
}

function findObject(objectName) {
		setTimeout(replaceURL, 500);
		location.replace("http://127.0.0.1:3580/National%20Instruments/LabVIEW/LabVIEW/7.1/HighlightPaletteMenuItem?highlight=" + objectName );
	return false;
}

function searchMacUnixHelp() {
		setTimeout(replaceURL, 500);
		location.replace("http://127.0.0.1:3580/National%20Instruments/LabVIEW/LabVIEW/7.1/SearchMacUnixHelp");
	return false;
}

function openVI(path) {
		setTimeout(replaceURL, 500);
		location.replace("http://127.0.0.1:3580/National%20Instruments/LabVIEW/LabVIEW/7.1/OpenVIFromHelp?VI=" + path );
	return false;
}

function openLLB(path) {
		setTimeout(replaceURL, 500);
		location.replace("http://127.0.0.1:3580/National%20Instruments/LabVIEW/LabVIEW/7.1/OpenVIFromHelp?LLB=" + path );
	return false;
}

function openProj(path) {
		setTimeout(replaceURL, 500);
		location.replace("http://127.0.0.1:3580/National%20Instruments/LabVIEW/LabVIEW/7.1/OpenVIFromHelp?PROJ=" + path );
	return false;
}

function findExamples(categoryID) {
		setTimeout(replaceURL, 500);
		location.replace("http://127.0.0.1:3580/National%20Instruments/LabVIEW/LabVIEW/7.1/ExampleFinderCommand?name=leaf&value=" + categoryID );
	return false;
}
