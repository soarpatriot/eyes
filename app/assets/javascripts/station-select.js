
$(function(){
    var api = { baseUrl: "http://localhost:9000/v1",apiKey: "fff" }; 
    var criterionType = $("#collect_criterion_criteriable_type").val();
    var criterionId = $("#collect_criterion_criteriable_id").val();
    var provinceUrl = api.baseUrl + "/provinces.json?api_key=" + api.apiKey
    var cityUrl = api.baseUrl + "/cities.json?api_key=" + api.apiKey

    var changeTypeCollection = function(url, data,selected){

      var provinceOption = "";
      $.get(url,data, function(provinces){
         $.each(provinces,function(index,province){
           provinceOption += '<option value="'+province.id+'">'+province.name+'</option>'; 
         });
         $("#collect_criterion_criteriable_id").empty();
         $("#collect_criterion_criteriable_id").append(provinceOption);
      });
      if(selected){
        $("#collect_criterion_criteriable_id").val(selected);
      } 
    } 
    var initTypes = function(criterionType){
      if(criterionType === 'Province'){
        changeTypeCollection(provinceUrl, null, criterionId);
      }
      if(criterionType === 'City'){
        changeTypeCollection(cityUrl, null, criterionId);
      }
 
    }
    initTypes(criterionType);
    $("#collect_criterion_criteriable_type").change(function(){
      initTypes($(this).val()); 
    });
});
