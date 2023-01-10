<?php

namespace App\Http\Controllers;

use App\Models\operario;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\servicio_ope;



class OperarioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        session_start();
        $documento=$_GET['usu'];
        $contraseña=$_GET['con'];
        $operario =DB::table('operarios')->where('documento', $documento)->where('contraseña', $contraseña)->first();
        if($operario===null){
           
            return redirect('iniciar_operario')->with('mensaje','Usuario no encontrado o datos erroneos') ;
        }
        else{
            $_SESSION['estado'] = 'iniciada';
            return redirect('/operario'.'/'.$documento);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('operario.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $datosOperario = request()->except('_token');
        $operario =DB::table('operarios')->where('documento', $datosOperario['documento'])->first();
    
        if($operario===null){
            if($request->hasFile('foto')){
                $datosOperario['foto']=$request->file('foto')->store('uploads', 'public');
            }
    
            Operario::insert($datosOperario);
            
            
            return redirect('/iniciar_sesion');
        }
        else{
            return redirect('/operario/create')->with('mensaje', 'El operario ya se encuentra en el sistema');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\operario  $operario
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        session_start();
        if (isset($_SESSION['estado'])) {
            if ($_SESSION['estado'] == 'iniciada') {
                $operario = DB::table('operarios')->where('documento', $id)->first();
                $id = DB::table('operarios')->where('documento', $id)->value('idServicio');
                $servicio = servicio_ope::where('id', $id)->first();
                return view('operario.perfilOperario', compact('operario', 'servicio'));
            }
            return redirect('/');
        }
        return redirect('/');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\operario  $operario
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $operario =DB::table('operarios')->where('documento', $id)->first();
        return view('operario.edit', compact('operario'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\operario  $operario
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $documento)
    {
        //        
        $datosOperario = request()->except(['_token', '_method']);
        if($request->hasFile('foto')){
            $datosOperario['foto']=$request->file('foto')->store('uploads', 'public');
        }
        Operario::where('documento', '=', $documento)->update($datosOperario);
        
        return redirect('/operario'.'/'.$documento);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\operario  $operario
     * @return \Illuminate\Http\Response
     */
    public function destroy($documento)
    {
        //
        DB::table('operarios')->where('documento',$documento)->delete();       
        return redirect('/');
    }
}

