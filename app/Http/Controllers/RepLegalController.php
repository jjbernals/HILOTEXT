<?php

namespace App\Http\Controllers;

use App\Models\rep_legal;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class RepLegalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('repLegal.create');
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
        $datosRep = request()->except('_token');
        $rep =DB::table('rep_legals')->where('documento', $datosRep['documento'])->first();
    
        if($rep===null){
            $emp = DB::table('empresas')->where('documento', $datosRep['idEmpresa'])->first();
            if ($emp === null) {
                return redirect('/repLegal/create')->with('mensaje', 'La empresa no se encuentra en el sistema');
            }
            if($request->hasFile('foto')){
                $datosRep['foto']=$request->file('foto')->store('uploads', 'public');
            }
            Rep_legal::insert($datosRep);
        
            return redirect('/iniciar_sesion');
        }
        else{
            return redirect('/repLegal/create')->with('mensaje', 'El representante legal ya se encuentra registrado');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\rep_legal  $rep_legal
     * @return \Illuminate\Http\Response
     */
    public function show(rep_legal $rep_legal)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\rep_legal  $rep_legal
     * @return \Illuminate\Http\Response
     */
    public function edit(rep_legal $rep_legal)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\rep_legal  $rep_legal
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, rep_legal $rep_legal)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\rep_legal  $rep_legal
     * @return \Illuminate\Http\Response
     */
    public function destroy(rep_legal $rep_legal)
    {
        //
    }
}
