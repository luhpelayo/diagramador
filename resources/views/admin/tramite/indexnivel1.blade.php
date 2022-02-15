@extends('admin.template')

@section('content')

<div class="container box box-primary">  

        <div class="page-header  text-center">
           <h1>
           <i class="fa fa-user-secret"style="color:green"></i>
               MODELO C4 NIVEL 1 <small></small>
          </h1>
        </div><!-- /.box-header -->             
    <div class="page">
        
        
      

       

            <input type="hidden" name="_method" value="PUT">
             
        
            <div class="form-group col-xs-6">
              <label for="nombreproyecto">Nombre del Proyecto:</label>
              <h2>{{ $tramite->nombreproyecto }}</h2>
          </div>
          <div class="form-group col-xs-6">
              <label for="nromodelo">Privacidad:</label>
                <h2>{{ $tramite->nromodelo }}</h2>
          </div>
         


  <body>
  <script src="https://unpkg.com/gojs@2.2.2/release/go.js"></script>
  <p>
    Nivel 1: El diagrama de contexto del sistema
    <a href=""></a>muestra el sistema de software que está construyendo y cómo encaja en el mundo en términos de las personas que lo utilizan y los otros sistemas de software con los que interactúa
    <a href=""></a>
  
  </p>
  <div id="allSampleContent" class="p-4 w-full">
  <script id="code">
    function init() {

      // Since 2.2 you can also author concise templates with method chaining instead of GraphObject.make
      // For details, see https://gojs.net/latest/intro/buildingObjects.html
      const $ = go.GraphObject.make;

      myDiagram =
        $(go.Diagram, "myDiagramDiv",
          {
            "undoManager.isEnabled": true,
            layout: $(go.TreeLayout,
              { // this only lays out in trees nodes connected by "generalization" links
                angle: 90,
                path: go.TreeLayout.PathSource,  // links go from child to parent
                setsPortSpot: false,  // keep Spot.AllSides for link connection spot
                setsChildPortSpot: false,  // keep Spot.AllSides
                // nodes not connected by "generalization" links are laid out horizontally
                arrangement: go.TreeLayout.ArrangementHorizontal
              })
          });

      // show visibility or access as a single character at the beginning of each property or method
      function convertVisibility(v) {
        switch (v) {
          case "public": return "+";
          case "private": return "-";
          case "protected": return "#";
          case "package": return "~";
          default: return v;
        }
      }

      // the item template for properties
      var propertyTemplate =
        $(go.Panel, "Horizontal",
          // property visibility/access
          $(go.TextBlock,
            { isMultiline: false, editable: false, width: 12 },
            new go.Binding("text", "visibility", convertVisibility)),
          // property name, underlined if scope=="class" to indicate static property
          $(go.TextBlock,
            { isMultiline: false, editable: true },
            new go.Binding("text", "name").makeTwoWay(),
            new go.Binding("isUnderline", "scope", s => s[0] === 'c')),
          // property type, if known
          $(go.TextBlock, "",
            new go.Binding("text", "type", t => t ? ": " : "")),
          $(go.TextBlock,
            { isMultiline: false, editable: true },
            new go.Binding("text", "type").makeTwoWay()),
          // property default value, if any
          $(go.TextBlock,
            { isMultiline: false, editable: false },
            new go.Binding("text", "default", s => s ? " = " + s : ""))
        );

      // the item template for methods
      var methodTemplate =
        $(go.Panel, "Horizontal",
          // method visibility/access
          $(go.TextBlock,
            { isMultiline: false, editable: false, width: 12 },
            new go.Binding("text", "visibility", convertVisibility)),
          // method name, underlined if scope=="class" to indicate static method
          $(go.TextBlock,
            { isMultiline: false, editable: true },
            new go.Binding("text", "name").makeTwoWay(),
            new go.Binding("isUnderline", "scope", s => s[0] === 'c')),
          // method parameters
          $(go.TextBlock, "()",
            // this does not permit adding/editing/removing of parameters via inplace edits
            new go.Binding("text", "parameters", function (parr) {
              var s = "(";
              for (var i = 0; i < parr.length; i++) {
                var param = parr[i];
                if (i > 0) s += ", ";
                s += param.name + ": " + param.type;
              }
              return s + ")";
            })),
          // method return type, if any
          $(go.TextBlock, "",
            new go.Binding("text", "type", t => t ? ": " : "")),
          $(go.TextBlock,
            { isMultiline: false, editable: true },
            new go.Binding("text", "type").makeTwoWay())
        );

      // this simple template does not have any buttons to permit adding or
      // removing properties or methods, but it could!
      myDiagram.nodeTemplate =
        $(go.Node, "Auto",
          {
            locationSpot: go.Spot.Center,
            fromSpot: go.Spot.AllSides,
            toSpot: go.Spot.AllSides
          },
          $(go.Shape, { fill: "lightyellow" }),
          $(go.Panel, "Table",
            { defaultRowSeparatorStroke: "black" },
            // header
            $(go.TextBlock,
              {
                row: 0, columnSpan: 2, margin: 3, alignment: go.Spot.Center,
                font: "bold 12pt sans-serif",
                isMultiline: false, editable: true
              },
              new go.Binding("text", "name").makeTwoWay()),
            // properties
            $(go.TextBlock, "Properties",
              { row: 1, font: "italic 10pt sans-serif" },
              new go.Binding("visible", "visible", v => !v).ofObject("PROPERTIES")),
            $(go.Panel, "Vertical", { name: "PROPERTIES" },
              new go.Binding("itemArray", "properties"),
              {
                row: 1, margin: 3, stretch: go.GraphObject.Fill,
                defaultAlignment: go.Spot.Left, background: "lightyellow",
                itemTemplate: propertyTemplate
              }
            ),
            $("PanelExpanderButton", "PROPERTIES",
              { row: 1, column: 1, alignment: go.Spot.TopRight, visible: false },
              new go.Binding("visible", "properties", arr => arr.length > 0)),
            // methods
            $(go.TextBlock, "Methods",
              { row: 2, font: "italic 10pt sans-serif" },
              new go.Binding("visible", "visible", v => !v).ofObject("METHODS")),
            $(go.Panel, "Vertical", { name: "METHODS" },
              new go.Binding("itemArray", "methods"),
              {
                row: 2, margin: 3, stretch: go.GraphObject.Fill,
                defaultAlignment: go.Spot.Left, background: "lightyellow",
                itemTemplate: methodTemplate
              }
            ),
            $("PanelExpanderButton", "METHODS",
              { row: 2, column: 1, alignment: go.Spot.TopRight, visible: false },
              new go.Binding("visible", "methods", arr => arr.length > 0))
          )
        );

      function convertIsTreeLink(r) {
        return r === "generalization";
      }

      function convertFromArrow(r) {
        switch (r) {
          case "generalization": return "";
          default: return "";
        }
      }

      function convertToArrow(r) {
        switch (r) {
          case "generalization": return "Triangle";
          case "aggregation": return "StretchedDiamond";
          default: return "";
        }
      }

      myDiagram.linkTemplate =
        $(go.Link,
          { routing: go.Link.Orthogonal },
          new go.Binding("isLayoutPositioned", "relationship", convertIsTreeLink),
          $(go.Shape),
          $(go.Shape, { scale: 1.3, fill: "white" },
            new go.Binding("fromArrow", "relationship", convertFromArrow)),
          $(go.Shape, { scale: 1.3, fill: "white" },
            new go.Binding("toArrow", "relationship", convertToArrow))
        );

      // setup a few example class nodes and relationships
      var nodedata = [
        {
          key: 1,
          name: "BankAccount",
          properties: [
            { name: "owner", type: "String", visibility: "public" },
            { name: "balance", type: "Currency", visibility: "public", default: "0" }
          ],
          methods: [
            { name: "deposit", parameters: [{ name: "amount", type: "Currency" }], visibility: "public" },
            { name: "withdraw", parameters: [{ name: "amount", type: "Currency" }], visibility: "public" }
          ]
        },
        {
          key: 11,
          name: "Person",
          properties: [
            { name: "name", type: "String", visibility: "public" },
            { name: "birth", type: "Date", visibility: "protected" }
          ],
          methods: [
            { name: "getCurrentAge", type: "int", visibility: "public" }
          ]
        },
        {
          key: 12,
          name: "Student",
          properties: [
            { name: "classes", type: "List<Course>", visibility: "public" }
          ],
          methods: [
            { name: "attend", parameters: [{ name: "class", type: "Course" }], visibility: "private" },
            { name: "sleep", visibility: "private" }
          ]
        },
        {
          key: 13,
          name: "Professor",
          properties: [
            { name: "classes", type: "List<Course>", visibility: "public" }
          ],
          methods: [
            { name: "teach", parameters: [{ name: "class", type: "Course" }], visibility: "private" }
          ]
        },
        {
          key: 14,
          name: "Course",
          properties: [
            { name: "name", type: "String", visibility: "public" },
            { name: "description", type: "String", visibility: "public" },
            { name: "professor", type: "Professor", visibility: "public" },
            { name: "location", type: "String", visibility: "public" },
            { name: "times", type: "List<Time>", visibility: "public" },
            { name: "prerequisites", type: "List<Course>", visibility: "public" },
            { name: "students", type: "List<Student>", visibility: "public" }
          ]
        }
      ];
      var linkdata = [
        { from: 12, to: 11, relationship: "generalization" },
        { from: 13, to: 11, relationship: "generalization" },
        { from: 14, to: 13, relationship: "aggregation" }
      ];
      myDiagram.model = new go.GraphLinksModel(
        {
          copiesArrays: true,
          copiesArrayObjects: true,
          nodeDataArray: nodedata,
          linkDataArray: linkdata
        });
    }

    window.addEventListener('DOMContentLoaded', init);
  </script>

  <div id="sample">
    <div id="myDiagramDiv" style="border: 1px solid black; width: 100%; height: 600px; position: relative; -webkit-tap-highlight-color: rgba(255, 255, 255, 0);"><canvas tabindex="0" width="1246" height="598" style="position: absolute; top: 0px; left: 0px; z-index: 2; user-select: none; touch-action: none; width: 1246px; height: 598px;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Este texto se muestra si su navegador no es compatible con el elemento Canvas HTML.</font></font></canvas><div style="position: absolute; overflow: auto; width: 1246px; height: 598px; z-index: 1;"><div style="position: absolute; width: 1px; height: 1px;"></div></div></div>

  </pre></div>
  </body>



            
        
            @can('tramite.edit')
            <div class="box-body col-xs-12">
                {!! Form::submit('Actualizar', array('class'=>'btn btn-primary')) !!}
                <a href="" target="_blank" class="btn btn-warning">GUARDAR </a>
            </div>
           @endcan
      
        
    </div>  
  </div>

@stop