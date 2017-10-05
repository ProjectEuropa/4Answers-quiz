@extends('layouts.app')

@section('content')
  <main>
    <div class="container">
      <article class="col-md-8 col-xs-12" id="vue-app" style="display:none">
        <section class="article-section">
          <h2 id="what-is">
            <img id="what-is-mark" src="image\what-is-mark.png">第@{{ answerNo }}問
          </h2>
          <p>@{{ title }}</p>
          <div id="answer-list">
            <ul>
              <li v-for="(answer, index) in answers">
                <a><button @click="goAnswer(index + 1)" v-bind:disabled="isAnswerNotAlready">@{{ index + 1 }}</button></a>@{{ answer }}
              </li>
            </ul>
          </div>
        </section>
        <section class="article-section">
          <h2 id="correct">
            <img id="correct-mark" src="image\correct-mark.png">正解
          </h2>
          <p><button id="correct-answer" v-if="isAnswerNotAlready" disabled>@{{ correctAnswerNo }}</button></p>
          <button @click.once="goAnswer(0)"  v-if="!isAnswerNotAlready">正解を表示する</button>
          <div class="alert alert-info" v-if="isCorrect">
            <strong>正解!</strong>
          </div>
          <div class="alert alert-danger" v-if="isMistake">
            <strong>不正解!</strong>
          </div>
        </section>
        <section class="article-section">
          <h2 id="commentary">
            <img id="commentary-mark" src="image\commentary-mark.png">解説
          </h2>
          <div id="commentary-text" v-html="commentaryNl2br" v-if="isAnswerNotAlready">
          </div>
          <button type="button" class="btn btn-primary center-block" @click="goNextQuiz" v-if="!isQuizFinish">次の問題へ</button>
          <button type="button" class="center-block" @click="findResults" v-if="isQuizFinish">結果を見る</button>
        </section>
      </article>
      @include('layouts.sidebar')
    </div>
  </main>
  <div id="modal-result" tabindex="-1" class="modal fade">
      <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" data-dismiss="modal" class="close">
                        <span>×</span>
                    </button>
                    <h4 class="modal-title text-center">score</h4>
                </div>
                <div class="modal-body text-center">
                  <canvas id="chart" height="200" width="400"></canvas>
                  <div id="correctRatio"></div>
                </div>
                <div class="modal-footer">
                    <a class="btn btn-primary" href="{{ url('/') }}" >終了する</a>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('js')
<script>
const quizIdsArray = {{ $ids }};
const NUM_OF_QUIZ_LIMIT = {{ $quizNum }};

axios.get("/getonequiz/" + quizIdsArray[0])
    .then(function (response) {
        initVue(response.data);
    })
    .catch(function (error) {
        console.log(error);
    });

let vueApp;
function initVue(data) {
    vueApp = new Vue({
        el: '#vue-app',
        data: {
          title: data.title,
          answers:[
              data.answer_1, data.answer_2,data. answer_3, data.answer_4,
          ],
          commentary: data.commentary,
          correctAnswerNo: data.correct_answer_no,
          isCorrect: false,
          isMistake: false,
          isAnswerNotAlready: false,
          isQuizFinish: false,
          score: 0,
          answerNo: 1,
        },
        methods: {
            goAnswer:function(num) {
              if (num == 0) {
                  // click 「正解を表示する」
                this.isCorrect = false;
                this.isMistake = false;                
              } else if (num == this.correctAnswerNo) {
                this.isCorrect = true;
                this.isMistake = false;
                this.score += 1;
              } else {
                this.isMistake = true;
                this.isCorrect = false;
              }
              this.isAnswerNotAlready = true;

              if (this.answerNo >= NUM_OF_QUIZ_LIMIT) {
                endQuiz();
              }
            },
            goNextQuiz: function() {
              findNextQuiz(quizIdsArray[this.answerNo]);
              this.answerNo += 1;
              this.isCorrect = false;
              this.isMistake = false;
              this.isAnswerNotAlready = false;  
            },
            findResults: function() {
              showReults(this.score, NUM_OF_QUIZ_LIMIT);
            }
        },
        computed: {
            commentaryNl2br: function() {
                return this.commentary.replace(/\n/g, "<br>");
            }
        },
        mounted: function () {
            document.getElementById("vue-app").style.display = "";
        },
    });
}

function findNextQuiz(id) {
    axios.get("/getonequiz/" + id)
        .then(function (response) {
            let data = response.data;
            if (data == null) {
                //if get null data, quiz force termination
                endQuiz();
            } else {
                vueApp.title = data.title;
                vueApp.answers = [data.answer_1, data.answer_2, data.answer_3, data.answer_4];
                vueApp.correctAnswerNo = data.correct_answer_no;
                vueApp.commentary = data.commentary;
            }
        })
        .catch(function (error) {
            console.log(error);
        });
}

function endQuiz() {
  vueApp.isQuizFinish = true;
  vueApp.answerNo = "-";
  vueApp.isAnswerNotAlready = true;
}
Vue.config.devtools = true;

function showReults(score, quizNum) {
  const incorrectAnswerScore = quizNum - score;
  const correctRatio = (score / quizNum) * 100;
  const ctx = document.getElementById("chart").getContext('2d');
  const myChart = new Chart(ctx, {
    type: 'pie',
    data: {
      labels: ["正解", "不正解"],
      datasets: [{
        backgroundColor: [
          "#3498db",
          "#F46666",
        ],
        data: [score, incorrectAnswerScore]
      }]
    }
  });
  $("#correctRatio").text("正解率" + correctRatio + "%");
  $("#modal-result").modal();
}
</script>
@endsection