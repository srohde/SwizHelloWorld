package com.soenkerohde.example.ctrl {
	import com.soenkerohde.example.model.HelloWorldModel;
	
	public class HelloWorldController {
		
		// Swiz autowires (injects) the instance defined in the Beans BeanLoader by type
		// so we don't have to define the bean id
		[Autowire]
		public var model:HelloWorldModel;
		
		public function HelloWorldController() {
		}
		
		/**
		 * Swiz event mediator for the HelloWorldEvent with type HELLO_WORLD
		 * We can use the event "class name + type" since we defined SwizConfig with strict=true
		 * and set the eventPackages "com.soenkerohde.example.event" so Swiz can figure it out.
		 * Further we are able to catch the bubbles event from the display chain since we defined
		 * the viewPackages as "com.soenkerohde.example.view".
		 */
		[Mediate(event="HelloWorldEvent.HELLO_WORLD", properties="message")]
		public function handleHelloWorld( message : String ) : void {
			model.message = message;
		}
	}
}