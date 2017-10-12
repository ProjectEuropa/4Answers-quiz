@extends('layouts.app')

@section('content')
 <main>
    <div class="container">
      <article class="col-md-8 col-xs-12">
        <section class="article-section">
          <h2 id="search">
            <img id="search-mark" src="image\search-mark.png">【{{ $initial }}】からはじまるキーワード（{{ $keywordsNum }}語)
          </h2>
          <dl>
            @foreach($keywords as $keyword)
            <dt>{{ $keyword->keyword }}</dt>
            <dd class="description">{{ $keyword->description }}
              <p class="text-right">カテゴリー：{{ $keyword->name }}</p>
            </dd>
            @endforeach
        </section>
      </article>
      @include('layouts.sidebar')
    </div>
  </main>
@endsection

@section('js')
<script>
</script>
@endsection