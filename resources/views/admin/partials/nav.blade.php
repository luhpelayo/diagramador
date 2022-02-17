
<div class="wrapper" >

      <header class="main-header">
        <!-- Logo -->
        <a href="{{route('home')}}" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>A</b>LT</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Pizarra</b>Pelayo</span>

        </a>

        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
             
              <li class="dropdown user user-menu">

              
       <!--DESDE AQUI-->
                    <ul class="nav navbar-nav">
                    @include('admin.partials.menu-user')
                    </ul>
     <!-- HASTA AQUI -->

              </li>

            </ul>
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="{{asset('dist/img/user2-160x160.jpg')}}" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
               <p>{{ Auth::user()->name }}</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <!-- search form -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MENU PRINCIPAL</li>
           @can('roles.index' || 'users.index' || 'permissions.index')
            <li class="treeview">
              <a href="#">
                <i class="fa fa-fw fa-users"></i>
                <span>Manage Users</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
               @can('users.index')
                <li><a href="{{route('users.index')}}"><i class="fa fa-circle-o"></i> Usuarios</a></li>
               @endcan
               @can('roles.index')
                <li><a href="{{route('roles.index')}}"><i class="fa fa-circle-o"></i> Roles</a></li>
               @endcan
               @can('permissions.index')
                <li><a href="{{route('permissions.index')}}"><i class="fa fa-circle-o"></i> Permisos</a>
                </li>
                @endcan
              </ul>
            </li>
           @endcan

         
           @can('sliders.index' || 'area.index' || 'requirements.index' || 'processes.index' || 'estado.index' || 'solicitante.index')
            <li class="treeview">
              <a href="#">
                <i class="fa fa-cog"></i> <span>Nuevo Proyecto</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                  @can('sliders.index')
                  <li class="active"><a href="{{ route('sliders.index') }}"><i class="fa fa-circle-o"></i>Sliders</a></li>
                  @endcan
                  @can('area.index')
                  <li class="active"><a href="{{ route('area.index') }}"><i class="fa fa-circle-o"></i>Username</a></li>
                  @endcan
                  @can('estado.index')
                  <li><a href="{{ route('estado.index') }}"><i class="fa fa-circle-o"></i>Estados</a></li>
                  @endcan
                  @can('solicitante.index')
                  <li><a href="{{ route('solicitante.index') }}"><i class="fa fa-circle-o"></i>ID Reunion</a></li>
                  @endcan
              </ul>
            </li>
            @endcan

           @can('tramite.index')
            <li class="treeview">
              <a href="#">
                <i class="fa fa-file-word-o"></i><span>Cargar Proyecto</span><i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                
                <li><a href="{{ route('indexdespachado') }}"><i class="fa fa-circle-o"></i>Nivel 1</a></li>
                <li><a href="{{ route('tramite.index') }}"><i class="fa fa-circle-o"></i>Nivel 4</a></li>

              </ul>
            </li>
            @endcan

          
           
         

            <li class="treeview">
              <a href="#">
                <i class="fa fa-pie-chart"></i>
                <span>Reportes</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="{{ route('students.index') }}"><i class="fa fa-circle-o"></i>Estudiantes Data</a></li>
                <li><a href="{{ route('report.index') }}"><i class="fa fa-circle-o"></i>Estudiantes Report</a></li>
                {{--<li><a href="{{ route('report') }}"><i class="fa fa-circle-o"></i>Estudiantes Flot</a></li>--}}
                {{--<li><a href="{{ route('report') }}"><i class="fa fa-circle-o"></i>Estudiantes Inline charts</a></li>--}}
              </ul>
            </li>
            {{--TODO --}}
            {{--<li class="treeview">--}}
              {{--<a href="#">--}}
                {{--<i class="fa fa-laptop"></i>--}}
                {{--<span>Planificación</span>--}}
                {{--<i class="fa fa-angle-left pull-right"></i>--}}
              {{--</a>--}}
              {{--<ul class="treeview-menu">--}}
                {{--<li><a href="pages/UI/general.html"><i class="fa fa-circle-o"></i> General</a></li>--}}
                {{--<li><a href="pages/UI/icons.html"><i class="fa fa-circle-o"></i> Icons</a></li>--}}
                {{--<li><a href="pages/UI/buttons.html"><i class="fa fa-circle-o"></i> Buttons</a></li>--}}
                {{--<li><a href="pages/UI/sliders.html"><i class="fa fa-circle-o"></i> Sliders</a></li>--}}
                {{--<li><a href="pages/UI/timeline.html"><i class="fa fa-circle-o"></i> Timeline</a></li>--}}
                {{--<li><a href="pages/UI/modals.html"><i class="fa fa-circle-o"></i> Modals</a></li>--}}
              {{--</ul>--}}
            {{--</li>--}}
            {{----}}

         
            
           
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->

      <div class="content-wrapper">
        <!-- Content Header (Page header) -->

        <section class="content-header">
          
          @if(\Session::has('message'))
            @include('admin.partials.message')
          @endif
         @yield('content')


        </section>

        <!-- Main content -->

      </div><!-- /.content-wrapper -->

      
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 2.3.0
        </div>
        <strong>Copyright &copy; 2020 <a href="#">MKT Pelayo</a>.</strong> All rights reserved.
      </footer>


      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
      <div class="control-sidebar-bg"></div>
    </div><!-- ./wrapper -->