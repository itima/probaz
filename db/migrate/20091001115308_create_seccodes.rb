class CreateSeccodes < ActiveRecord::Migration
  def self.up
    create_table :seccodes do |t|
      t.string :name
      t.integer :value
      t.timestamps
    end
Seccode.create(:id => 1 ,:name => 'Десять' ,:value => 10)
Seccode.create(:id => 2 ,:name => 'Пятьдесятшесть' ,:value => 56)
Seccode.create(:id => 3 ,:name => 'Восемьдесятдевять' ,:value => 89)
Seccode.create(:id => 4 ,:name => 'Семьдесятчетыре' ,:value => 74)
Seccode.create(:id => 5 ,:name => 'Сорокдва' ,:value => 42)
Seccode.create(:id => 6 ,:name => 'Девять' ,:value => 9)
Seccode.create(:id => 7 ,:name => 'Сто' ,:value => 100)
Seccode.create(:id => 8 ,:name => 'Пять' ,:value => 5)
Seccode.create(:id => 9 ,:name => 'Сороксемь' ,:value => 47)
Seccode.create(:id => 10 ,:name => 'Шестьдесятдва' ,:value => 62)
Seccode.create(:id => 11 ,:name => 'Тридцатьшесть' ,:value => 36)
Seccode.create(:id => 12 ,:name => 'Пятьдесятвосемь' ,:value => 58)
Seccode.create(:id => 13 ,:name => 'Шестьдесятсемь' ,:value => 67)
Seccode.create(:id => 14 ,:name => 'Девяносто' ,:value => 90)
Seccode.create(:id => 15 ,:name => 'Стосороквосемь' ,:value => 148)
Seccode.create(:id => 16 ,:name => 'Сорокодно' ,:value => 41)
Seccode.create(:id => 17 ,:name => 'Девяностопять' ,:value => 95)
Seccode.create(:id => 18 ,:name => 'Семнадцать' ,:value => 17)
Seccode.create(:id => 19 ,:name => 'Двадцатьдевять' ,:value => 29)
Seccode.create(:id => 20 ,:name => 'Семдесятдевять' ,:value => 79)
Seccode.create(:id => 21 ,:name => 'Стодвадцатьтри' ,:value => 123)
Seccode.create(:id => 22 ,:name => 'Девяностошесть' ,:value => 96)
Seccode.create(:id => 23 ,:name => 'Тридцатьтри' ,:value => 33)
Seccode.create(:id => 24 ,:name => 'Двадцатьодно' ,:value => 21)
Seccode.create(:id => 25 ,:name => 'Четырнадцать' ,:value => 14)
Seccode.create(:id => 26 ,:name => 'Стотридцатьсемь' ,:value => 137)
Seccode.create(:id => 27 ,:name => 'Шестьдесятшесть' ,:value => 66)
Seccode.create(:id => 28 ,:name => 'Сорокдевять' ,:value => 49)
Seccode.create(:id => 29 ,:name => 'Семь' ,:value => 7)
Seccode.create(:id => 30 ,:name => 'Пятьдесятдевять' ,:value => 59)
Seccode.create(:id => 31 ,:name => 'Восемьдесятчетыре' ,:value => 84)
Seccode.create(:id => 32 ,:name => 'Стопять' ,:value => 105)
Seccode.create(:id => 33 ,:name => 'Стотридцать' ,:value => 130)
Seccode.create(:id => 34 ,:name => 'Пятнадцать' ,:value => 15)
Seccode.create(:id => 35 ,:name => 'Стосемнадцать' ,:value => 117)
Seccode.create(:id => 36 ,:name => 'Пятьдесятодно' ,:value => 51)
Seccode.create(:id => 37 ,:name => 'Тридцатьсемь' ,:value => 37)
Seccode.create(:id => 38 ,:name => 'Одиннадцать' ,:value => 11)
Seccode.create(:id => 39 ,:name => 'Пятьдесятдва' ,:value => 52)
Seccode.create(:id => 40 ,:name => 'Двадцатьсемь' ,:value => 27)
Seccode.create(:id => 41 ,:name => 'Стотридцатьчетыре' ,:value => 134)
Seccode.create(:id => 42 ,:name => 'Двадцатьвосемь' ,:value => 28)
Seccode.create(:id => 43 ,:name => 'Девяностоодин' ,:value => 91)
Seccode.create(:id => 44 ,:name => 'Восемьдесятодин' ,:value => 81)
Seccode.create(:id => 45 ,:name => 'Семьдесяттри' ,:value => 73)
Seccode.create(:id => 46 ,:name => 'Стодесять' ,:value => 110)
Seccode.create(:id => 47 ,:name => 'Тридцатьодин' ,:value => 31)
Seccode.create(:id => 48 ,:name => 'Сорокпять' ,:value => 45)
Seccode.create(:id => 49 ,:name => 'Шестьодно' ,:value => 61)
Seccode.create(:id => 50 ,:name => 'Стодвадцатьшесть' ,:value => 126)
Seccode.create(:id => 51 ,:name => 'Пятьдесятсемь' ,:value => 57)
Seccode.create(:id => 52 ,:name => 'Стовосемь' ,:value => 108)
Seccode.create(:id => 53 ,:name => 'Стопятнадцать' ,:value => 115)
Seccode.create(:id => 54 ,:name => 'Семьдесят одно' ,:value => 71)
Seccode.create(:id => 55 ,:name => 'Восемьдесятвосемь' ,:value => 88)
Seccode.create(:id => 56 ,:name => 'Пятьдесят' ,:value => 50)
Seccode.create(:id => 57 ,:name => 'Сто семь' ,:value => 107)
Seccode.create(:id => 58 ,:name => 'Девяностодва' ,:value => 92)
Seccode.create(:id => 59 ,:name => 'Двадцатьчетыре' ,:value => 34)
Seccode.create(:id => 60 ,:name => 'Восемь' ,:value => 8)
  end

  def self.down
    drop_table :seccodes
  end
end