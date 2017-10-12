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
                <input type="checkbox" name="categories[]" value="{{ $category->id }}" @if($category->id === 1 ) checked @endif>{{ $category->name }}</label>
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
          <div>
            <label>
              <input class="ranking-radio" type="radio" name="ranking-radio" value="1" checked>総合</label>
            <label>
              <input class="ranking-radio" type="radio" name="ranking-radio" value="2" >月間</label>
            <label>
              <input class="ranking-radio" type="radio" name="ranking-radio" value="3" >週間</label>
          </div>
          <canvas id="chart" height="200" width="400"></canvas>
        </section>
        <section class="article-section">
          <h2 id="news">
            <img id="news-mark" src="image\news-icon.png">お知らせ情報
          </h2>
          <dl>
            @foreach($informations as $information)
            <dt>{{ $information->created_at }}</dt>
            <dd>{{ $information->information }}</dd>
            @endforeach
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
	$("input[type='checkbox']").prop('checked', true);
});

$("#check-all-off").on('click', function() {
	$("input[type='checkbox']").prop('checked', false);
});

const RADIO_VALUE_SYNTHESIS = "1";
const RADIO_VALUE_MONTH = "2";
const RADIO_VALUE_WEEK = "3";
$(".ranking-radio").on('change', function () {
	const rankingCheckedVal =  $('input[name=ranking-radio]:checked').val();
  // ラジオボタンで選択したランキングごとに表示を切り替える
	switch (rankingCheckedVal) {
	case RADIO_VALUE_SYNTHESIS:
		changeRanking(synthesisBarChartData);
		break;
	case RADIO_VALUE_MONTH:
		changeRanking(monthBarChartData);
		break;
	case RADIO_VALUE_WEEK:
		changeRanking(weekBarChartData);
		break;
	}
});

// 総合ランキングデータ
let synthesisNames =[];
let synthesisScores =[];
//棒グラフ表示データを配列として受け渡す
@foreach($synthesisRankings as $synthesisRanking)
  synthesisNames.push("{{ $synthesisRanking->name }}");
  synthesisScores.push({{ $synthesisRanking->percentage_correct_answer }});
@endforeach

// 月間ランキングデータ
let monthNames =[];
let monthScores =[];
@foreach($monthRankings as $monthRanking)
  monthNames.push("{{ $synthesisRanking->name }}");
  monthScores.push({{ $synthesisRanking->percentage_correct_answer }});
@endforeach

// 週間ランキングデータ
let weekNames =[];
let weekScores =[];
@foreach($weekRankings as $weekRanking)
  weekNames.push("{{ $weekRanking->name }}");
  weekScores.push({{ $weekRanking->percentage_correct_answer }});
@endforeach

const BAR_LAVEL_NAME_MAX_CORRECT_PERCENTAGE = "最高正答率";
const BAR_BACKGROUND_COLOR_LIGHT_BLUE = "rgba(0, 170, 248, 0.47)";

// 総合ランキング棒グラフデータ
const synthesisBarChartData = {
    labels : synthesisNames,
    datasets : 
    [{
      label: BAR_LAVEL_NAME_MAX_CORRECT_PERCENTAGE,
      backgroundColor: BAR_BACKGROUND_COLOR_LIGHT_BLUE,
      data : synthesisScores
    }],
}
// 月間ランキング棒グラフデータ
const monthBarChartData = {
    labels : weekNames,
    datasets : 
    [{
      label: BAR_LAVEL_NAME_MAX_CORRECT_PERCENTAGE,
      backgroundColor: BAR_BACKGROUND_COLOR_LIGHT_BLUE,
      data : weekScores
    }],
}
// 週間ランキング棒グラフデータ
const weekBarChartData = {
    labels : weekNames,
    datasets : 
    [{
      label: BAR_LAVEL_NAME_MAX_CORRECT_PERCENTAGE,
      backgroundColor: BAR_BACKGROUND_COLOR_LIGHT_BLUE,
      data : weekScores
    }],
}

// 最初は総合総合ランキングを表示
changeRanking(synthesisBarChartData);

function changeRanking(rankingData) {
	const config = {
		type: 'bar',
		data: rankingData,
		responsive: true,
		options: {
			scales: {
				yAxes: [{
					ticks: {
						beginAtZero: true,
            min: 0,
            max: 100
					}
				}]
			}
		}
	}
	const context = $("#chart");
	const chart = new Chart(context, config);
}
</script>
@endsection