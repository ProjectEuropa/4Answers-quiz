@extends('layouts.app')

@section('content')
 <main>
    <div class="container">
      <article class="col-md-8 col-xs-12">
        <section class="article-section">
          <h2 id="mypage">
            <img id="mypage-icon" src="image\mypage-icon.png">マイページ
          </h2>
          <h3>直近7回の正解率推移</h3>
          <canvas id="myLineChart" width="800" height="400"></canvas>
        </section>
      </article>
      @include('layouts.sidebar')
    </div>
  </main>
@endsection

@section('js')
<script>


let scoreTime =[];
let scores =[];

@foreach($scoreDatas as $scoreData)
  scoreTime.push("{{ $scoreData->created_at }}");
  scores.push({{ $scoreData->percentage_correct_answer }});
@endforeach

//折れ線グラフ
const ctx = document.getElementById("myLineChart");
const myLineChart = new Chart(ctx, {
  //グラフの種類
  type: 'line',
  //データの設定
  data: {
      labels: scoreTime,
      datasets: [{
          label: "正解率",
          backgroundColor: "rgba(0, 170, 248, 0.47)",
          borderColor: "rgba(0, 170, 248, 1)",
          data: scores
      }]
  },
  //オプションの設定
  options: {
      scales: {
          //縦軸の設定
          yAxes: [{
              ticks: {
                  //最小値を0にする
                  beginAtZero: true
              }
          }]
      }
  }
});
</script>
@endsection