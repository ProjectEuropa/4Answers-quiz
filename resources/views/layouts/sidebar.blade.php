<aside class="col-md-4 col-xs-12">
    <section id="sns-sections">
        <h3 class="text-center sidebar">SNS共有</h3>
        <div id="sns-links">
            <a>
                <div class="g-plus" data-action="share" data-height="24" data-annotation="bubble" data-href="http://syncer.jp/"></div>
            </a>
            <a href="https://twitter.com/share" class="twitter-share-button" data-size="middle">Tweet</a>
            <script>
              ! function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0],
                  p = /^http:/.test(d.location) ? 'http' : 'https';
                if (!d.getElementById(id)) {
                  js = d.createElement(s);
                  js.id = id;
                  js.src = p + '://platform.twitter.com/widgets.js';
                  fjs.parentNode.insertBefore(js, fjs);
                }
              }(document, 'script', 'twitter-wjs');
            </script>
            <a href="http://b.hatena.ne.jp/" class="hatena-bookmark-button" data-hatena-bookmark-title="Syncer" data-hatena-bookmark-layout="vertical-balloon"
              data-hatena-bookmark-lang="ja" title="このエントリーをはてなブックマークに追加"><img src="https://b.st-hatena.com/images/entry-button/button-only@2x.png" alt="このエントリーをはてなブックマークに追加" width="20" height="20" style="border: none;" /></a>
            <a>
              <div class="fb-like" data-href="" data-layout="button_count" data-action="like" data-show-faces="true" data-share="false"></div>
            </a>
            <!--フェイスブックリンク先を修正すること-->
        </div>
    </section>
    <section id="keywords">
        <h3 class="text-center sidebar">キーワード集</h3>
        <ul class="keywords-texts-str-li">
          <li>
            <a>Ａ</a>
            <a>Ｂ</a>
            <a>Ｃ</a>
            <a>Ｄ</a>
            <a>Ｅ</a>
            <a>Ｆ</a>
            <a>Ｇ</a>
            <a>Ｈ</a>
            <a>Ｉ</a>
            <a>Ｊ</a>
          </li>
          <li>
            <a>Ｋ</a>
            <a>Ｌ</a>
            <a>Ｍ</a>
            <a>Ｎ</a>
            <a>Ｏ</a>
            <a>Ｐ</a>
            <a>Ｑ</a>
            <a>Ｒ</a>
            <a>Ｓ</a>
            <a>Ｔ</a>
          </li>
          <li>
            <a>Ｕ</a>
            <a>Ｖ</a>
            <a>Ｗ</a>
            <a>Ｘ</a>
            <a>Ｙ</a>
            <a>Ｚ</a>
          </li>
          <li>
            <a>あ</a>
            <a>い</a>
            <a>う</a>
            <a>え</a>
            <a>お</a>
            <a>か</a>
            <a>き</a>
            <a>く</a>
            <a>け</a>
            <a>こ</a>
          </li>
          <li>
            <a>さ</a>
            <a>し</a>
            <a>す</a>
            <a>せ</a>
            <a>そ</a>
            <a>た</a>
            <a>ち</a>
            <a>つ</a>
            <a>て</a>
            <a>と</a>
          </li>
          <li>
            <a>な</a>
            <a>に</a>
            <a>ぬ</a>
            <a>ね</a>
            <a>の</a>
            <a>は</a>
            <a>ひ</a>
            <a>ふ</a>
            <a>へ</a>
            <a>ほ</a>
          </li>
          <li>
            <a>ま</a>
            <a>み</a>
            <a>む</a>
            <a>め</a>
            <a>も</a>
            <a>ら</a>
            <a>り</a>
            <a>る</a>
            <a>れ</a>
            <a>ろ</a>
          </li>
          <li>
            <a>や</a>
            <a>ゆ</a>
            <a>よ</a>
            <a>わ</a>
            <a>を</a>
          </li>
        </ul>
    </section>
</aside>

@section('js-sidebar')
  <script src="https://apis.google.com/js/platform.js" async defer>
    {
      lang: "ja"
    }
  </script>
  <script type="text/javascript" src="https://b.st-hatena.com/js/bookmark_button.js" charset="utf-8" async="async">
    {
      lang: "ja"
    }
  </script>

  <div id="fb-root"></div>
  <script>
    (function (d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s);
      js.id = id;
      js.src = "//connect.facebook.net/ja_JP/sdk.js#xfbml=1&version=v2.0";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
  </script>
@endsection