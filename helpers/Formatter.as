package helpers
{
	public class Formatter
	{
		public function formatSeconds(seconds:int):String {
			var hours:int = seconds / 3600 % 3600
			var minutes:int = seconds / 60 % 60
			var remain:int = seconds % 60
			var text:String = ""
			if (hours>0) text += String(hours) + "h "
			text += String(minutes) + "m "
			text += String(remain) + "s"
			return text
		}
	}
}