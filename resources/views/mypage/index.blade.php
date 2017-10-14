@extends('layouts.app')

@section('content')
 <main>
    <div class="container">
      <article class="col-md-8 col-xs-12">
        <section class="article-section">
          <h2 id="mypage">
            <img id="mypage-icon" src="image\mypage-icon.png">マイページ
          </h2>
          <h3>直近{{ count($scoreDatas) }}回の正解率推移</h3>
          <canvas id="myLineChart" width="800" height="400"></canvas>
        </section>
      </article>
      @include('layouts.sidebar')
    </div>
  </main>
@endsection

@section('js')
<script>

// 横軸ラベルは時間
let labelTime =[];
// 縦軸は正解率
let scores =[];

@foreach($scoreDatas as $scoreData)
  labelTime.push("{{ $scoreData->created_at }}");
  scores.push({{ $scoreData->percentage_correct_answer }});
@endforeach

const ctx = document.getElementById("myLineChart");
const myLineChart = new Chart(ctx, {
  //折れ線グラフ
  type: 'line',
  data: {
      labels: labelTime,
      datasets: [{
          label: "正解率",
          backgroundColor: "rgba(0, 170, 248, 0.47)",
          borderColor: "rgba(0, 170, 248, 1)",
          data: scores
      }]
  },
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
});
</script>
@endsection