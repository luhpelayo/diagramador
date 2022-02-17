<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\SaveAreaRequest;
use App\Models\Area;

class AreaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('permission:area.create')->only(['create','atore']);
        $this->middleware('permission:area.index')->only('index');
        $this->middleware('permission:area.edit')->only(['edit','update']);
        $this->middleware('permission:area.show')->only('show');
        $this->middleware('permission:area.destroy')->only('destroy');

    }
    public function index(Request $request)
    {
       // dd($request->get('descripcion'));
      //$areas = Area::all();
      $areas = Area::descripcion($request->get('descripcion'))->orderby('id','DESC')->paginate(5);
        //dd($areas);

     return view('admin.area.index', compact('areas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.area.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SaveAreaRequest $request)
    {
        $area=new Area;
        $area->descripcion=$request->get('descripcion');
        
    //dd($area);
        $area->save();

        $message = $area ? ' agregado correctamente!' : ' NO pudo agregarse!';
        
        return redirect()->route('area.index')->with('message', $message);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Area $area)
    {
        return $area;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Area $area)
    {
    
        return view('admin.area.edit', compact('area'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(SaveAreaRequest $request, Area $area)
    {
        $area->fill($request->all());
        $updated = $area->save();
        $message = $updated ? ' actualizado correctamente!' : ' NO pudo actualizarse!';
        
        return redirect()->route('area.index')->with('message', $message);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Area $area)
    {
        $deleted = $area->delete();

        $message = $deleted ? ' eliminado correctamente!' : 'NO pudo eliminarse!';
        
        return redirect()->route('area.index')->with('message', $message);
    }
}
