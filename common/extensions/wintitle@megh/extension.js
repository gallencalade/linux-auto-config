//edit the constants here
const animation_time=0.25;  		// fade out animation time in seconds
const horizontal_align="left";		// OR center
const padding_y=2;			// space between panel and label
//edit other settings in stylesheet

const St = imports.gi.St;
const Main = imports.ui.main;
const Tweener = imports.ui.tweener;
const Shell = imports.gi.Shell;

let text,appMenu,sig0,sig1,sig2,original_reactive,original_track_hover;

function _hideTitle() {if (text){
	Main.uiGroup.remove_actor(text);
	text = null;}
}


function _tween() {
	Tweener.addTween(text,
		{ opacity: 0,
		time: animation_time,
		transition: 'easeOutQuad',
		onComplete: _hideTitle });
}


function _showTitle() {
	if (!text) {
		let win = global.display.focus_window;
        text = new St.Label({ style_class: 'title-label', text: win.title });
        Main.uiGroup.add_actor(text);
	}

	text.opacity = 255;

	let monitor = Main.layoutManager.primaryMonitor;
	let x;
	if(horizontal_align=="center") x=Math.floor(monitor.width / 2 - text.width / 2);
	else x=appMenu.get_transformed_position()[0];
	text.set_position(x, Main.panel.actor.get_height()+padding_y);

}


function init() {
	appMenu=Main.panel.statusArea.appMenu.actor.get_parent();
	original_reactive=appMenu.reactive;
	original_track_hover=appMenu.track_hover;}


function enable() {
	appMenu.reactive=true;
	appMenu.track_hover=true;

	sig0=appMenu.connect('enter-event', _showTitle);
	sig1=appMenu.connect('leave-event', _tween);
	sig2=appMenu.connect('button-release-event', _tween);
}


function disable() {
	_hideTitle();

	appMenu.reactive=original_reactive;
	appMenu.track_hover=original_track_hover;

	appMenu.disconnect(sig0);
	appMenu.disconnect(sig1);
	appMenu.disconnect(sig2);
}
