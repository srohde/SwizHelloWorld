package com.soenkerohde.example.event {
	import flash.events.Event;
	
	public class HelloWorldEvent extends Event {
		
		public static const HELLO_WORLD:String = "HelloWorldEvent.HELLO_WORLD";
		
		private var _message:String;
		
		public function get message() : String {
			return _message;
		}
		
		public function HelloWorldEvent( type : String, message : String, bubbles : Boolean = false, cancelable : Boolean = false ) {
			super( type, bubbles, cancelable );
			_message = message;
		}
		
		override public function clone() : Event {
			return new HelloWorldEvent( type, message, bubbles, cancelable );
		}
	}
}