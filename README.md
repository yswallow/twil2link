# TwilのメールアドレスをURLに変換するmodule

**TwilのアップデートによりEメールアドレスの仕様が変更されています**

[Twil](https://twil.jp/ "twil") というEメールでTwitterできるサービスの
ツイート固有EメールアドレスをTwitterへのリンクに変換する。

## TwilのメールアドレスをTwitterへのリンクに変換する
	
	$ ruby twil2link.rb T0IKqDYgSw8bx@twil.jp
	https://twitter.com/y_sni/status/282143167518748673

第一引数にTwilの@/TwtやQT/RTのリンクを渡すと
Twitterの各ツイートへのリンクに変換される。

## TwitterへのリンクをTwilのメールアドレスに変換する

`Twil#to_62`を使う。
	
	require "./mail2id.rb"
	include Twil
	puts to_62(282143167518748673) #=> KqDYgSw8bx
	

