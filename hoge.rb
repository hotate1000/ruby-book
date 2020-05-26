synth = WordSynth.new
synth.play('Ruby is fun')

synth = WordSynth.new
synth.add_effect(Effects.reverse)
synth.play('Ruby is fun!')

synth= WordSynth.new
synth.add_effect(Effects.echo(2))
synth.add_effect(Effects.loud(3))
synth.add_effect(Effects.reverse)
synth.play('Ruby is fun!')