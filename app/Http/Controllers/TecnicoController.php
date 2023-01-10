<?php

namespace App\Http\Controllers;

use App\Models\tecnico;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\servicio_tec;



class TecnicoController extends Controller
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
        $tecnico =DB::table('tecnicos')->where('documento', $documento)->where('contraseña', $contraseña)->first();
        if($tecnico===null){
           
            return redirect('iniciar_tecnico')->with('mensaje','Usuario no encontrado o datos erroneos') ;
        }
        else{
            $_SESSION['estado'] = 'iniciada';
            return redirect('/tecnico'.'/'.$documento);
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
        return view('tecnico.create');
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
        $datosTecnico = request()->except('_token');
        $tecnico =DB::table('tecnicos')->where('documento', $datosTecnico['documento'])->first();
    
        if($tecnico===null){
            if($request->hasFile('foto')){
                $datosTecnico['foto']=$request->file('foto')->store('uploads', 'public');
            }
    
            Tecnico::insert($datosTecnico);
            
            
            return redirect('/iniciar_sesion');
        }
        else{
            return redirect('/tecnico/create')->with('mensaje', 'El tecnico ya se encuentra en el sistema');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\tecnico  $tecnico
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        session_start();
        if(isset($_SESSION['estado'])){
            if($_SESSION['estado']=='iniciada'){
                $tecnico =DB::table('tecnicos')->where('documento', $id)->first();
                $id=DB::table('tecnicos')->where('documento', $id)->value('idServicio');
                $servicio = servicio_tec::where('id',$id)->first();
                return view('tecnico.perfilTecnico', compact('tecnico','servicio'));
            }
            return redirect('/');
            
        }
          return redirect('/'); 

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\tecnico  $tecnico
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $tecnico =DB::table('tecnicos')->where('documento', $id)->first();
        return view('tecnico.edit', compact('tecnico'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\tecnico  $tecnico
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $documento)
    {
        //
        $datosTecnico = request()->except(['_token', '_method']);
        if($request->hasFile('foto')){
            $datosTecnico['foto']=$request->file('foto')->store('uploads', 'public');
        }
        Tecnico::where('documento', '=', $documento)->update($datosTecnico);
        
        return redirect('/tecnico'.'/'.$documento);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\tecnico  $tecnico
     * @return \Illuminate\Http\Response
     */
    public function destroy($documento)
    {
        //
        DB::table('tecnicos')->where('documento',$documento)->delete();       
        return redirect('/');
    }
}
