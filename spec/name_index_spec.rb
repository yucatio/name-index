require File.expand_path(File.dirname(__FILE__) + '/../name_index')

describe NameIndex do
  describe '#create_index' do
    specify {expect(NameIndex.create_index([])).to eq []}
    specify {expect(NameIndex.create_index(['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ'])).to eq [['ア', ['イトウ']], ['カ', ['カネダ', 'キシモト']], ['ハ', ['ハマダ', 'ババ']], ['ワ', ['ワダ']]]}
    specify {expect(NameIndex.create_index(['サトウ', 'スズキ', 'タカハシ', 'イケガミ', 'アラキ', 'デグチ', 'ヌマタ'])).to eq [['ア', ['アラキ', 'イケガミ']], ['サ', ['サトウ', 'スズキ']], ['タ', ['タカハシ', 'デグチ']], ['ナ', ['ヌマタ']]]}
  end
end