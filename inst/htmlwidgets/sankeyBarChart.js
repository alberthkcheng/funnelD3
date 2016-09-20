HTMLWidgets.widget({

  name: "sankeyBarChart",

  type: "output",

  factory: function(el, width, height) {

    var sankeybar = new SankeyBarchart(el, width, height);
    return {
      renderValue: function(x){
        var temp = HTMLWidgets.dataframeToD3(x.data);
        dataset = _.map(temp, function(obj){ return {enter:obj, exit:{label:obj.label+" Exit"}}});
        var options = x.options;
        sankeybar.render(dataset, options);
      },
      resize: function(width, height) {
        sankeybar.resize(width, height);
      },
      sankey: sankeybar
    };
  }
});
