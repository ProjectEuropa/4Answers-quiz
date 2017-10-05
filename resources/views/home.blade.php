@extends('layouts.app')

@section('content')
<main>
    <div class="container">
      <article class="col-md-8 col-xs-12">
        <section class="article-section">
          <h2 id="what-is">
            <img id="what-is-mark" src="image\what-is-mark.png">ビジネスマナークイズとは?
          </h2>
          <p>ビジネスマナークイズとはビジネスマナーに関するクイズを出題するWEBアプリです。</p>
          <p>何度もトライしてみて正解率100%を目指してみてください。</p>
        </section>
        <section class="article-section">
          <h2 id="directory">
            <img id="directory-mark" src="image\directory-icon.png">出題設定
          </h2>
          <form action="{{ url('/') }}" method="post">
            @foreach($categories as $category)
            <label>
                <input type="checkbox" name="categories[]" value="{{ $category->id }}" checked>{{ $category->name }}</label>
            @endforeach
            <div class="">全項目チェック
              <button type="button" name="check_all" id="check-all" value="1">ON</button>
              <button type="button" name="check_all_off" id="check-all-off" value="1">OFF</button>
            </div>
            <button type="submit" class="btn btn-primary">出題開始</button>
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
          </form>
        </section>
        <section class="article-section">
          <h2 id="graph">
            <img id="graph-mark" src="image\graph-icon.png">ランキング
          </h2>
          <canvas id="chart" height="200" width="400"></canvas>
        </section>
        <section class="article-section">
          <h2 id="news">
            <img id="news-mark" src="image\news-icon.png">お知らせ情報
          </h2>
          <dl>
            <dt>2017/10/06</dt>
            <dd>サイト開設</dd>
            <dt>2017/09/30</dt>
            <dd>作成プロジェクト開始</dd>
          </dl>
        </section>
      </article>
      @include('layouts.sidebar')
    </div>
  </main>
@endsection

@section('js')
<script>
$("#check-all").on('click', function() {
	$("input[type='checkbox']").prop('checked',true);
});

$("#check-all-off").on('click', function() {
	$("input[type='checkbox']").prop('checked',false);
});

const barChartData = {
    labels : ["山田","田中","鈴木","佐藤","高橋","中田"],
    datasets : [
        {
        label: "最高正答率",
        backgroundColor: "rgba(0, 170, 248, 0.47)",
        data : [95,90,85,80,75,70]
        }
	],
}

const config = {
	type: 'bar',
	data: barChartData,
	responsive : true,
	options: {
		scales: {
			yAxes: [{
				ticks: {beginAtZero: true}
			}]			
		}
	}
}
const context = $("#chart")
const chart = new Chart(context,config)
</script>
@endsection