HTMLWidgets.widget({

  name: "sankeyBarChart",

  type: "output",

  factory: function(el, width, height) {

    var sankeybar = d3.select(el);

    return {
      renderValue: function(x) {
        var data = x.data

        var svgContainer =  sankeybar.append("svg")
                 .attr("width",300)
                 .attr("height", 300);

        var circle = svgContainer.selectAll("circle")
                                 .data(data)
                                 .enter()
                                 .append("circle")
                                 .attr("cx", function (d) { return d; })
                                 .attr("cy", function (d) { return d; })
                                 .attr("r",  function (d) { return d; })
                                 .style("fill", "purple");

      },

      resize: function(width, height) {

        // forward resize on to sigma renderers
        for (var name in sig.renderers)
          sig.renderers[name].resize(width, height);
      },
    };
  }
});
