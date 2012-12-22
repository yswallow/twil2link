#Twilでも言及ツイートしたい!
[Twil](http://www.docodemo.jp/twil/ "twil") という携帯でTwitterを使える便利なサービスがあるんだけど,それ単独では公式RTと非公式RTしかできない。
###TwilのメールアドレスをTwitterへのリンクに変換する
	
	$ ruby twil2link.rb T0IKqDYgSw8bx@twil.jp
	https://twitter.com/y_sni/status/282143167518748673

な感じで第一引数にTwilの@/TwtやQT/RTのリンクを渡すとTwitterの各ツイートへのリンクに変換される。

###TwitterへのリンクをTwilのメールアドレスに変換する
`Twil#to_62`を使えばできる。
	
	require "./mail2id.rb"
	include Twil
	puts to_62(282143167518748673) #=> KqDYgSw8bx
	
とこんな感じ。
