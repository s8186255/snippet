//openWindow是一种方法，也是单独打开一个webview，注意要指定id，便于html+处理，避免打开过多的webview。
mui.openWindow({
	//id: tapId,
	url: url,
	styles: {
		//top: '45px',
		//bottom: '50px',
		bounce: 'vertical',

	},
});

//采用plus，处理起来更加灵活。
hello=plus.webview.create('http://www.sina.com.cn','sina',{bottom:'45px'})
hello.show();
hello.hide();

