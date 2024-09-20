<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}"/>
    <title>Document</title>
    <link href={{ asset('public/css/css.css') }} rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="{{ asset('public/js/js.js') }}"></script>
</head>
<body>

<div class="container">

    <div class="header">
        <form action="{{ route('todolist.store') }}" class="create_task" id="create" method="post">
            @csrf
            @method('POST')
            <div class="header_title">Создать новую задачу</div>
            <div class="header_title_label"><label for="">Выполнено</label><input type="checkbox" name="done"></div>
            <div class="header_title_label"><label for="">Название</label><input type="text" name="name"></div>
            <input type="submit" value="Сохранить" class="header_title_submit">

        </form>

        <form action="{{ route('todolist.create') }}" class="search_task">
            <div class="header_title">Поиск</div>
            <div class="search_title_label">
                <input type="text" name="search" class="search_input">
                <input type="submit" value="Найти" class="search_title_submit">
                <div class="search_title_submit">
                    <a href="{{ route('todolist.index') }}">Очистить поиск</a>
                </div>
            </div>
        </form>
    </div>

    <div class="form-errors"></div>

    <div class="todo_list_header">
        <div>Выполнено</div>
        <div>Название</div>
        <div>Действия</div>
    </div>

    <hr class="hr">

    @if($search != '')
        @foreach ($search as $key=>$item)

            <div class="todo_list" id="{{ $item->id }}">
                <form action="{{ route('todolist.update', $item->id) }}" method="post" item_id="{{ $item->id }}"
                      id="update">
                    @csrf
                    @method('PUT')
                    <input type="checkbox" id="{{ $item->id }}"
                           @if($item->done == 1)
                               checked
                        @endif
                    >
                </form>

                <div>{{ $item->name }}</div>

                <form action="{{ route('todolist.destroy', $item->id) }}" method="post" item_id="{{ $item->id }}"
                      id="delete">
                    <input type="hidden" name="_token" form_id="{{ $item->id }}" value="{{ csrf_token() }}"/>
                    @method('DELETE')
                    <input type="submit" class="delete_background" value=""/>
                </form>
            </div>
        @endforeach
    @else
        @foreach ($data as $key=>$item)

            <div class="todo_list" id="{{ $item->id }}">
                <form action="{{ route('todolist.update', $item->id) }}" method="post" item_id="{{ $item->id }}"
                      id="update">
                    @csrf
                    @method('PUT')
                    <input type="checkbox" id="{{ $item->id }}"
                           @if($item->done == 1)
                               checked
                        @endif
                    >
                </form>

                <div>{{ $item->name }}</div>

                <form action="{{ route('todolist.destroy', $item->id) }}" method="post" item_id="{{ $item->id }}"
                      id="delete">
                    <input type="hidden" name="_token" form_id="{{ $item->id }}" value="{{ csrf_token() }}"/>
                    @method('DELETE')
                    <input type="submit" class="delete_background" value=""/>
                </form>
            </div>
        @endforeach

        <div class="pagination">
            {{ $data->links('vendor.pagination.bootstrap-4') }}
        </div>
    @endif
</div>

</body>
</html>
