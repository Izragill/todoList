<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\TodoListModel;

class TodoList extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = TodoListModel::paginate(10);
        return view('todolist.index', ['search' => '','data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $search = TodoListModel::where('name', 'like', '%' . $request->search . '%')->get();

        return view('todolist.index', ['search' => $search]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|min:5',
        ]);

        if ($request->done == "true") {
            $done = 1;
        } else {
            $done = 0;
        }

        $res = new TodoListModel();
        $res->done = $done;
        $res->name = $request->name;
        $res->save();
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show(int $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $done = TodoListModel::find($id);

        if ($done->done === 1) {
            $done->done = 0;
            $done->save();
        } else {
            $done->done = 1;
            $done->save();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        TodoListModel::destroy($id);
    }
}
