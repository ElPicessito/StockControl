object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Form2'
  ClientHeight = 557
  ClientWidth = 1063
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object AdvPageControl1: TAdvPageControl
    Left = 0
    Top = 0
    Width = 1063
    Height = 557
    ActivePage = AdvTabSheet1
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Segoe UI'
    ActiveFont.Style = []
    Align = alClient
    DoubleBuffered = True
    TabBackGroundColor = clBtnFace
    TabMargin.RightMargin = 0
    TabOverlap = 0
    Version = '2.0.5.0'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabOrder = 0
    object AdvTabSheet1: TAdvTabSheet
      Caption = 'AdvTabSheet1'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      ExplicitLeft = 36
      ExplicitTop = -294
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 68
        Height = 27
        Caption = 'Produit'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Mona Sans'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 3
        Top = 36
        Width = 55
        Height = 15
        Caption = 'ID_Produit'
        FocusControl = cxDBSpinEdit1
      end
      object Label3: TLabel
        Left = 3
        Top = 84
        Width = 107
        Height = 15
        Caption = 'Designation_Produit'
        FocusControl = edtDesignation
      end
      object Label4: TLabel
        Left = 3
        Top = 132
        Width = 97
        Height = 15
        Caption = 'Quantite_en_stock'
        FocusControl = edtQuantite
      end
      object Label5: TLabel
        Left = 3
        Top = 180
        Width = 42
        Height = 15
        Caption = 'Division'
        FocusControl = edtDivision
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 3
        Top = 52
        DataBinding.DataField = 'ID_Produit'
        DataBinding.DataSource = DataSource1
        TabOrder = 0
        Width = 121
      end
      object edtDesignation: TcxDBTextEdit
        Left = 3
        Top = 100
        DataBinding.DataField = 'Designation_Produit'
        DataBinding.DataSource = DataSource1
        TabOrder = 1
        Width = 121
      end
      object edtQuantite: TcxDBSpinEdit
        Left = 3
        Top = 148
        DataBinding.DataField = 'Quantite_en_stock'
        DataBinding.DataSource = DataSource1
        TabOrder = 2
        Width = 121
      end
      object edtDivision: TcxDBTextEdit
        Left = 3
        Top = 196
        DataBinding.DataField = 'Division'
        DataBinding.DataSource = DataSource1
        TabOrder = 3
        Width = 121
      end
      object Panel1: TPanel
        Left = 0
        Top = 486
        Width = 1055
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 4
        ExplicitLeft = 472
        ExplicitTop = 384
        ExplicitWidth = 185
        object AdvToolButton10: TAdvToolButton
          AlignWithMargins = True
          Left = 806
          Top = 3
          Width = 120
          Height = 35
          Align = alRight
          AutoThemeAdapt = False
          BorderColor = clWhite
          BorderDownColor = 14925219
          BorderHotColor = 16444643
          Color = clWhite
          ColorDown = 14925219
          ColorHot = 16444643
          ColorChecked = 13744549
          Caption = '  Ajouter'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Mona Sans'
          Font.Style = [fsBold]
          Glyph.Data = {
            76060000424D7606000000000000360000002800000014000000140000000100
            2000000000004006000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000130000
            00D6000000D40000001200000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000046000000FF000000FF00000044000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000430000
            00FF000000FF0000004100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000043000000FF000000FF00000041000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000430000
            00FF000000FF0000004100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000043000000FF000000FF00000041000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000430000
            00FF000000FF0000004100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000038000000FF000000FF00000035000000000000
            00000000000000000000000000000000000000000000000000000000000C0000
            0040000000410000004100000041000000410000004100000041000000730000
            00FF000000FF0000007200000041000000410000004100000041000000410000
            0041000000400000000C000000D7000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000D6000000D90000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000D80000000D000000420000004300000043000000430000
            0043000000430000004300000074000000FF000000FF00000073000000430000
            004300000043000000430000004300000043000000420000000D000000000000
            0000000000000000000000000000000000000000000000000000000000370000
            00FF000000FF0000003500000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000043000000FF000000FF00000041000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000430000
            00FF000000FF0000004100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000043000000FF000000FF00000041000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000430000
            00FF000000FF0000004100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000043000000FF000000FF00000041000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000460000
            00FF000000FF0000004400000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000013000000D6000000D500000012000000000000
            0000000000000000000000000000000000000000000000000000}
          GlyphDisabled.Data = {
            FA090000424DFA09000000000000360000002800000019000000190000000100
            200000000000C409000000000000000000000000000000000000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            600060606000606060006060600060606000606060006060600060606000}
          ParentFont = False
          Rounded = True
          OnClick = AdvToolButton10Click
          Version = '1.7.2.1'
          ExplicitLeft = 819
          ExplicitTop = 4
          ExplicitHeight = 37
          TMSStyle = 0
        end
        object AdvToolButton12: TAdvToolButton
          AlignWithMargins = True
          Left = 932
          Top = 3
          Width = 120
          Height = 35
          Align = alRight
          AutoThemeAdapt = False
          BorderColor = clWhite
          BorderDownColor = 14925219
          BorderHotColor = 16444643
          Color = clWhite
          ColorDown = 14925219
          ColorHot = 16444643
          ColorChecked = 13744549
          Caption = '  Annuler'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Mona Sans'
          Font.Style = [fsBold]
          Glyph.Data = {
            BA030000424DBA0300000000000036000000280000000F0000000F0000000100
            2000000000008403000000000000000000000000000000000000000000D40000
            00BD000000060000000000000000000000000000000000000000000000000000
            0000000000000000000000000006000000BC000000D5000000BD000000FF0000
            00C20000000B0000000000000000000000000000000000000000000000000000
            00000000000B000000C1000000FF000000BD00000005000000C1000000FF0000
            00C20000000B00000000000000000000000000000000000000000000000B0000
            00C1000000FF000000C200000005000000000000000B000000C1000000FF0000
            00C20000000B0000000000000000000000000000000B000000C1000000FF0000
            00C20000000B0000000000000000000000000000000B000000C1000000FF0000
            00C20000000C000000000000000B000000C1000000FF000000C20000000B0000
            0000000000000000000000000000000000000000000B000000C1000000FF0000
            00BF00000027000000BF000000FF000000C20000000B00000000000000000000
            0000000000000000000000000000000000000000000B000000BC000000FF0000
            00F7000000FF000000BC0000000B000000000000000000000000000000000000
            00000000000000000000000000000000000000000016000000F2000000FF0000
            00F3000000160000000000000000000000000000000000000000000000000000
            000000000000000000000000000B000000BC000000FF000000F7000000FF0000
            00BD0000000B0000000000000000000000000000000000000000000000000000
            00000000000B000000C1000000FF000000BF00000027000000BE000000FF0000
            00C20000000B00000000000000000000000000000000000000000000000B0000
            00C1000000FF000000C20000000B000000000000000B000000C1000000FF0000
            00C20000000B0000000000000000000000000000000B000000C1000000FF0000
            00C20000000B0000000000000000000000000000000B000000C1000000FF0000
            00C20000000B0000000000000005000000C1000000FF000000C20000000B0000
            0000000000000000000000000000000000000000000B000000C1000000FF0000
            00C200000005000000BD000000FF000000C20000000B00000000000000000000
            0000000000000000000000000000000000000000000B000000C1000000FF0000
            00BE000000D4000000BD00000006000000000000000000000000000000000000
            00000000000000000000000000000000000000000005000000BC000000D4}
          GlyphDisabled.Data = {
            FA090000424DFA09000000000000360000002800000019000000190000000100
            200000000000C409000000000000000000000000000000000000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            6000606060006060600060606000606060006060600060606000606060006060
            600060606000606060006060600060606000606060006060600060606000}
          ParentFont = False
          Rounded = True
          OnClick = AdvToolButton12Click
          Version = '1.7.2.1'
          ExplicitLeft = 982
          TMSStyle = 0
        end
      end
    end
    object AdvTabSheet2: TAdvTabSheet
      Caption = 'AdvTabSheet2'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label7: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 120
        Height = 27
        Caption = 'Bon de sortie'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Mona Sans'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 3
        Top = 36
        Width = 43
        Height = 15
        Caption = 'ID_BonS'
        FocusControl = cxDBSpinEdit3
      end
      object Label9: TLabel
        Left = 3
        Top = 84
        Width = 58
        Height = 15
        Caption = 'Date_sortie'
        FocusControl = cxDBTextEdit3
      end
      object Label10: TLabel
        Left = 3
        Top = 132
        Width = 88
        Height = 15
        Caption = 'ID_BENEFICIAIRE'
        FocusControl = cxDBSpinEdit4
      end
      object cxDBSpinEdit3: TcxDBSpinEdit
        Left = 3
        Top = 52
        DataBinding.DataField = 'ID_BonS'
        DataBinding.DataSource = DataSource2
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 3
        Top = 100
        DataBinding.DataField = 'Date_sortie'
        DataBinding.DataSource = DataSource2
        TabOrder = 1
        Width = 121
      end
      object cxDBSpinEdit4: TcxDBSpinEdit
        Left = 3
        Top = 148
        DataBinding.DataField = 'ID_BENEFICIAIRE'
        DataBinding.DataSource = DataSource2
        TabOrder = 2
        Width = 121
      end
    end
    object AdvTabSheet3: TAdvTabSheet
      Caption = 'AdvTabSheet3'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      ExplicitLeft = 24
      ExplicitTop = 0
      ExplicitWidth = 100
      ExplicitHeight = 100
      object Label6: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 158
        Height = 27
        Caption = 'Bon d'#39'affectation'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Mona Sans'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 3
        Top = 36
        Width = 53
        Height = 15
        Caption = 'ID_BonAff'
        FocusControl = cxDBSpinEdit5
      end
      object Label12: TLabel
        Left = 3
        Top = 84
        Width = 86
        Height = 15
        Caption = 'Date_affectation'
        FocusControl = cxDBTextEdit4
      end
      object Label13: TLabel
        Left = 3
        Top = 132
        Width = 88
        Height = 15
        Caption = 'ID_BENEFICIAIRE'
        FocusControl = cxDBSpinEdit6
      end
      object cxDBSpinEdit5: TcxDBSpinEdit
        Left = 3
        Top = 52
        DataBinding.DataField = 'ID_BonAff'
        DataBinding.DataSource = DataSource3
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 3
        Top = 100
        DataBinding.DataField = 'Date_affectation'
        DataBinding.DataSource = DataSource3
        TabOrder = 1
        Width = 121
      end
      object cxDBSpinEdit6: TcxDBSpinEdit
        Left = 3
        Top = 148
        DataBinding.DataField = 'ID_BENEFICIAIRE'
        DataBinding.DataSource = DataSource3
        TabOrder = 2
        Width = 121
      end
    end
    object AdvTabSheet4: TAdvTabSheet
      Caption = 'AdvTabSheet4'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      ExplicitLeft = 24
      ExplicitTop = 0
      ExplicitWidth = 100
      ExplicitHeight = 100
      object Label14: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 145
        Height = 27
        Caption = 'Bon de livraison'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Mona Sans'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 3
        Top = 36
        Width = 98
        Height = 15
        Caption = 'ID_BonDeLivraison'
        FocusControl = cxDBSpinEdit7
      end
      object Label16: TLabel
        Left = 3
        Top = 84
        Width = 76
        Height = 15
        Caption = 'Date_Livraison'
        FocusControl = cxDBTextEdit5
      end
      object Label17: TLabel
        Left = 3
        Top = 132
        Width = 32
        Height = 15
        Caption = 'Prix_U'
        FocusControl = cxDBCurrencyEdit1
      end
      object Label18: TLabel
        Left = 3
        Top = 180
        Width = 31
        Height = 15
        Caption = 'Prix_T'
        FocusControl = cxDBCurrencyEdit2
      end
      object Label19: TLabel
        Left = 3
        Top = 228
        Width = 39
        Height = 15
        Caption = 'ID_BDC'
        FocusControl = cxDBSpinEdit8
      end
      object Label20: TLabel
        Left = 3
        Top = 276
        Width = 77
        Height = 15
        Caption = 'ID_Fournisseur'
        FocusControl = cxDBSpinEdit9
      end
      object cxDBSpinEdit7: TcxDBSpinEdit
        Left = 3
        Top = 52
        DataBinding.DataField = 'ID_BonDeLivraison'
        DataBinding.DataSource = DataSource4
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 3
        Top = 100
        DataBinding.DataField = 'Date_Livraison'
        DataBinding.DataSource = DataSource4
        TabOrder = 1
        Width = 121
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 3
        Top = 148
        DataBinding.DataField = 'Prix_U'
        DataBinding.DataSource = DataSource4
        TabOrder = 2
        Width = 121
      end
      object cxDBCurrencyEdit2: TcxDBCurrencyEdit
        Left = 3
        Top = 196
        DataBinding.DataField = 'Prix_T'
        DataBinding.DataSource = DataSource4
        TabOrder = 3
        Width = 121
      end
      object cxDBSpinEdit8: TcxDBSpinEdit
        Left = 3
        Top = 244
        DataBinding.DataField = 'ID_BDC'
        DataBinding.DataSource = DataSource4
        TabOrder = 4
        Width = 121
      end
      object cxDBSpinEdit9: TcxDBSpinEdit
        Left = 3
        Top = 292
        DataBinding.DataField = 'ID_Fournisseur'
        DataBinding.DataSource = DataSource4
        TabOrder = 5
        Width = 121
      end
    end
    object AdvTabSheet5: TAdvTabSheet
      Caption = 'AdvTabSheet5'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      ExplicitLeft = 24
      ExplicitTop = 0
      ExplicitWidth = 100
      ExplicitHeight = 100
      object Label21: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 172
        Height = 27
        Caption = 'Bon de commande'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Mona Sans'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 3
        Top = 36
        Width = 39
        Height = 15
        Caption = 'ID_BDC'
        FocusControl = cxDBSpinEdit10
      end
      object Label23: TLabel
        Left = 3
        Top = 84
        Width = 92
        Height = 15
        Caption = 'Date_Commande'
        FocusControl = cxDBTextEdit6
      end
      object Label24: TLabel
        Left = 3
        Top = 132
        Width = 77
        Height = 15
        Caption = 'ID_Fournisseur'
        FocusControl = cxDBSpinEdit11
      end
      object cxDBSpinEdit10: TcxDBSpinEdit
        Left = 3
        Top = 52
        DataBinding.DataField = 'ID_BDC'
        DataBinding.DataSource = DataSource5
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 3
        Top = 100
        DataBinding.DataField = 'Date_Commande'
        DataBinding.DataSource = DataSource5
        TabOrder = 1
        Width = 121
      end
      object cxDBSpinEdit11: TcxDBSpinEdit
        Left = 3
        Top = 148
        DataBinding.DataField = 'ID_Fournisseur'
        DataBinding.DataSource = DataSource5
        TabOrder = 2
        Width = 121
      end
    end
    object AdvTabSheet6: TAdvTabSheet
      Caption = 'AdvTabSheet6'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      ExplicitLeft = 24
      ExplicitTop = 0
      ExplicitWidth = 100
      ExplicitHeight = 100
      object Label25: TLabel
        Left = 3
        Top = 36
        Width = 77
        Height = 15
        Caption = 'ID_Fournisseur'
        FocusControl = cxDBSpinEdit12
      end
      object Label26: TLabel
        Left = 3
        Top = 84
        Width = 27
        Height = 15
        Caption = 'Nom'
        FocusControl = cxDBTextEdit7
      end
      object Label27: TLabel
        Left = 3
        Top = 132
        Width = 91
        Height = 15
        Caption = 'Type_Fournisseur'
        FocusControl = cxDBTextEdit8
      end
      object Label28: TLabel
        Left = 3
        Top = 180
        Width = 41
        Height = 15
        Caption = 'Adresse'
        FocusControl = cxDBTextEdit9
      end
      object Label29: TLabel
        Left = 3
        Top = 228
        Width = 29
        Height = 15
        Caption = 'Email'
        FocusControl = cxDBTextEdit10
      end
      object Label30: TLabel
        Left = 3
        Top = 276
        Width = 15
        Height = 15
        Caption = 'Tel'
        FocusControl = cxDBTextEdit11
      end
      object Label31: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 110
        Height = 27
        Caption = 'Fournisseur'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Mona Sans'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxDBSpinEdit12: TcxDBSpinEdit
        Left = 3
        Top = 52
        DataBinding.DataField = 'ID_Fournisseur'
        DataBinding.DataSource = DataSource6
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 3
        Top = 100
        DataBinding.DataField = 'Nom'
        DataBinding.DataSource = DataSource6
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 3
        Top = 148
        DataBinding.DataField = 'Type_Fournisseur'
        DataBinding.DataSource = DataSource6
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 3
        Top = 196
        DataBinding.DataField = 'Adresse'
        DataBinding.DataSource = DataSource6
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 3
        Top = 244
        DataBinding.DataField = 'Email'
        DataBinding.DataSource = DataSource6
        TabOrder = 4
        Width = 121
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 3
        Top = 292
        DataBinding.DataField = 'Tel'
        DataBinding.DataSource = DataSource6
        TabOrder = 5
        Width = 121
      end
    end
    object AdvTabSheet7: TAdvTabSheet
      Caption = 'AdvTabSheet7'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      ExplicitLeft = 24
      ExplicitTop = 0
      ExplicitWidth = 100
      ExplicitHeight = 100
      object Label32: TLabel
        Left = 3
        Top = 36
        Width = 88
        Height = 15
        Caption = 'ID_BENEFICIAIRE'
        FocusControl = cxDBSpinEdit13
      end
      object Label33: TLabel
        Left = 3
        Top = 84
        Width = 27
        Height = 15
        Caption = 'Nom'
        FocusControl = cxDBTextEdit12
      end
      object Label34: TLabel
        Left = 3
        Top = 132
        Width = 91
        Height = 15
        Caption = 'Type_Beneficiaire'
        FocusControl = cxDBTextEdit13
      end
      object Label35: TLabel
        Left = 3
        Top = 180
        Width = 41
        Height = 15
        Caption = 'Adresse'
        FocusControl = cxDBTextEdit14
      end
      object Label36: TLabel
        Left = 3
        Top = 228
        Width = 29
        Height = 15
        Caption = 'Email'
        FocusControl = cxDBTextEdit15
      end
      object Label37: TLabel
        Left = 3
        Top = 276
        Width = 15
        Height = 15
        Caption = 'Tel'
        FocusControl = cxDBTextEdit16
      end
      object Label38: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 110
        Height = 27
        Caption = 'B'#233'n'#233'ficiaire'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Mona Sans'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxDBSpinEdit13: TcxDBSpinEdit
        Left = 3
        Top = 52
        DataBinding.DataField = 'ID_BENEFICIAIRE'
        DataBinding.DataSource = DataSource7
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit12: TcxDBTextEdit
        Left = 3
        Top = 100
        DataBinding.DataField = 'Nom'
        DataBinding.DataSource = DataSource7
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit13: TcxDBTextEdit
        Left = 3
        Top = 148
        DataBinding.DataField = 'Type_Beneficiaire'
        DataBinding.DataSource = DataSource7
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit14: TcxDBTextEdit
        Left = 3
        Top = 196
        DataBinding.DataField = 'Adresse'
        DataBinding.DataSource = DataSource7
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit15: TcxDBTextEdit
        Left = 3
        Top = 244
        DataBinding.DataField = 'Email'
        DataBinding.DataSource = DataSource7
        TabOrder = 4
        Width = 121
      end
      object cxDBTextEdit16: TcxDBTextEdit
        Left = 3
        Top = 292
        DataBinding.DataField = 'Tel'
        DataBinding.DataSource = DataSource7
        TabOrder = 5
        Width = 121
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DataModule2.Produit
    Left = 520
    Top = 264
  end
  object DataSource2: TDataSource
    DataSet = DataModule2.BonSortie
    Left = 528
    Top = 272
  end
  object DataSource3: TDataSource
    DataSet = DataModule2.BonAffectation
    Left = 536
    Top = 280
  end
  object DataSource4: TDataSource
    DataSet = DataModule2.BonLivraison
    Left = 544
    Top = 288
  end
  object DataSource5: TDataSource
    DataSet = DataModule2.BonCommande
    Left = 552
    Top = 296
  end
  object DataSource6: TDataSource
    DataSet = DataModule2.Fournisseur
    Left = 560
    Top = 304
  end
  object DataSource7: TDataSource
    DataSet = DataModule2.Beneficiaire
    Left = 568
    Top = 312
  end
end
