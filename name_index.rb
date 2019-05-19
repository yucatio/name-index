class NameIndex
  NAME_INDEX_HASH = {
      'ア' => %w(ア イ ウ エ オ ヴ),
      'カ' => %w(カ キ ク ケ コ ガ ギ グ ゲ ゴ),
      'サ' => %w(サ シ ス セ ソ ザ ジ ズ ゼ ゾ),
      'タ' => %w(タ チ ツ テ ト ダ ヂ ヅ デ ド),
      'ナ' => %w(ナ ニ ヌ ネ ノ),
      'ハ' => %w(ハ ヒ フ ヘ ホ バ ビ ブ ベ ボ パ ピ プ ペ ポ),
      'マ' => %w(マ ミ ム メ モ),
      'ヤ' => %w(ヤ ユ ヨ),
      'ラ' => %w(ラ リ ル レ ロ),
      'ワ' => %w(ワ ヲ ン)
  }.freeze

  def self.create_index(names)
    names.sort.group_by {|name|
      index_kana = NAME_INDEX_HASH.find(['Others']) {|_, value| value.include?(name[0])}
      index_kana[0]
    }.to_a
  end
end
