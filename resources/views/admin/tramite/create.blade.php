@extends('admin.template')

@section('content')



<div class="container box box-primary">

      <div class="page-header  text-center">
        <h1>
          <i class="fa fa-book"style="color:green"></i>
          Modelo C4 <small>[Agregar]</small>
        </h1>
      </div>

   <div class="col-xs-12 col-md-8 col-md-offset-2 col-xl-6 col-xl-offset-3">
        @if (count($errors) > 0)
            @include('admin.partials.errors')
        @endif

      {!! Form::open(['route'=>'tramite.store','name'=>'tram']) !!}                 
      
          @include('admin.tramite.partials.form')

       {!! Form::close() !!}
    </div>
 </div>
@endsection
@section('js')
<script type="text/javascript">
  $(document).ready(function(){
   
    $("#proces").change(function(){
      var proceso = $(this).val();
      var req = document.getElementById('demos');
      $.get('requisito/'+proceso, function(data){

           $('#demos').empty();
           $.each(data,function(i, subcatlist){
           
              $('#demos').append('<input value="' + data[i].id + '" type="checkbox" required="required">' + data[i].descripcion + '&nbsp;</input>');
                req.style.display = 'block'; 
            });
           

      });
    });
    $("#SelectRecep").change(function(){
      var SelectRecep = $(this).val();
      var nromodelo = document.getElementById('nromodelo');
      var remitente = document.getElementById('remitente');
      
      var nombreproyecto = document.getElementById('nombreproyecto');
  
      var proc = document.getElementById('proc');
      var req = document.getElementById('demos');
      if(SelectRecep== 'Nivel4'){
        
         nromodelo.style.display = 'block';
         remitente.style.display = 'block';
         
         nombreproyecto.style.display = 'block';
        
         proc.style.display = 'block';
        
            
      }else if(SelectRecep == 'Nivel1'){
    
         nromodelo.style.display = 'block';
         remitente.style.display = 'none';
       
         nombreproyecto.style.display = 'block';
        
         proc.style.display = 'none';
         req.style.display = 'none'; 
      }
    });

  });
</script>
 @endsection

