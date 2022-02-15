                <div class="form-group">
                  <label class="control-label" for="tipo">Modelo:</label>
                    {!! Form:: select(
                             'tipo',
                                [
                                  ''=>'Seleccione tipo de modelo',
                                  'Nivel4' => 'Nivel 4',
                                  'Nivel1'=>'Nivel 1'
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
                    {!! Form:: select(
                             'nromodelo',
                                [
                                  ''=>'Seleccione opción',
                                  'Publico' => 'Publico',
                                  'Privado' => 'Privado',
                           
                               
                                ],
                                null,
                                 
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
                              'placeholder' => 'Ingrese nombre...',
                                            'autofocus' => 'autofocus'
                          )
                      ) 
                  !!}
                </div>
               
                <div class="form-group" id="proc" style="display: block;">
                      <label class="control-label" for="process_id">formulario:</label>
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