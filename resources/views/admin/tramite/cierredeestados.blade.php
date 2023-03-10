@extends('admin.template')

@section('content')

<div class="container box box-primary">

        <div class="page-header  text-center">
           <h1>
           <i class="fa fa-user-secret"style="color:green"></i>
              RESPONDER LA SOLICITUD <small></small>
          </h1>
        </div><!-- /.box-header -->             
    <div class="col-xs-12 col-md-8 col-md-offset-2 col-xl-6 col-xl-offset-3">
        
        @if (count($errors) > 0)
            @include('admin.partials.errors')
        @endif
        
        {!! Form::model($tramite, array('route' => array('tramite.update', $tramite))) !!}

            <input type="hidden" name="_method" value="PUT">
            <label for="nromodelo">Area:</label>
                    <h2>{{ $tramite->nromodelo }}</h2>
            <div class="form-group" id="nromodelo" style="display: none;">
                    <label for="nromodelo">Nro. Modelo:</label>
                  
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

                <label for="nromodelo">Nro. de Solicitud:</label>
                    <h2>{{ $tramite->id }}</h2>
            <div class="form-group" id="nromodelo" style="display: none;">
                    <label for="nromodelo">Nro. Modelo:</label>
                  
                    {!! 
                        Form::text(
                            'nromodelo', 
                            null, 
                            array(
                                'class'=>'form-control',
                                'placeholder' => 'Ingrese numero ...',
                                              'autofocus' => 'autofocus' 
                            )
                        ) 
                    !!}
                </div>
                

            <div class="form-group">
                  <label class="control-label" for="tipo">Estado:</label>
                    {!! Form:: select(
                             'tipo',
                                [
                                  ''=>'Seleccion la opcion',
                                  'Terminado' => 'Terminado',
                                  'No Terminado'=>'No Terminado'
                                ],
                                null,
                                   ['
                                     class'=>'form-control','id'=>'SelectRecep'
                                   ]
                              )
                     !!}
          </div>
         
                <div class="form-group" id="remitente" style="display: none;">
                      
                      <label class="control-label" for="solicitante_id">Remitente C.I:</label>
 

                      {!! Form::select('solicitante_id', $solicitantes, null, ['class' => 'form-control']) !!}
                </div>
               
                <div class="form-group" id="nombremodelo" style="display: none;">
                  <label for="nombremodelo">Nombre Modelo:</label>
                  {!! 
                      Form::text(
                          'nombremodelo', 
                          null, 
                          array(
                              'class'=>'form-control',
                              'placeholder' => 'Ingrese nombre...',
                                            'autofocus' => 'autofocus'
                          )
                      ) 
                  !!}
                </div>
            
                <div class="form-group" id="proc" style="display: none;">
                      <label class="control-label" for="process_id">Proceso:</label>
                      {!! Form::select('process_id', $process, null, ['class' => 'form-control','id'=>'proces']) !!}
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
        
    </div>  
  </div>

@stop