// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require moment 
//= require jquery
//= require jquery_ujs
//= require fullcalendar
//= require fullcalendar/lang/ja

//= require_tree .

$(function(){
$('#calendar').fullCalendar({
	//ヘッダーの設定
	header: {
		//それぞれの位置に設置するボタンやタイトルをスペース区切りで指定できます。指定しない場合、非表示にできます。
		// 'title'→月・週・日のそれぞれの表示に応じたタイトル
		// 'prev'→前へボタン
		// 'next'→次へボタン
		// 'today'→当日表示ボタン
		left: 'today prev', //左側に配置する要素
		center: 'title', //中央に配置する要素
		right: 'next' //右側に配置する要素
	}

	height: 960, //高さをピクセルで指定
	defaultView: 'agendaDay', //初めの表示内容を指定　内容はこちらを参照→ http://fullcalendar.io/docs/views/Available_Views/
	aditable: true, //trueでスケジュールを編集可能にする
	allDaySlot: false,　//falseでagendaDay表示のときに全日の予定欄を非表示にする
	
	//時間の表示フォーマットを指定する　指定方法はこちらを参照→http://momentjs.com/docs/#/displaying/format/
	timeFormat: {
		agenda: 'h(:mm)'
	},
	slotEventOverlap: false, //スケジュールが重なったとき、重ねて表示するかどうか（falseにすると、重ねずに表示する）
	axisFormat: 'H:mm', //時間軸に表示する時間の表示フォーマットを指定する(ヒョジ方法はtimeFormatと同じ)
	slotDuration: '01:00:00', //表示する時間軸の細かさ
	snapDuration: '01:00:00', //スケジュールをスナップするときの動かせる細かさ
	minTime: "00:00:00", //スケジュールの開始時間
	maxTime: "24:00:00", //スケジュールの最終時間
	defaultTimedEventDuration: '01:00:00', //画面上に表示する初めの時間(スクロールされている場所)
	eventClick: function(event) { //イベントをクリックしたときに実行

	},
	dayClick: function(date){ //イベントじゃないところをクリックしたとき(日をクリックしたとき)に実行

	},
	droppable: true, //外部要素からのドラッグアンドドロップを可にする
	drop: function(date){ //外部要素からドラッグアンドドロップしたときに実行

	},
	eventDragStop: { //カレンダー上にドラッグし終わったときに実行

	}

	//カレンダーを再描画
	$('#calendar').fullCalendar('rendar');

	//カレンダーを削除
	$('#calendar').fullCalendar('destroy');

	//イベントを追加
	$('#calendar').fullCalendar('renderEvent', event, true); //eventはeventオブジェクト

	//イベントを更新
	$('#calendar').fullCalendar('updateEvent', event);


});

});

