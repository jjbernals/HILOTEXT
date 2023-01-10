<?php

namespace App\Http\Controllers;

use App\Models\empresa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\servicio_emp;
use App\Models\rep_legal;

class EmpresaController extends Controller
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
        $empresa =DB::table('empresas')->where('documento', $documento)->where('contraseña', $contraseña)->first();
        if($empresa===null){
           
            return redirect('iniciar_empresa')->with('mensaje','Usuario no encontrado o datos erroneos');
        }
        else{
            $_SESSION['estado'] = 'iniciada';
            return redirect('/empresa'.'/'.$documento);
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
        return view('empresa.create');
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
        $datosEmpresa = request()->except('_token');
        $empresa =DB::table('empresas')->where('documento', $datosEmpresa['documento'])->first();
    
        if($empresa===null){
            if($request->hasFile('foto')){
                $datosEmpresa['foto']=$request->file('foto')->store('uploads', 'public');
            }
    
            Empresa::insert($datosEmpresa);
            
            
            return redirect('/repLegal/create');
        }
        else{
            return redirect('/empresa/create')->with('mensaje', 'La empresa ya se encuentra registrada');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\empresa  $empresa
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        session_start();
        if(isset($_SESSION['estado'])){
            if($_SESSION['estado']=='iniciada'){
                $empresa =DB::table('empresas')->where('documento', $id)->first();
                $rep = rep_legal::where('idEmpresa', $id)->first();
                $id=DB::table('empresas')->where('documento', $id)->value('idServicio');
                $servicio = servicio_emp::where('id',$id)->first();
                $_SESSION['estado'] = 'activo';
                return view('empresa.perfilEmpresa', compact('empresa','servicio','rep'));
            }
            return redirect('/');
            
        }
          return redirect('/');  

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\empresa  $empresa
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $empresa =DB::table('empresas')->where('documento', $id)->first();
        return view('empresa.edit', compact('empresa'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\empresa  $empresa
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $documento)
    {
        //
        $datosEmpresa = request()->except(['_token', '_method']);
        if($request->hasFile('foto')){
            $datosEmpresa['foto']=$request->file('foto')->store('uploads', 'public');
        }
        Empresa::where('documento', '=', $documento)->update($datosEmpresa);
        
        return redirect('/empresa'.'/'.$documento);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\empresa  $empresa
     * @return \Illuminate\Http\Response
     */
    public function destroy($documento)
    {
        //   
        DB::table('empresas')->where('documento',$documento)->delete();    
        return redirect('/');
        
    }
}

