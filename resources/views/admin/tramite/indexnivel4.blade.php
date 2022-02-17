@extends('admin.template')

@section('content')

<div class="container box box-primary">  

        <div class="page-header  text-center">
           <h1>
           <i class="fa fa-user-secret"style="color:green"></i>
           MODELO C4 NIVEL 4 <small></small>
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
  Nivel 4: El código
    
  </p>

  

  <div id="allSampleContent" class="p-4 w-full">
    <script id="code">
    function init() {

      // Since 2.2 you can also author concise templates with method chaining instead of GraphObject.make
      // For details, see https://gojs.net/latest/intro/buildingObjects.html
      const $ = go.GraphObject.make;  //for conciseness in defining node templates

      myDiagram =
        $(go.Diagram, "myDiagramDiv",  //Diagram refers to its DIV HTML element by id
          { "undoManager.isEnabled": true });

      // when the document is modified, add a "*" to the title and enable the "Save" button
      myDiagram.addDiagramListener("Modified", e => {
        const button = document.getElementById("SaveButton");
        if (button) button.disabled = !myDiagram.isModified;
        const idx = document.title.indexOf("*");
        if (myDiagram.isModified) {
          if (idx < 0) document.title += "*";
        } else {
          if (idx >= 0) document.title = document.title.substr(0, idx);
        }
      });

      // To simplify this code we define a function for creating a context menu button:
      function makeButton(text, action, visiblePredicate) {
        return $("ContextMenuButton",
          $(go.TextBlock, text),
          { click: action },
          // don't bother with binding GraphObject.visible if there's no predicate
          visiblePredicate ? new go.Binding("visible", "", (o, e) => o.diagram ? visiblePredicate(o, e) : false).ofObject() : {});
      }

      const nodeMenu =  // context menu for each Node
        $("ContextMenu",
          makeButton("Copy",
            (e, obj) => e.diagram.commandHandler.copySelection()),
          makeButton("Delete",
            (e, obj) => e.diagram.commandHandler.deleteSelection()),
          $(go.Shape, "LineH", { strokeWidth: 2, height: 1, stretch: go.GraphObject.Horizontal }),
          makeButton("Add top port",
            (e, obj) => addPort("top")),
          makeButton("Add left port",
            (e, obj) => addPort("left")),
          makeButton("Add right port",
            (e, obj) => addPort("right")),
          makeButton("Add bottom port",
            (e, obj) => addPort("bottom"))
        );

        const portSize = new go.Size(8, 8);

        const portMenu =  // context menu for each port
        $("ContextMenu",
          makeButton("Swap order",
            (e, obj) => swapOrder(obj.part.adornedObject)),
          makeButton("Remove port",
            // in the click event handler, the obj.part is the Adornment;
            // its adornedObject is the port
            (e, obj) => removePort(obj.part.adornedObject)),
          makeButton("Change color",
            (e, obj) => changeColor(obj.part.adornedObject)),
          makeButton("Remove side ports",
            (e, obj) => removeAll(obj.part.adornedObject))
        );

      // the node template
      // includes a panel on each side with an itemArray of panels containing ports
      myDiagram.nodeTemplate =
        $(go.Node, "Table",
          {
            locationObjectName: "BODY",
            locationSpot: go.Spot.Center,
            selectionObjectName: "BODY",
            contextMenu: nodeMenu
          },
          new go.Binding("location", "loc", go.Point.parse).makeTwoWay(go.Point.stringify),

          // the body
          $(go.Panel, "Auto",
            {
              row: 1, column: 1, name: "BODY",
              stretch: go.GraphObject.Fill
            },
            $(go.Shape, "Rectangle",
              {
                
                fill: "#edebeb", stroke: "black" , strokeWidth: 0, 
                minSize: new go.Size(200, 40)
              }),
            $(go.TextBlock,
              { margin: 10, textAlign: "center", font: "bold 14px Segoe UI,sans-serif", stroke: "#484848", editable: true },
              new go.Binding("text", "name").makeTwoWay())
          ),  // end Auto Panel body

          // the Panel holding the left port elements, which are themselves Panels,
          // created for each item in the itemArray, bound to data.leftArray
          $(go.Panel, "Vertical",
            new go.Binding("itemArray", "leftArray"),
            {
              row: 1, column: 0,
              itemTemplate:
                $(go.Panel,
                  {
                    _side: "left",  // internal property to make it easier to tell which side it's on
                    fromSpot: go.Spot.Left, toSpot: go.Spot.Left,
                    fromLinkable: true, toLinkable: true, cursor: "pointer",
                    contextMenu: portMenu
                  },
                  new go.Binding("portId", "portId"),
                  $(go.Shape, "Rectangle",
                    {
                      stroke: null, strokeWidth: 0,
                      desiredSize: portSize,
                      margin: new go.Margin(1, 0)
                    },
                    new go.Binding("fill", "portColor"))
                )  // end itemTemplate
            }
          ),  // end Vertical Panel

          // the Panel holding the top port elements, which are themselves Panels,
          // created for each item in the itemArray, bound to data.topArray
          $(go.Panel, "Horizontal",
            new go.Binding("itemArray", "topArray"),
            {
              row: 0, column: 1,
              itemTemplate:
                $(go.Panel,
                  {
                    _side: "top",
                    fromSpot: go.Spot.Top, toSpot: go.Spot.Top,
                    fromLinkable: true, toLinkable: true, cursor: "pointer",
                    contextMenu: portMenu
                  },
                  new go.Binding("portId", "portId"),
                  $(go.Shape, "Rectangle",
                    {
                      stroke: null, strokeWidth: 0,
                      desiredSize: portSize,
                      margin: new go.Margin(0, 1)
                    },
                    new go.Binding("fill", "portColor"))
                )  // end itemTemplate
            }
          ),  // end Horizontal Panel

          // the Panel holding the right port elements, which are themselves Panels,
          // created for each item in the itemArray, bound to data.rightArray
          $(go.Panel, "Vertical",
            new go.Binding("itemArray", "rightArray"),
            {
              row: 1, column: 2,
              itemTemplate:
                $(go.Panel,
                  {
                    _side: "right",
                    fromSpot: go.Spot.Right, toSpot: go.Spot.Right,
                    fromLinkable: true, toLinkable: true, cursor: "pointer",
                    contextMenu: portMenu
                  },
                  new go.Binding("portId", "portId"),
                  $(go.Shape, "Rectangle",
                    {
                      stroke: null, strokeWidth: 0,
                      desiredSize: portSize,
                      margin: new go.Margin(1, 0)
                    },
                    new go.Binding("fill", "portColor"))
                )  // end itemTemplate
            }
          ),  // end Vertical Panel

          // the Panel holding the bottom port elements, which are themselves Panels,
          // created for each item in the itemArray, bound to data.bottomArray
          $(go.Panel, "Horizontal",
            new go.Binding("itemArray", "bottomArray"),
            {
              row: 2, column: 1,
              itemTemplate:
                $(go.Panel,
                  {
                    _side: "bottom",
                    fromSpot: go.Spot.Bottom, toSpot: go.Spot.Bottom,
                    fromLinkable: true, toLinkable: true, cursor: "pointer",
                    contextMenu: portMenu
                  },
                  new go.Binding("portId", "portId"),
                  $(go.Shape, "Rectangle",
                    {
                      stroke: null, strokeWidth: 0,
                      desiredSize: portSize,
                      margin: new go.Margin(0, 1)
                    },
                    new go.Binding("fill", "portColor"))
                )  // end itemTemplate
            }
          )  // end Horizontal Panel
        );  // end Node

      // an orthogonal link template, reshapable and relinkable
      myDiagram.linkTemplate =
        $(CustomLink,  // defined below
          {
            routing: go.Link.AvoidsNodes,
            corner: 4,
            curve: go.Link.JumpGap,
            reshapable: true,
            resegmentable: true,
            relinkableFrom: true,
            relinkableTo: true
          },
          new go.Binding("points").makeTwoWay(),
          $(go.Shape, { stroke: "#2F4F4F", strokeWidth: 2 })
        );

      // support double-clicking in the background to add a copy of this data as a node
      myDiagram.toolManager.clickCreatingTool.archetypeNodeData = {
        name: "User",
        leftArray: [],
        rightArray: [],
        topArray: [],
        bottomArray: []
      };

      myDiagram.contextMenu =
        $("ContextMenu",
          makeButton("Pegar",
            (e, obj) => e.diagram.commandHandler.pasteSelection(e.diagram.toolManager.contextMenuTool.mouseDownPoint),
            o => o.diagram.commandHandler.canPasteSelection(o.diagram.toolManager.contextMenuTool.mouseDownPoint)),
          makeButton("Deshacer",
            (e, obj) => e.diagram.commandHandler.undo(),
            o => o.diagram.commandHandler.canUndo()),
          makeButton("Rehacer",
            (e, obj) => e.diagram.commandHandler.redo(),
            o => o.diagram.commandHandler.canRedo())
        );

      // load the diagram from JSON data
      load();
    }


  // This custom-routing Link class tries to separate parallel links from each other.
  // This assumes that ports are lined up in a row/column on a side of the node.
  class CustomLink extends go.Link {
    findSidePortIndexAndCount(node, port) {
      const nodedata = node.data;
      if (nodedata !== null) {
        const portdata = port.data;
        const side = port._side;
        const arr = nodedata[side + "Array"];
        const len = arr.length;
        for (let i = 0; i < len; i++) {
          if (arr[i] === portdata) return [i, len];
        }
      }
      return [-1, len];
    }

    computeEndSegmentLength(node, port, spot, from) {
      const esl = super.computeEndSegmentLength(node, port, spot, from);
      const other = this.getOtherPort(port);
      if (port !== null && other !== null) {
        const thispt = port.getDocumentPoint(this.computeSpot(from));
        const otherpt = other.getDocumentPoint(this.computeSpot(!from));
        if (Math.abs(thispt.x - otherpt.x) > 20 || Math.abs(thispt.y - otherpt.y) > 20) {
          const info = this.findSidePortIndexAndCount(node, port);
          const idx = info[0];
          const count = info[1];
          if (port._side == "top" || port._side == "bottom") {
            if (otherpt.x < thispt.x) {
              return esl + 4 + idx * 8;
            } else {
              return esl + (count - idx - 1) * 8;
            }
          } else {  // left or right
            if (otherpt.y < thispt.y) {
              return esl + 4 + idx * 8;
            } else {
              return esl + (count - idx - 1) * 8;
            }
          }
        }
      }
      return esl;
    }

    hasCurviness() {
      if (isNaN(this.curviness)) return true;
      return super.hasCurviness();
    }

    computeCurviness() {
      if (isNaN(this.curviness)) {
        const fromnode = this.fromNode;
        const fromport = this.fromPort;
        const fromspot = this.computeSpot(true);
        const frompt = fromport.getDocumentPoint(fromspot);
        const tonode = this.toNode;
        const toport = this.toPort;
        const tospot = this.computeSpot(false);
        const topt = toport.getDocumentPoint(tospot);
        if (Math.abs(frompt.x - topt.x) > 20 || Math.abs(frompt.y - topt.y) > 20) {
          if ((fromspot.equals(go.Spot.Left) || fromspot.equals(go.Spot.Right)) &&
            (tospot.equals(go.Spot.Left) || tospot.equals(go.Spot.Right))) {
            const fromseglen = this.computeEndSegmentLength(fromnode, fromport, fromspot, true);
            const toseglen = this.computeEndSegmentLength(tonode, toport, tospot, false);
            const c = (fromseglen - toseglen) / 2;
            if (frompt.x + fromseglen >= topt.x - toseglen) {
              if (frompt.y < topt.y) return c;
              if (frompt.y > topt.y) return -c;
            }
          } else if ((fromspot.equals(go.Spot.Top) || fromspot.equals(go.Spot.Bottom)) &&
            (tospot.equals(go.Spot.Top) || tospot.equals(go.Spot.Bottom))) {
            const fromseglen = this.computeEndSegmentLength(fromnode, fromport, fromspot, true);
            const toseglen = this.computeEndSegmentLength(tonode, toport, tospot, false);
            const c = (fromseglen - toseglen) / 2;
            if (frompt.x + fromseglen >= topt.x - toseglen) {
              if (frompt.y < topt.y) return c;
              if (frompt.y > topt.y) return -c;
            }
          }
        }
      }
      return super.computeCurviness();
    }
  }
  // end CustomLink class


    // Add a port to the specified side of the selected nodes.
    function addPort(side) {
      myDiagram.startTransaction("addPort");
      myDiagram.selection.each(node => {
        // skip any selected Links
        if (!(node instanceof go.Node)) return;
        // compute the next available index number for the side
        let i = 0;
        while (node.findPort(side + i.toString()) !== node) i++;
        // now this new port name is unique within the whole Node because of the side prefix
        const name = side + i.toString();
        // get the Array of port data to be modified
        const arr = node.data[side + "Array"];
        if (arr) {
          // create a new port data object
          const newportdata = {
            portId: name,
            portColor: getPortColor()
          };
          // and add it to the Array of port data
          myDiagram.model.insertArrayItem(arr, -1, newportdata);
        }
      });
      myDiagram.commitTransaction("addPort");
    }

    // Exchange the position/order of the given port with the next one.
    // If it's the last one, swap with the previous one.
    function swapOrder(port) {
      const arr = port.panel.itemArray;
      if (arr.length >= 2) {  // only if there are at least two ports!
        for (let i = 0; i < arr.length; i++) {
          if (arr[i].portId === port.portId) {
            myDiagram.startTransaction("swap ports");
            if (i >= arr.length - 1) i--;  // now can swap I and I+1, even if it's the last port
            const newarr = arr.slice(0);  // copy Array
            newarr[i] = arr[i + 1];  // swap items
            newarr[i + 1] = arr[i];
            // remember the new Array in the model
            myDiagram.model.setDataProperty(port.part.data, port._side + "Array", newarr);
            myDiagram.commitTransaction("swap ports");
            break;
          }
        }
      }
    }

    // Remove the clicked port from the node.
    // Links to the port will be redrawn to the node's shape.
    function removePort(port) {
      myDiagram.startTransaction("removePort");
      const pid = port.portId;
      const arr = port.panel.itemArray;
      for (let i = 0; i < arr.length; i++) {
        if (arr[i].portId === pid) {
          myDiagram.model.removeArrayItem(arr, i);
          break;
        }
      }
      myDiagram.commitTransaction("removePort");
    }

    // Remove all ports from the same side of the node as the clicked port. Elimine todos los puertos del mismo lado del nodo que el puerto en el que se hizo clic.
    function removeAll(port) {
      myDiagram.startTransaction("removePorts");
      const nodedata = port.part.data;
      const side = port._side;  // there are four property names, all ending in "Array"
      myDiagram.model.setDataProperty(nodedata, side + "Array", []);  // an empty Array
      myDiagram.commitTransaction("removePorts");
    }

    // Change the color of the clicked port. Cambie el color del puerto en el que se hizo clic.
    function changeColor(port) {
      myDiagram.startTransaction("colorPort");
      const data = port.data;
      myDiagram.model.setDataProperty(data, "portColor", getPortColor());
      myDiagram.commitTransaction("colorPort");
    }

    // Use some pastel colors for ports Usa algunos colores pastel para los puertos.
    function getPortColor() {
      const portColors = ["#fae3d7", "#d6effc", "#ebe3fc", "#eaeef8", "#fadfe5", "#6cafdb", "#66d6d1"]
      return portColors[Math.floor(Math.random() * portColors.length)];
    }

    // Save the model to / load it from JSON text shown on the page itself, not in a database.
    function save() {
      document.getElementById("mySavedModel").value = myDiagram.model.toJson();
      myDiagram.isModified = false;
      var mySavedModel = document.getElementById('mySavedModel');
    }
    function load() {
      myDiagram.model = go.Model.fromJson(document.getElementById("mySavedModel").value);
    
      // When copying a node, we need to copy the data that the node is bound to.
      // This JavaScript object includes properties for the node as a whole, and
      // four properties that are Arrays holding data for each port.
      // Those arrays and port data objects need to be copied too.
      // Thus Model.copiesArrays and Model.copiesArrayObjects both need to be true.

      // Link data includes the names of the to- and from- ports;
      // so the GraphLinksModel needs to set these property names:
      // linkFromPortIdProperty and linkToPortIdProperty.

      // Al copiar un nodo, necesitamos copiar los datos a los que está vinculado el nodo.
      // Este objeto JavaScript incluye propiedades para el nodo como un todo, y
      // cuatro propiedades que son matrices que contienen datos para cada puerto.
      // Esas matrices y objetos de datos de puerto también deben copiarse.
      // Por lo tanto, tanto Model.copiesArrays como Model.copiesArrayObjects deben ser verdaderos.

      // Los datos del enlace incluyen los nombres de los puertos de origen y destino;
      // por lo que GraphLinksModel necesita establecer estos nombres de propiedad:
      // linkFromPortIdProperty y linkToPortIdProperty.
    }
    window.addEventListener('DOMContentLoaded', init);
  </script>

<div id="sample">



  <div id="myDiagramDiv" style="width: 600px; height: 500px; border: 1px solid black; position: relative; -webkit-tap-highlight-color: rgba(255, 255, 255, 0);"><canvas tabindex="0" width="598" height="498" style="position: absolute; top: 0px; left: 0px; z-index: 2; user-select: none; touch-action: none; width: 598px; height: 498px;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Este texto se muestra si su navegador no es compatible con el elemento Canvas HTML.</font></font></canvas><div style="position: absolute; overflow: auto; width: 598px; height: 498px; z-index: 1;"><div style="position: absolute; width: 1px; height: 1px;"></div></div></div><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
  Agregar:
  </font></font><button onclick="addPort('top')"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Container</font></font></button>
  <button onclick="addPort('bottom')"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Class</font></font></button>
  <button onclick="addPort('left')"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Associate</font></font></button>
  <button onclick="addPort('right')"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Component</font></font></button>
 
  <div>
    <div>

    @can('tramite.create') 
      <button id="SaveButton" onclick="save()" disabled=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Ahorrar</font></font></button>
      
      
        
     
      <button href="{{route('/')}}" onclick="load()"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Carga</font></font></button><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
      @endcan
      Guardar modelo de diagrama en formato JSON:
    </font></font></div>

 
          </div>

    <textarea id="mySavedModel" style="width:100%;height:250px">{{ $tramite->mySavedModel }}  
    
    </textarea>


    @can('tramite.create') 
    {!! Form::model($tramite, array('route' => array('tramite.update', $tramite))) !!}

    <input type="hidden" name="_method" value="PUT">
    <div class="form-group" id="mySavedModel" style="display: block;">
          <label for="mySavedModel">Codigo Json:</label>
          {!! 
              Form::text(
                  'mySavedModel', 
                  null, 
                  array(
                      'class'=>'form-control',
                      'placeholder' => 'Ingrese nombre...',
                                    'autofocus' => 'autofocus'
                  )
              ) 
          !!}
        </div>
    <div class="form-group">
          <label class="control-label" for="tipo">Modelo:</label>
            {!! Form:: select(
                     'tipo',
                        [
                          
                          'Nivel4' => 'Nivel 4',
                       
                        ],
                        null,
                           ['
                             class'=>'form-control','id'=>'SelectRecep'
                           ]
                      )
             !!}
        </div>
        <div class="form-group" id="nromodelo" style="display: block;">
            <label for="nromodelo">Privacidad:</label>
            {!! 
                Form::text(
                    'nromodelo', 
                    null, 
                    array(
                        'class'=>'form-control',
                        'placeholder' => 'Ingrese numero...',
                                      'autofocus' => 'autofocus'
                    )
                ) 
            !!}
        </div>
        <div class="form-group" id="remitente" style="display: block;">
              
              <label class="control-label" for="solicitante_id">ID Reunion:</label>


              {!! Form::select('solicitante_id', $solicitantes, null, ['class' => 'form-control']) !!}
        </div>
       
        <div class="form-group" id="nombreproyecto" style="display: block;">
          <label for="nombreproyecto">Nombre Proyecto:</label>
          {!! 
              Form::text(
                  'nombreproyecto', 
                  null, 
                  array(
                      'class'=>'form-control',
                      'placeholder' => ' ',
                                    'autofocus' => 'autofocus'
                  )
              ) 
          !!}
        </div>
    
     

      <div class="form-group" id="demos" style="display: none;">

           <ul class="list-unstyled">
             <li>
              
                   <input type="checkbox" name="cuadro" value=" " > <br><br>
              
              </li>
          </ul>
       </div>  
      <br> 

  <div class="form-group">
      {!! Form::submit('Guardar', array('class'=>'btn btn-primary')) !!}
      <a href="{{ route('tramite.index') }}" class="btn btn-warning">Cancelar</a>
  </div>





{!! Form::close() !!}
@endcan

  </div>

  

   
  </body>

 
    </div>  
  </div>





@stop