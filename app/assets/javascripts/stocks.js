var lookup_fun;

lookup_fun = function() {
	$('#stock-search').on('ajax:success', function(event,data,status) {
		$('#main-block').replaceWith(data)
		lookup_fun();
	})	
}

$('document').ready(function(){
	lookup_fun();
})