object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 35
    Width = 50
    Height = 13
    Caption = 'Valor Hora'
  end
  object Label2: TLabel
    Left = 48
    Top = 56
    Width = 90
    Height = 13
    Caption = 'Horas Trabalhadas'
  end
  object Label3: TLabel
    Left = 48
    Top = 77
    Width = 92
    Height = 13
    Caption = 'Horas de Descanso'
  end
  object Label4: TLabel
    Left = 48
    Top = 98
    Width = 88
    Height = 13
    Caption = 'Horas extras 50%'
  end
  object Label5: TLabel
    Left = 48
    Top = 119
    Width = 94
    Height = 13
    Caption = 'Horas extras 100%'
  end
  object Label6: TLabel
    Left = 48
    Top = 140
    Width = 93
    Height = 13
    Caption = 'Auxilio Home Office'
  end
  object Label7: TLabel
    Left = 48
    Top = 161
    Width = 130
    Height = 13
    Caption = 'Adicional Tempo de Servi'#231'o'
  end
  object Label8: TLabel
    Left = 48
    Top = 182
    Width = 74
    Height = 13
    Caption = 'Plano de Sa'#250'de'
  end
  object Label9: TLabel
    Left = 48
    Top = 224
    Width = 58
    Height = 13
    Caption = 'Alimenta'#231#227'o'
  end
  object Label10: TLabel
    Left = 48
    Top = 245
    Width = 53
    Height = 13
    Caption = 'Transporte'
  end
  object Label11: TLabel
    Left = 48
    Top = 203
    Width = 92
    Height = 13
    Caption = 'Plano Odontol'#243'gico'
  end
  object Label12: TLabel
    Left = 48
    Top = 266
    Width = 85
    Height = 13
    Caption = 'Outros descontos'
  end
  object Label13: TLabel
    Left = 368
    Top = 171
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object Edit1: TEdit
    Left = 184
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 184
    Top = 53
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 184
    Top = 74
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 184
    Top = 95
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 184
    Top = 116
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 184
    Top = 137
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit7: TEdit
    Left = 184
    Top = 158
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit8: TEdit
    Left = 184
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit9: TEdit
    Left = 184
    Top = 179
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Edit10: TEdit
    Left = 184
    Top = 221
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object Edit11: TEdit
    Left = 184
    Top = 242
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object Edit12: TEdit
    Left = 184
    Top = 263
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object Memo1: TMemo
    Left = 368
    Top = 190
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 12
  end
  object calcular: TButton
    Left = 368
    Top = 140
    Width = 75
    Height = 25
    Caption = 'calcular'
    TabOrder = 13
    OnClick = calcularClick
  end
end
