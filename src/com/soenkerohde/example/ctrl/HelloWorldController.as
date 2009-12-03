package com.soenkerohde.example.ctrl {
	import com.soenkerohde.example.model.HelloWorldModel;
	
	public class HelloWorldController {
		
		
		[Autowire]
		public var model:HelloWorldModel;
		
		public function HelloWorldController() {
		}
		
		[Mediate(event="HelloWorldEvent.HELLO_WORLD", properties="message")]
		public function handleHelloWorld( message : String ) : void {
			model.message = message;
		}
	}
}