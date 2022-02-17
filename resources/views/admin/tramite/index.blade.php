@section('content')
<div class="box box-primary">
<div class="page-header text-center">
    <h1> MODELO C4 NIVEL 4
        @can('tramite.create') 
        <a href="{{ route('tramite.create') }}" class="btn btn-success"><i class="fa fa-plus-circle"></i> Crear Nuevo</a>
        @endcan
    </h1>
</div>
<div class="box-body">              
<table class="table table-bordered table-hover"  id="dataTable_tramites">
        <thead>
            <tr>
                <th>Estado</th>
                <th>Fecha de creacion</th>
                <th>Privacidad</th>
                <th>Nombre del Proyecto</th>  
                <th>Modelo</th>
                <th>Usuario</th>
                <th>Nro. Modelo</th>
              
              
                <th text-center style="width: 120px;">Acciones </th>
            </tr>
        </thead>         
   <tbody>
 
    @foreach($tramites as $tramite)
         <tr>
            <th>
            @if($tramite->estado_id == '1')
                    <span class="label label-info">Solo Yo</span>
                @else
                    <span class="label label-danger">Compartido</span>
                @endif

                @extends('admin.template')

             </th>    
             <td>{{ $tramite->created_at}}</td>
             <td>{{ $tramite->nromodelo }}</td> 
             <td>{{ $tramite->nombreproyecto }}</td>
             <td>{{ $tramite->tipo }}</td>
             <td>{{ $tramite->user_id}}</td>    
             <td>{{ $tramite->id}}</td>   
           
            <td>
             
                <a href="{{ route('tramite.indexnivel4', $tramite->id) }}" class="btn btn-primary">
                    <i class="fa fa-pencil-square"></i> Pizarra  
                </a>
             
                @can('tramite.create') 
                <a href="{{ route('derivacion', $tramite->id) }}" class="btn btn-sm btn-info">
                    <i class="fa fa-send"> Compartir</i>
                </a>
                @endcan 
        
            
                
                

               @can('roles.destroy')
              {!! Form::open(['route' => ['tramite.destroy', $tramite],'style'=>'display:inline']) !!}
                        <input type="hidden" name="_method" value="DELETE">
                        <button onClick="return confirm('Eliminar registro?')" class="btn btn-sm btn-danger">
                          <i class="fa fa-trash-o"></i>
                        </button>
              {!! Form::close() !!}  
              @endcan 
            
             
            </td> 
        </tr>
    @endforeach

    </tbody>
   </table>
  
</div> 
</div> 
@endsection
@section('js')
     <script>
        // dataTable
        $(document).ready(function() {
            $('#dataTable_tramites').DataTable({
                //responsive: true,
                //scrollX: true,
                pageLength: 10,
                order: [[ 0, "desc" ]],
                lengthMenu: [ 2, 4, 10, 20, 50 ],
                columnDefs: [
                    { "orderable": false, "targets": 6 }
                ]
            });
        });
    </script>
 @endsection