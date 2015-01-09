$(function(){
  $('#map').vectorMap({
    map: 'europe_mill_en',
    onRegionTipShow: function(e, el, code){
      el.html(el.html()+' (Armies - '+1+')');
    }
  })
});
    
  