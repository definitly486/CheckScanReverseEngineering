.class public final Landroidx/compose/material3/ColorScheme;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final background:J

.field private defaultAssistChipColorsCached:Landroidx/compose/material3/ChipColors;

.field private defaultButtonColorsCached:Landroidx/compose/material3/ButtonColors;

.field private defaultCardColorsCached:Landroidx/compose/material3/CardColors;

.field private defaultCheckboxColorsCached:Landroidx/compose/material3/CheckboxColors;

.field private defaultDatePickerColorsCached:Landroidx/compose/material3/DatePickerColors;

.field private defaultElevatedAssistChipColorsCached:Landroidx/compose/material3/ChipColors;

.field private defaultElevatedButtonColorsCached:Landroidx/compose/material3/ButtonColors;

.field private defaultElevatedCardColorsCached:Landroidx/compose/material3/CardColors;

.field private defaultElevatedFilterChipColorsCached:Landroidx/compose/material3/SelectableChipColors;

.field private defaultElevatedSuggestionChipColorsCached:Landroidx/compose/material3/ChipColors;

.field private defaultFilledIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

.field private defaultFilledIconToggleButtonColorsCached:Landroidx/compose/material3/IconToggleButtonColors;

.field private defaultFilledTonalButtonColorsCached:Landroidx/compose/material3/ButtonColors;

.field private defaultFilledTonalIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

.field private defaultFilledTonalIconToggleButtonColorsCached:Landroidx/compose/material3/IconToggleButtonColors;

.field private defaultFilterChipColorsCached:Landroidx/compose/material3/SelectableChipColors;

.field private defaultIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

.field private defaultIconButtonVibrantColorsCached:Landroidx/compose/material3/IconButtonColors;

.field private defaultIconToggleButtonColorsCached:Landroidx/compose/material3/IconToggleButtonColors;

.field private defaultIconToggleButtonVibrantColorsCached:Landroidx/compose/material3/IconToggleButtonColors;

.field private defaultInputChipColorsCached:Landroidx/compose/material3/SelectableChipColors;

.field private defaultListItemColorsCached:Landroidx/compose/material3/ListItemColors;

.field private defaultMenuItemColorsCached:Landroidx/compose/material3/MenuItemColors;

.field private defaultNavigationBarItemColorsCached:Landroidx/compose/material3/NavigationBarItemColors;

.field private defaultNavigationRailItemColorsCached:Landroidx/compose/material3/NavigationRailItemColors;

.field private defaultOutlinedButtonColorsCached:Landroidx/compose/material3/ButtonColors;

.field private defaultOutlinedCardColorsCached:Landroidx/compose/material3/CardColors;

.field private defaultOutlinedIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

.field private defaultOutlinedIconButtonVibrantColorsCached:Landroidx/compose/material3/IconButtonColors;

.field private defaultOutlinedIconToggleButtonColorsCached:Landroidx/compose/material3/IconToggleButtonColors;

.field private defaultOutlinedIconToggleButtonVibrantColorsCached:Landroidx/compose/material3/IconToggleButtonColors;

.field private defaultOutlinedTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

.field private defaultRadioButtonColorsCached:Landroidx/compose/material3/RadioButtonColors;

.field private defaultRichTooltipColorsCached:Landroidx/compose/material3/RichTooltipColors;

.field private defaultSegmentedButtonColorsCached:Landroidx/compose/material3/SegmentedButtonColors;

.field private defaultShortNavigationBarItemColorsCached:Landroidx/compose/material3/NavigationItemColors;

.field private defaultSliderColorsCached:Landroidx/compose/material3/SliderColors;

.field private defaultSuggestionChipColorsCached:Landroidx/compose/material3/ChipColors;

.field private defaultSwitchColorsCached:Landroidx/compose/material3/SwitchColors;

.field private defaultTextButtonColorsCached:Landroidx/compose/material3/ButtonColors;

.field private defaultTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

.field private defaultTimePickerColorsCached:Landroidx/compose/material3/TimePickerColors;

.field private defaultTopAppBarColorsCached:Landroidx/compose/material3/TopAppBarColors;

.field private defaultVerticalDragHandleColorsCached:Landroidx/compose/material3/DragHandleColors;

.field private defaultWideNavigationRailItemColorsCached:Landroidx/compose/material3/NavigationItemColors;

.field private defaultWideWideNavigationRailColorsCached:Landroidx/compose/material3/WideNavigationRailColors;

.field private final error:J

.field private final errorContainer:J

.field private final inverseOnSurface:J

.field private final inversePrimary:J

.field private final inverseSurface:J

.field private final onBackground:J

.field private final onError:J

.field private final onErrorContainer:J

.field private final onPrimary:J

.field private final onPrimaryContainer:J

.field private final onPrimaryFixed:J

.field private final onPrimaryFixedVariant:J

.field private final onSecondary:J

.field private final onSecondaryContainer:J

.field private final onSecondaryFixed:J

.field private final onSecondaryFixedVariant:J

.field private final onSurface:J

.field private final onSurfaceVariant:J

.field private final onTertiary:J

.field private final onTertiaryContainer:J

.field private final onTertiaryFixed:J

.field private final onTertiaryFixedVariant:J

.field private final outline:J

.field private final outlineVariant:J

.field private final primary:J

.field private final primaryContainer:J

.field private final primaryFixed:J

.field private final primaryFixedDim:J

.field private final scrim:J

.field private final secondary:J

.field private final secondaryContainer:J

.field private final secondaryFixed:J

.field private final secondaryFixedDim:J

.field private final surface:J

.field private final surfaceBright:J

.field private final surfaceContainer:J

.field private final surfaceContainerHigh:J

.field private final surfaceContainerHighest:J

.field private final surfaceContainerLow:J

.field private final surfaceContainerLowest:J

.field private final surfaceDim:J

.field private final surfaceTint:J

.field private final surfaceVariant:J

.field private final tertiary:J

.field private final tertiaryContainer:J

.field private final tertiaryFixed:J

.field private final tertiaryFixedDim:J


# direct methods
.method private constructor <init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V
    .locals 99

    .line 197
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v60

    .line 198
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v62

    .line 199
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v64

    .line 200
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v66

    .line 201
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v68

    .line 202
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v70

    .line 203
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v72

    .line 204
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v74

    .line 205
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v76

    .line 206
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v78

    .line 207
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v80

    .line 208
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v82

    .line 209
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v84

    .line 210
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v86

    .line 211
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v88

    .line 212
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v90

    .line 213
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v92

    .line 214
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v94

    .line 215
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v96

    const/16 v98, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-wide/from16 v18, p17

    move-wide/from16 v20, p19

    move-wide/from16 v22, p21

    move-wide/from16 v24, p23

    move-wide/from16 v26, p25

    move-wide/from16 v28, p27

    move-wide/from16 v30, p29

    move-wide/from16 v32, p31

    move-wide/from16 v34, p33

    move-wide/from16 v36, p35

    move-wide/from16 v38, p37

    move-wide/from16 v40, p39

    move-wide/from16 v42, p41

    move-wide/from16 v44, p43

    move-wide/from16 v46, p45

    move-wide/from16 v48, p47

    move-wide/from16 v50, p49

    move-wide/from16 v52, p51

    move-wide/from16 v54, p53

    move-wide/from16 v56, p55

    move-wide/from16 v58, p57

    .line 216
    invoke-direct/range {v1 .. v98}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLjh2;)V

    return-void
.end method

.method private constructor <init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V
    .locals 99

    .line 184
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v74

    .line 185
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v76

    .line 186
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v78

    .line 187
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v80

    .line 188
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v82

    .line 189
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v84

    .line 190
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v86

    .line 191
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v88

    .line 192
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v90

    .line 193
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v92

    .line 194
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v94

    .line 195
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v96

    const/16 v98, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-wide/from16 v18, p17

    move-wide/from16 v20, p19

    move-wide/from16 v22, p21

    move-wide/from16 v24, p23

    move-wide/from16 v26, p25

    move-wide/from16 v28, p27

    move-wide/from16 v30, p29

    move-wide/from16 v32, p31

    move-wide/from16 v34, p33

    move-wide/from16 v36, p35

    move-wide/from16 v38, p37

    move-wide/from16 v40, p39

    move-wide/from16 v42, p41

    move-wide/from16 v44, p43

    move-wide/from16 v46, p45

    move-wide/from16 v48, p47

    move-wide/from16 v50, p49

    move-wide/from16 v52, p51

    move-wide/from16 v54, p53

    move-wide/from16 v56, p55

    move-wide/from16 v58, p57

    move-wide/from16 v60, p59

    move-wide/from16 v62, p61

    move-wide/from16 v64, p63

    move-wide/from16 v66, p65

    move-wide/from16 v68, p67

    move-wide/from16 v70, p69

    move-wide/from16 v72, p71

    .line 196
    invoke-direct/range {v1 .. v98}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLjh2;)V

    return-void
.end method

.method private constructor <init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->primary:J

    iput-wide p3, p0, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    iput-wide p5, p0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    iput-wide p7, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    iput-wide p9, p0, Landroidx/compose/material3/ColorScheme;->inversePrimary:J

    iput-wide p11, p0, Landroidx/compose/material3/ColorScheme;->secondary:J

    iput-wide p13, p0, Landroidx/compose/material3/ColorScheme;->onSecondary:J

    move-wide p1, p15

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    move-wide/from16 p1, p17

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    move-wide/from16 p1, p19

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->tertiary:J

    move-wide/from16 p1, p21

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->onTertiary:J

    move-wide/from16 p1, p23

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    move-wide/from16 p1, p25

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    move-wide/from16 p1, p27

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->background:J

    move-wide/from16 p1, p29

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->onBackground:J

    move-wide/from16 p1, p31

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->surface:J

    move-wide/from16 p1, p33

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->onSurface:J

    move-wide/from16 p1, p35

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    move-wide/from16 p1, p37

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    move-wide/from16 p1, p39

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->surfaceTint:J

    move-wide/from16 p1, p41

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    move-wide/from16 p1, p43

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    move-wide/from16 p1, p45

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->error:J

    move-wide/from16 p1, p47

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->onError:J

    move-wide/from16 p1, p49

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->errorContainer:J

    move-wide/from16 p1, p51

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->onErrorContainer:J

    move-wide/from16 p1, p53

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->outline:J

    move-wide/from16 p1, p55

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->outlineVariant:J

    move-wide/from16 p1, p57

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->scrim:J

    move-wide/from16 p1, p59

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->surfaceBright:J

    move-wide/from16 p1, p61

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->surfaceDim:J

    move-wide/from16 p1, p63

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    move-wide/from16 p1, p65

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHigh:J

    move-wide/from16 p1, p67

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    move-wide/from16 p1, p69

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    move-wide/from16 p1, p71

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLowest:J

    move-wide/from16 p1, p73

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->primaryFixed:J

    move-wide/from16 p1, p75

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->primaryFixedDim:J

    move-wide/from16 p1, p77

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryFixed:J

    move-wide/from16 p1, p79

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryFixedVariant:J

    move-wide/from16 p1, p81

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->secondaryFixed:J

    move-wide/from16 p1, p83

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->secondaryFixedDim:J

    move-wide/from16 p1, p85

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryFixed:J

    move-wide/from16 p1, p87

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryFixedVariant:J

    move-wide/from16 p1, p89

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->tertiaryFixed:J

    move-wide/from16 p1, p91

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->tertiaryFixedDim:J

    move-wide/from16 p1, p93

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryFixed:J

    move-wide/from16 p1, p95

    iput-wide p1, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryFixedVariant:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLjh2;)V
    .locals 0

    .line 183
    invoke-direct/range {p0 .. p96}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLjh2;)V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    .line 181
    invoke-direct/range {p0 .. p72}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJLjh2;)V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    .line 182
    invoke-direct/range {p0 .. p58}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    return-void
.end method

.method public static synthetic copy-C-Xl9yA$default(Landroidx/compose/material3/ColorScheme;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJIILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p73

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->primary:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget-wide v6, v0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p5

    :goto_2
    and-int/lit8 v8, v1, 0x8

    if-eqz v8, :cond_3

    iget-wide v8, v0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p7

    :goto_3
    and-int/lit8 v10, v1, 0x10

    if-eqz v10, :cond_4

    iget-wide v10, v0, Landroidx/compose/material3/ColorScheme;->inversePrimary:J

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p9

    :goto_4
    and-int/lit8 v12, v1, 0x20

    if-eqz v12, :cond_5

    iget-wide v12, v0, Landroidx/compose/material3/ColorScheme;->secondary:J

    goto :goto_5

    :cond_5
    move-wide/from16 v12, p11

    :goto_5
    and-int/lit8 v14, v1, 0x40

    if-eqz v14, :cond_6

    iget-wide v14, v0, Landroidx/compose/material3/ColorScheme;->onSecondary:J

    goto :goto_6

    :cond_6
    move-wide/from16 v14, p13

    :goto_6
    move-wide/from16 v16, v2

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_7

    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    goto :goto_7

    :cond_7
    move-wide/from16 v2, p15

    :goto_7
    move-wide/from16 p1, v2

    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_8

    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    goto :goto_8

    :cond_8
    move-wide/from16 v2, p17

    :goto_8
    move-wide/from16 p3, v2

    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_9

    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->tertiary:J

    goto :goto_9

    :cond_9
    move-wide/from16 v2, p19

    :goto_9
    move-wide/from16 p5, v2

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_a

    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->onTertiary:J

    goto :goto_a

    :cond_a
    move-wide/from16 v2, p21

    :goto_a
    move-wide/from16 p7, v2

    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_b

    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    goto :goto_b

    :cond_b
    move-wide/from16 v2, p23

    :goto_b
    move-wide/from16 p9, v2

    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_c

    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    goto :goto_c

    :cond_c
    move-wide/from16 v2, p25

    :goto_c
    move-wide/from16 p11, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->background:J

    goto :goto_d

    :cond_d
    move-wide/from16 v2, p27

    :goto_d
    move-wide/from16 p13, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->onBackground:J

    goto :goto_e

    :cond_e
    move-wide/from16 v2, p29

    :goto_e
    const v18, 0x8000

    and-int v18, v1, v18

    move-wide/from16 p15, v2

    if-eqz v18, :cond_f

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surface:J

    goto :goto_f

    :cond_f
    move-wide/from16 v1, p31

    :goto_f
    const/high16 v3, 0x10000

    and-int v3, p73, v3

    move-wide/from16 p17, v1

    if-eqz v3, :cond_10

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onSurface:J

    goto :goto_10

    :cond_10
    move-wide/from16 v1, p33

    :goto_10
    const/high16 v3, 0x20000

    and-int v3, p73, v3

    move-wide/from16 p19, v1

    if-eqz v3, :cond_11

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    goto :goto_11

    :cond_11
    move-wide/from16 v1, p35

    :goto_11
    const/high16 v3, 0x40000

    and-int v3, p73, v3

    move-wide/from16 p21, v1

    if-eqz v3, :cond_12

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    goto :goto_12

    :cond_12
    move-wide/from16 v1, p37

    :goto_12
    const/high16 v3, 0x80000

    and-int v3, p73, v3

    move-wide/from16 p23, v1

    if-eqz v3, :cond_13

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceTint:J

    goto :goto_13

    :cond_13
    move-wide/from16 v1, p39

    :goto_13
    const/high16 v3, 0x100000

    and-int v3, p73, v3

    move-wide/from16 p25, v1

    if-eqz v3, :cond_14

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    goto :goto_14

    :cond_14
    move-wide/from16 v1, p41

    :goto_14
    const/high16 v3, 0x200000

    and-int v3, p73, v3

    move-wide/from16 p27, v1

    if-eqz v3, :cond_15

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    goto :goto_15

    :cond_15
    move-wide/from16 v1, p43

    :goto_15
    const/high16 v3, 0x400000

    and-int v3, p73, v3

    move-wide/from16 p29, v1

    if-eqz v3, :cond_16

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->error:J

    goto :goto_16

    :cond_16
    move-wide/from16 v1, p45

    :goto_16
    const/high16 v3, 0x800000

    and-int v3, p73, v3

    move-wide/from16 p31, v1

    if-eqz v3, :cond_17

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onError:J

    goto :goto_17

    :cond_17
    move-wide/from16 v1, p47

    :goto_17
    const/high16 v3, 0x1000000

    and-int v3, p73, v3

    move-wide/from16 p33, v1

    if-eqz v3, :cond_18

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->errorContainer:J

    goto :goto_18

    :cond_18
    move-wide/from16 v1, p49

    :goto_18
    const/high16 v3, 0x2000000

    and-int v3, p73, v3

    move-wide/from16 p35, v1

    if-eqz v3, :cond_19

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onErrorContainer:J

    goto :goto_19

    :cond_19
    move-wide/from16 v1, p51

    :goto_19
    const/high16 v3, 0x4000000

    and-int v3, p73, v3

    move-wide/from16 p37, v1

    if-eqz v3, :cond_1a

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->outline:J

    goto :goto_1a

    :cond_1a
    move-wide/from16 v1, p53

    :goto_1a
    const/high16 v3, 0x8000000

    and-int v3, p73, v3

    move-wide/from16 p39, v1

    if-eqz v3, :cond_1b

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->outlineVariant:J

    goto :goto_1b

    :cond_1b
    move-wide/from16 v1, p55

    :goto_1b
    const/high16 v3, 0x10000000

    and-int v3, p73, v3

    move-wide/from16 p41, v1

    if-eqz v3, :cond_1c

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->scrim:J

    goto :goto_1c

    :cond_1c
    move-wide/from16 v1, p57

    :goto_1c
    const/high16 v3, 0x20000000

    and-int v3, p73, v3

    move-wide/from16 p43, v1

    if-eqz v3, :cond_1d

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceBright:J

    goto :goto_1d

    :cond_1d
    move-wide/from16 v1, p59

    :goto_1d
    const/high16 v3, 0x40000000    # 2.0f

    and-int v3, p73, v3

    move-wide/from16 p45, v1

    if-eqz v3, :cond_1e

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceDim:J

    goto :goto_1e

    :cond_1e
    move-wide/from16 v1, p61

    :goto_1e
    const/high16 v3, -0x80000000

    and-int v3, p73, v3

    move-wide/from16 p47, v1

    if-eqz v3, :cond_1f

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    goto :goto_1f

    :cond_1f
    move-wide/from16 v1, p63

    :goto_1f
    and-int/lit8 v3, p74, 0x1

    move-wide/from16 p49, v1

    if-eqz v3, :cond_20

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHigh:J

    goto :goto_20

    :cond_20
    move-wide/from16 v1, p65

    :goto_20
    and-int/lit8 v3, p74, 0x2

    move-wide/from16 p51, v1

    if-eqz v3, :cond_21

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    goto :goto_21

    :cond_21
    move-wide/from16 v1, p67

    :goto_21
    and-int/lit8 v3, p74, 0x4

    move-wide/from16 p53, v1

    if-eqz v3, :cond_22

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    goto :goto_22

    :cond_22
    move-wide/from16 v1, p69

    :goto_22
    and-int/lit8 v3, p74, 0x8

    if-eqz v3, :cond_23

    move-wide/from16 p55, v1

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLowest:J

    move-wide/from16 p70, p55

    move-wide/from16 p72, v1

    move-wide/from16 p58, p43

    move-wide/from16 p60, p45

    move-wide/from16 p62, p47

    move-wide/from16 p64, p49

    move-wide/from16 p66, p51

    move-wide/from16 p68, p53

    move-wide/from16 p44, p29

    move-wide/from16 p46, p31

    move-wide/from16 p48, p33

    move-wide/from16 p50, p35

    move-wide/from16 p52, p37

    move-wide/from16 p54, p39

    move-wide/from16 p56, p41

    move-wide/from16 p30, p15

    move-wide/from16 p32, p17

    move-wide/from16 p34, p19

    move-wide/from16 p36, p21

    move-wide/from16 p38, p23

    move-wide/from16 p40, p25

    move-wide/from16 p42, p27

    move-wide/from16 p16, p1

    move-wide/from16 p18, p3

    move-wide/from16 p20, p5

    move-wide/from16 p22, p7

    move-wide/from16 p24, p9

    move-wide/from16 p26, p11

    move-wide/from16 p28, p13

    move-object/from16 p1, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    move-wide/from16 p10, v10

    move-wide/from16 p12, v12

    move-wide/from16 p14, v14

    :goto_23
    move-wide/from16 p2, v16

    goto :goto_24

    :cond_23
    move-wide/from16 p72, p71

    move-wide/from16 p70, v1

    move-wide/from16 p56, p41

    move-wide/from16 p58, p43

    move-wide/from16 p60, p45

    move-wide/from16 p62, p47

    move-wide/from16 p64, p49

    move-wide/from16 p66, p51

    move-wide/from16 p68, p53

    move-wide/from16 p42, p27

    move-wide/from16 p44, p29

    move-wide/from16 p46, p31

    move-wide/from16 p48, p33

    move-wide/from16 p50, p35

    move-wide/from16 p52, p37

    move-wide/from16 p54, p39

    move-wide/from16 p28, p13

    move-wide/from16 p30, p15

    move-wide/from16 p32, p17

    move-wide/from16 p34, p19

    move-wide/from16 p36, p21

    move-wide/from16 p38, p23

    move-wide/from16 p40, p25

    move-wide/from16 p14, v14

    move-wide/from16 p16, p1

    move-wide/from16 p18, p3

    move-wide/from16 p20, p5

    move-wide/from16 p22, p7

    move-wide/from16 p24, p9

    move-wide/from16 p26, p11

    move-object/from16 p1, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    move-wide/from16 p10, v10

    move-wide/from16 p12, v12

    goto :goto_23

    :goto_24
    invoke-virtual/range {p1 .. p73}, Landroidx/compose/material3/ColorScheme;->copy-C-Xl9yA(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic copy-G1PFc-w$default(Landroidx/compose/material3/ColorScheme;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p59

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->primary:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget-wide v6, v0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p5

    :goto_2
    and-int/lit8 v8, v1, 0x8

    if-eqz v8, :cond_3

    iget-wide v8, v0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p7

    :goto_3
    and-int/lit8 v10, v1, 0x10

    if-eqz v10, :cond_4

    iget-wide v10, v0, Landroidx/compose/material3/ColorScheme;->inversePrimary:J

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p9

    :goto_4
    and-int/lit8 v12, v1, 0x20

    if-eqz v12, :cond_5

    iget-wide v12, v0, Landroidx/compose/material3/ColorScheme;->secondary:J

    goto :goto_5

    :cond_5
    move-wide/from16 v12, p11

    :goto_5
    and-int/lit8 v14, v1, 0x40

    if-eqz v14, :cond_6

    iget-wide v14, v0, Landroidx/compose/material3/ColorScheme;->onSecondary:J

    goto :goto_6

    :cond_6
    move-wide/from16 v14, p13

    :goto_6
    move-wide/from16 v16, v2

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_7

    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    goto :goto_7

    :cond_7
    move-wide/from16 v2, p15

    :goto_7
    move-wide/from16 p1, v2

    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_8

    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    goto :goto_8

    :cond_8
    move-wide/from16 v2, p17

    :goto_8
    move-wide/from16 p3, v2

    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_9

    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->tertiary:J

    goto :goto_9

    :cond_9
    move-wide/from16 v2, p19

    :goto_9
    move-wide/from16 p5, v2

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_a

    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->onTertiary:J

    goto :goto_a

    :cond_a
    move-wide/from16 v2, p21

    :goto_a
    move-wide/from16 p7, v2

    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_b

    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    goto :goto_b

    :cond_b
    move-wide/from16 v2, p23

    :goto_b
    move-wide/from16 p9, v2

    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_c

    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    goto :goto_c

    :cond_c
    move-wide/from16 v2, p25

    :goto_c
    move-wide/from16 p11, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->background:J

    goto :goto_d

    :cond_d
    move-wide/from16 v2, p27

    :goto_d
    move-wide/from16 p13, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->onBackground:J

    goto :goto_e

    :cond_e
    move-wide/from16 v2, p29

    :goto_e
    const v18, 0x8000

    and-int v18, v1, v18

    move-wide/from16 p15, v2

    if-eqz v18, :cond_f

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surface:J

    goto :goto_f

    :cond_f
    move-wide/from16 v1, p31

    :goto_f
    const/high16 v3, 0x10000

    and-int v3, p59, v3

    move-wide/from16 p17, v1

    if-eqz v3, :cond_10

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onSurface:J

    goto :goto_10

    :cond_10
    move-wide/from16 v1, p33

    :goto_10
    const/high16 v3, 0x20000

    and-int v3, p59, v3

    move-wide/from16 p19, v1

    if-eqz v3, :cond_11

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    goto :goto_11

    :cond_11
    move-wide/from16 v1, p35

    :goto_11
    const/high16 v3, 0x40000

    and-int v3, p59, v3

    move-wide/from16 p21, v1

    if-eqz v3, :cond_12

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    goto :goto_12

    :cond_12
    move-wide/from16 v1, p37

    :goto_12
    const/high16 v3, 0x80000

    and-int v3, p59, v3

    move-wide/from16 p23, v1

    if-eqz v3, :cond_13

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceTint:J

    goto :goto_13

    :cond_13
    move-wide/from16 v1, p39

    :goto_13
    const/high16 v3, 0x100000

    and-int v3, p59, v3

    move-wide/from16 p25, v1

    if-eqz v3, :cond_14

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    goto :goto_14

    :cond_14
    move-wide/from16 v1, p41

    :goto_14
    const/high16 v3, 0x200000

    and-int v3, p59, v3

    move-wide/from16 p27, v1

    if-eqz v3, :cond_15

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    goto :goto_15

    :cond_15
    move-wide/from16 v1, p43

    :goto_15
    const/high16 v3, 0x400000

    and-int v3, p59, v3

    move-wide/from16 p29, v1

    if-eqz v3, :cond_16

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->error:J

    goto :goto_16

    :cond_16
    move-wide/from16 v1, p45

    :goto_16
    const/high16 v3, 0x800000

    and-int v3, p59, v3

    move-wide/from16 p31, v1

    if-eqz v3, :cond_17

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onError:J

    goto :goto_17

    :cond_17
    move-wide/from16 v1, p47

    :goto_17
    const/high16 v3, 0x1000000

    and-int v3, p59, v3

    move-wide/from16 p33, v1

    if-eqz v3, :cond_18

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->errorContainer:J

    goto :goto_18

    :cond_18
    move-wide/from16 v1, p49

    :goto_18
    const/high16 v3, 0x2000000

    and-int v3, p59, v3

    move-wide/from16 p35, v1

    if-eqz v3, :cond_19

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onErrorContainer:J

    goto :goto_19

    :cond_19
    move-wide/from16 v1, p51

    :goto_19
    const/high16 v3, 0x4000000

    and-int v3, p59, v3

    move-wide/from16 p37, v1

    if-eqz v3, :cond_1a

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->outline:J

    goto :goto_1a

    :cond_1a
    move-wide/from16 v1, p53

    :goto_1a
    const/high16 v3, 0x8000000

    and-int v3, p59, v3

    move-wide/from16 p39, v1

    if-eqz v3, :cond_1b

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->outlineVariant:J

    goto :goto_1b

    :cond_1b
    move-wide/from16 v1, p55

    :goto_1b
    const/high16 v3, 0x10000000

    and-int v3, p59, v3

    if-eqz v3, :cond_1c

    move-wide/from16 p41, v1

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->scrim:J

    move-wide/from16 p56, p41

    move-wide/from16 p58, v1

    move-wide/from16 p44, p29

    move-wide/from16 p46, p31

    move-wide/from16 p48, p33

    move-wide/from16 p50, p35

    move-wide/from16 p52, p37

    move-wide/from16 p54, p39

    move-wide/from16 p30, p15

    move-wide/from16 p32, p17

    move-wide/from16 p34, p19

    move-wide/from16 p36, p21

    move-wide/from16 p38, p23

    move-wide/from16 p40, p25

    move-wide/from16 p42, p27

    move-wide/from16 p16, p1

    move-wide/from16 p18, p3

    move-wide/from16 p20, p5

    move-wide/from16 p22, p7

    move-wide/from16 p24, p9

    move-wide/from16 p26, p11

    move-wide/from16 p28, p13

    move-object/from16 p1, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    move-wide/from16 p10, v10

    move-wide/from16 p12, v12

    move-wide/from16 p14, v14

    :goto_1c
    move-wide/from16 p2, v16

    goto :goto_1d

    :cond_1c
    move-wide/from16 p58, p57

    move-wide/from16 p56, v1

    move-wide/from16 p42, p27

    move-wide/from16 p44, p29

    move-wide/from16 p46, p31

    move-wide/from16 p48, p33

    move-wide/from16 p50, p35

    move-wide/from16 p52, p37

    move-wide/from16 p54, p39

    move-wide/from16 p28, p13

    move-wide/from16 p30, p15

    move-wide/from16 p32, p17

    move-wide/from16 p34, p19

    move-wide/from16 p36, p21

    move-wide/from16 p38, p23

    move-wide/from16 p40, p25

    move-wide/from16 p14, v14

    move-wide/from16 p16, p1

    move-wide/from16 p18, p3

    move-wide/from16 p20, p5

    move-wide/from16 p22, p7

    move-wide/from16 p24, p9

    move-wide/from16 p26, p11

    move-object/from16 p1, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    move-wide/from16 p10, v10

    move-wide/from16 p12, v12

    goto :goto_1c

    :goto_1d
    invoke-virtual/range {p1 .. p59}, Landroidx/compose/material3/ColorScheme;->copy-G1PFc-w(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic copy-_VG5OTI$default(Landroidx/compose/material3/ColorScheme;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJIILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p97

    move/from16 v2, p98

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->primary:J

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p1

    :goto_0
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_1

    iget-wide v5, v0, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    goto :goto_1

    :cond_1
    move-wide/from16 v5, p3

    :goto_1
    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_2

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    goto :goto_2

    :cond_2
    move-wide/from16 v7, p5

    :goto_2
    and-int/lit8 v9, v1, 0x8

    if-eqz v9, :cond_3

    iget-wide v9, v0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    goto :goto_3

    :cond_3
    move-wide/from16 v9, p7

    :goto_3
    and-int/lit8 v11, v1, 0x10

    if-eqz v11, :cond_4

    iget-wide v11, v0, Landroidx/compose/material3/ColorScheme;->inversePrimary:J

    goto :goto_4

    :cond_4
    move-wide/from16 v11, p9

    :goto_4
    and-int/lit8 v13, v1, 0x20

    if-eqz v13, :cond_5

    iget-wide v13, v0, Landroidx/compose/material3/ColorScheme;->secondary:J

    goto :goto_5

    :cond_5
    move-wide/from16 v13, p11

    :goto_5
    and-int/lit8 v15, v1, 0x40

    if-eqz v15, :cond_6

    move-wide v15, v3

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onSecondary:J

    goto :goto_6

    :cond_6
    move-wide v15, v3

    move-wide/from16 v3, p13

    :goto_6
    move-wide/from16 p1, v3

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_7

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    goto :goto_7

    :cond_7
    move-wide/from16 v3, p15

    :goto_7
    move-wide/from16 p3, v3

    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_8

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    goto :goto_8

    :cond_8
    move-wide/from16 v3, p17

    :goto_8
    move-wide/from16 p5, v3

    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_9

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->tertiary:J

    goto :goto_9

    :cond_9
    move-wide/from16 v3, p19

    :goto_9
    move-wide/from16 p7, v3

    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_a

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onTertiary:J

    goto :goto_a

    :cond_a
    move-wide/from16 v3, p21

    :goto_a
    move-wide/from16 p9, v3

    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_b

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    goto :goto_b

    :cond_b
    move-wide/from16 v3, p23

    :goto_b
    move-wide/from16 p11, v3

    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_c

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    goto :goto_c

    :cond_c
    move-wide/from16 v3, p25

    :goto_c
    move-wide/from16 p13, v3

    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_d

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->background:J

    goto :goto_d

    :cond_d
    move-wide/from16 v3, p27

    :goto_d
    move-wide/from16 p15, v3

    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_e

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onBackground:J

    goto :goto_e

    :cond_e
    move-wide/from16 v3, p29

    :goto_e
    const v17, 0x8000

    and-int v18, v1, v17

    move-wide/from16 p17, v3

    if-eqz v18, :cond_f

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->surface:J

    goto :goto_f

    :cond_f
    move-wide/from16 v3, p31

    :goto_f
    const/high16 v18, 0x10000

    and-int v18, v1, v18

    move-wide/from16 p19, v3

    if-eqz v18, :cond_10

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onSurface:J

    goto :goto_10

    :cond_10
    move-wide/from16 v3, p33

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v1, v18

    move-wide/from16 p21, v3

    if-eqz v18, :cond_11

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    goto :goto_11

    :cond_11
    move-wide/from16 v3, p35

    :goto_11
    const/high16 v18, 0x40000

    and-int v18, v1, v18

    move-wide/from16 p23, v3

    if-eqz v18, :cond_12

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    goto :goto_12

    :cond_12
    move-wide/from16 v3, p37

    :goto_12
    const/high16 v18, 0x80000

    and-int v18, v1, v18

    move-wide/from16 p25, v3

    if-eqz v18, :cond_13

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->surfaceTint:J

    goto :goto_13

    :cond_13
    move-wide/from16 v3, p39

    :goto_13
    const/high16 v18, 0x100000

    and-int v18, v1, v18

    move-wide/from16 p27, v3

    if-eqz v18, :cond_14

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    goto :goto_14

    :cond_14
    move-wide/from16 v3, p41

    :goto_14
    const/high16 v18, 0x200000

    and-int v18, v1, v18

    move-wide/from16 p29, v3

    if-eqz v18, :cond_15

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    goto :goto_15

    :cond_15
    move-wide/from16 v3, p43

    :goto_15
    const/high16 v18, 0x400000

    and-int v18, v1, v18

    move-wide/from16 p31, v3

    if-eqz v18, :cond_16

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->error:J

    goto :goto_16

    :cond_16
    move-wide/from16 v3, p45

    :goto_16
    const/high16 v18, 0x800000

    and-int v18, v1, v18

    move-wide/from16 p33, v3

    if-eqz v18, :cond_17

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onError:J

    goto :goto_17

    :cond_17
    move-wide/from16 v3, p47

    :goto_17
    const/high16 v18, 0x1000000

    and-int v18, v1, v18

    move-wide/from16 p35, v3

    if-eqz v18, :cond_18

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->errorContainer:J

    goto :goto_18

    :cond_18
    move-wide/from16 v3, p49

    :goto_18
    const/high16 v18, 0x2000000

    and-int v18, v1, v18

    move-wide/from16 p37, v3

    if-eqz v18, :cond_19

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onErrorContainer:J

    goto :goto_19

    :cond_19
    move-wide/from16 v3, p51

    :goto_19
    const/high16 v18, 0x4000000

    and-int v18, v1, v18

    move-wide/from16 p39, v3

    if-eqz v18, :cond_1a

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->outline:J

    goto :goto_1a

    :cond_1a
    move-wide/from16 v3, p53

    :goto_1a
    const/high16 v18, 0x8000000

    and-int v18, v1, v18

    move-wide/from16 p41, v3

    if-eqz v18, :cond_1b

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->outlineVariant:J

    goto :goto_1b

    :cond_1b
    move-wide/from16 v3, p55

    :goto_1b
    const/high16 v18, 0x10000000

    and-int v18, v1, v18

    move-wide/from16 p43, v3

    if-eqz v18, :cond_1c

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->scrim:J

    goto :goto_1c

    :cond_1c
    move-wide/from16 v3, p57

    :goto_1c
    const/high16 v18, 0x20000000

    and-int v18, v1, v18

    move-wide/from16 p45, v3

    if-eqz v18, :cond_1d

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->surfaceBright:J

    goto :goto_1d

    :cond_1d
    move-wide/from16 v3, p59

    :goto_1d
    const/high16 v18, 0x40000000    # 2.0f

    and-int v18, v1, v18

    move-wide/from16 p47, v3

    if-eqz v18, :cond_1e

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->surfaceDim:J

    goto :goto_1e

    :cond_1e
    move-wide/from16 v3, p61

    :goto_1e
    const/high16 v18, -0x80000000

    and-int v1, v1, v18

    move-wide/from16 p49, v3

    if-eqz v1, :cond_1f

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    goto :goto_1f

    :cond_1f
    move-wide/from16 v3, p63

    :goto_1f
    and-int/lit8 v1, v2, 0x1

    move-wide/from16 p51, v3

    if-eqz v1, :cond_20

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHigh:J

    goto :goto_20

    :cond_20
    move-wide/from16 v3, p65

    :goto_20
    and-int/lit8 v1, v2, 0x2

    move-wide/from16 p53, v3

    if-eqz v1, :cond_21

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    goto :goto_21

    :cond_21
    move-wide/from16 v3, p67

    :goto_21
    and-int/lit8 v1, v2, 0x4

    move-wide/from16 p55, v3

    if-eqz v1, :cond_22

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    goto :goto_22

    :cond_22
    move-wide/from16 v3, p69

    :goto_22
    and-int/lit8 v1, v2, 0x8

    move-wide/from16 p57, v3

    if-eqz v1, :cond_23

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLowest:J

    goto :goto_23

    :cond_23
    move-wide/from16 v3, p71

    :goto_23
    and-int/lit8 v1, v2, 0x10

    move-wide/from16 p59, v3

    if-eqz v1, :cond_24

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->primaryFixed:J

    goto :goto_24

    :cond_24
    move-wide/from16 v3, p73

    :goto_24
    and-int/lit8 v1, v2, 0x20

    move-wide/from16 p61, v3

    if-eqz v1, :cond_25

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->primaryFixedDim:J

    goto :goto_25

    :cond_25
    move-wide/from16 v3, p75

    :goto_25
    and-int/lit8 v1, v2, 0x40

    move-wide/from16 p63, v3

    if-eqz v1, :cond_26

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onPrimaryFixed:J

    goto :goto_26

    :cond_26
    move-wide/from16 v3, p77

    :goto_26
    and-int/lit16 v1, v2, 0x80

    move-wide/from16 p65, v3

    if-eqz v1, :cond_27

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onPrimaryFixedVariant:J

    goto :goto_27

    :cond_27
    move-wide/from16 v3, p79

    :goto_27
    and-int/lit16 v1, v2, 0x100

    move-wide/from16 p67, v3

    if-eqz v1, :cond_28

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->secondaryFixed:J

    goto :goto_28

    :cond_28
    move-wide/from16 v3, p81

    :goto_28
    and-int/lit16 v1, v2, 0x200

    move-wide/from16 p69, v3

    if-eqz v1, :cond_29

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->secondaryFixedDim:J

    goto :goto_29

    :cond_29
    move-wide/from16 v3, p83

    :goto_29
    and-int/lit16 v1, v2, 0x400

    move-wide/from16 p71, v3

    if-eqz v1, :cond_2a

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onSecondaryFixed:J

    goto :goto_2a

    :cond_2a
    move-wide/from16 v3, p85

    :goto_2a
    and-int/lit16 v1, v2, 0x800

    move-wide/from16 p73, v3

    if-eqz v1, :cond_2b

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onSecondaryFixedVariant:J

    goto :goto_2b

    :cond_2b
    move-wide/from16 v3, p87

    :goto_2b
    and-int/lit16 v1, v2, 0x1000

    move-wide/from16 p75, v3

    if-eqz v1, :cond_2c

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->tertiaryFixed:J

    goto :goto_2c

    :cond_2c
    move-wide/from16 v3, p89

    :goto_2c
    and-int/lit16 v1, v2, 0x2000

    move-wide/from16 p77, v3

    if-eqz v1, :cond_2d

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->tertiaryFixedDim:J

    goto :goto_2d

    :cond_2d
    move-wide/from16 v3, p91

    :goto_2d
    and-int/lit16 v1, v2, 0x4000

    if-eqz v1, :cond_2e

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onTertiaryFixed:J

    goto :goto_2e

    :cond_2e
    move-wide/from16 v1, p93

    :goto_2e
    and-int v17, p98, v17

    if-eqz v17, :cond_2f

    move-wide/from16 p79, v1

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onTertiaryFixedVariant:J

    move-wide/from16 p94, p79

    move-wide/from16 p96, v1

    move-wide/from16 p82, p69

    move-wide/from16 p84, p71

    move-wide/from16 p86, p73

    move-wide/from16 p88, p75

    move-wide/from16 p90, p77

    move-wide/from16 p92, v3

    move-wide/from16 p70, p57

    move-wide/from16 p72, p59

    move-wide/from16 p74, p61

    move-wide/from16 p76, p63

    move-wide/from16 p78, p65

    move-wide/from16 p80, p67

    move-wide/from16 p58, p45

    move-wide/from16 p60, p47

    move-wide/from16 p62, p49

    move-wide/from16 p64, p51

    move-wide/from16 p66, p53

    move-wide/from16 p68, p55

    move-wide/from16 p46, p33

    move-wide/from16 p48, p35

    move-wide/from16 p50, p37

    move-wide/from16 p52, p39

    move-wide/from16 p54, p41

    move-wide/from16 p56, p43

    move-wide/from16 p34, p21

    move-wide/from16 p36, p23

    move-wide/from16 p38, p25

    move-wide/from16 p40, p27

    move-wide/from16 p42, p29

    move-wide/from16 p44, p31

    move-wide/from16 p22, p9

    move-wide/from16 p24, p11

    move-wide/from16 p26, p13

    move-wide/from16 p28, p15

    move-wide/from16 p30, p17

    move-wide/from16 p32, p19

    move-wide/from16 p10, v11

    move-wide/from16 p12, v13

    move-wide/from16 p14, p1

    move-wide/from16 p16, p3

    move-wide/from16 p18, p5

    move-wide/from16 p20, p7

    move-object/from16 p1, v0

    move-wide/from16 p4, v5

    move-wide/from16 p6, v7

    move-wide/from16 p8, v9

    :goto_2f
    move-wide/from16 p2, v15

    goto/16 :goto_30

    :cond_2f
    move-wide/from16 p96, p95

    move-wide/from16 p94, v1

    move-wide/from16 p80, p67

    move-wide/from16 p82, p69

    move-wide/from16 p84, p71

    move-wide/from16 p86, p73

    move-wide/from16 p88, p75

    move-wide/from16 p90, p77

    move-wide/from16 p92, v3

    move-wide/from16 p68, p55

    move-wide/from16 p70, p57

    move-wide/from16 p72, p59

    move-wide/from16 p74, p61

    move-wide/from16 p76, p63

    move-wide/from16 p78, p65

    move-wide/from16 p56, p43

    move-wide/from16 p58, p45

    move-wide/from16 p60, p47

    move-wide/from16 p62, p49

    move-wide/from16 p64, p51

    move-wide/from16 p66, p53

    move-wide/from16 p44, p31

    move-wide/from16 p46, p33

    move-wide/from16 p48, p35

    move-wide/from16 p50, p37

    move-wide/from16 p52, p39

    move-wide/from16 p54, p41

    move-wide/from16 p32, p19

    move-wide/from16 p34, p21

    move-wide/from16 p36, p23

    move-wide/from16 p38, p25

    move-wide/from16 p40, p27

    move-wide/from16 p42, p29

    move-wide/from16 p20, p7

    move-wide/from16 p22, p9

    move-wide/from16 p24, p11

    move-wide/from16 p26, p13

    move-wide/from16 p28, p15

    move-wide/from16 p30, p17

    move-wide/from16 p8, v9

    move-wide/from16 p10, v11

    move-wide/from16 p12, v13

    move-wide/from16 p14, p1

    move-wide/from16 p16, p3

    move-wide/from16 p18, p5

    move-object/from16 p1, v0

    move-wide/from16 p4, v5

    move-wide/from16 p6, v7

    goto :goto_2f

    :goto_30
    invoke-virtual/range {p1 .. p97}, Landroidx/compose/material3/ColorScheme;->copy-_VG5OTI(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getDefaultDatePickerColorsCached$material3$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getDefaultRichTooltipColorsCached$material3$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getDefaultTimePickerColorsCached$material3$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getDefaultTopAppBarColorsCached$material3$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final synthetic copy-C-Xl9yA(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)Landroidx/compose/material3/ColorScheme;
    .locals 101
    .annotation runtime Lul2;
    .end annotation

    const v99, 0xfff0

    const/16 v100, 0x0

    const-wide/16 v74, 0x0

    const-wide/16 v76, 0x0

    const-wide/16 v78, 0x0

    const-wide/16 v80, 0x0

    const-wide/16 v82, 0x0

    const-wide/16 v84, 0x0

    const-wide/16 v86, 0x0

    const-wide/16 v88, 0x0

    const-wide/16 v90, 0x0

    const-wide/16 v92, 0x0

    const-wide/16 v94, 0x0

    const-wide/16 v96, 0x0

    const/16 v98, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-wide/from16 v18, p17

    move-wide/from16 v20, p19

    move-wide/from16 v22, p21

    move-wide/from16 v24, p23

    move-wide/from16 v26, p25

    move-wide/from16 v28, p27

    move-wide/from16 v30, p29

    move-wide/from16 v32, p31

    move-wide/from16 v34, p33

    move-wide/from16 v36, p35

    move-wide/from16 v38, p37

    move-wide/from16 v40, p39

    move-wide/from16 v42, p41

    move-wide/from16 v44, p43

    move-wide/from16 v46, p45

    move-wide/from16 v48, p47

    move-wide/from16 v50, p49

    move-wide/from16 v52, p51

    move-wide/from16 v54, p53

    move-wide/from16 v56, p55

    move-wide/from16 v58, p57

    move-wide/from16 v60, p59

    move-wide/from16 v62, p61

    move-wide/from16 v64, p63

    move-wide/from16 v66, p65

    move-wide/from16 v68, p67

    move-wide/from16 v70, p69

    move-wide/from16 v72, p71

    invoke-static/range {v1 .. v100}, Landroidx/compose/material3/ColorScheme;->copy-_VG5OTI$default(Landroidx/compose/material3/ColorScheme;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJIILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic copy-G1PFc-w(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)Landroidx/compose/material3/ColorScheme;
    .locals 101
    .annotation runtime Lul2;
    .end annotation

    const v99, 0xffff

    const/16 v100, 0x0

    const-wide/16 v60, 0x0

    const-wide/16 v62, 0x0

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    const-wide/16 v76, 0x0

    const-wide/16 v78, 0x0

    const-wide/16 v80, 0x0

    const-wide/16 v82, 0x0

    const-wide/16 v84, 0x0

    const-wide/16 v86, 0x0

    const-wide/16 v88, 0x0

    const-wide/16 v90, 0x0

    const-wide/16 v92, 0x0

    const-wide/16 v94, 0x0

    const-wide/16 v96, 0x0

    const/high16 v98, -0x20000000

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-wide/from16 v18, p17

    move-wide/from16 v20, p19

    move-wide/from16 v22, p21

    move-wide/from16 v24, p23

    move-wide/from16 v26, p25

    move-wide/from16 v28, p27

    move-wide/from16 v30, p29

    move-wide/from16 v32, p31

    move-wide/from16 v34, p33

    move-wide/from16 v36, p35

    move-wide/from16 v38, p37

    move-wide/from16 v40, p39

    move-wide/from16 v42, p41

    move-wide/from16 v44, p43

    move-wide/from16 v46, p45

    move-wide/from16 v48, p47

    move-wide/from16 v50, p49

    move-wide/from16 v52, p51

    move-wide/from16 v54, p53

    move-wide/from16 v56, p55

    move-wide/from16 v58, p57

    invoke-static/range {v1 .. v100}, Landroidx/compose/material3/ColorScheme;->copy-_VG5OTI$default(Landroidx/compose/material3/ColorScheme;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJIILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    return-object v0
.end method

.method public final copy-_VG5OTI(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)Landroidx/compose/material3/ColorScheme;
    .locals 98

    new-instance v0, Landroidx/compose/material3/ColorScheme;

    const/16 v97, 0x0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    move-wide/from16 v17, p17

    move-wide/from16 v19, p19

    move-wide/from16 v21, p21

    move-wide/from16 v23, p23

    move-wide/from16 v25, p25

    move-wide/from16 v27, p27

    move-wide/from16 v29, p29

    move-wide/from16 v31, p31

    move-wide/from16 v33, p33

    move-wide/from16 v35, p35

    move-wide/from16 v37, p37

    move-wide/from16 v39, p39

    move-wide/from16 v41, p41

    move-wide/from16 v43, p43

    move-wide/from16 v45, p45

    move-wide/from16 v47, p47

    move-wide/from16 v49, p49

    move-wide/from16 v51, p51

    move-wide/from16 v53, p53

    move-wide/from16 v55, p55

    move-wide/from16 v57, p57

    move-wide/from16 v59, p59

    move-wide/from16 v61, p61

    move-wide/from16 v63, p63

    move-wide/from16 v65, p65

    move-wide/from16 v67, p67

    move-wide/from16 v69, p69

    move-wide/from16 v71, p71

    move-wide/from16 v73, p73

    move-wide/from16 v75, p75

    move-wide/from16 v77, p77

    move-wide/from16 v79, p79

    move-wide/from16 v81, p81

    move-wide/from16 v83, p83

    move-wide/from16 v85, p85

    move-wide/from16 v87, p87

    move-wide/from16 v89, p89

    move-wide/from16 v91, p91

    move-wide/from16 v93, p93

    move-wide/from16 v95, p95

    invoke-direct/range {v0 .. v97}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLjh2;)V

    return-object v0
.end method

.method public final getBackground-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->background:J

    return-wide v0
.end method

.method public final getDefaultAssistChipColorsCached$material3()Landroidx/compose/material3/ChipColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultAssistChipColorsCached:Landroidx/compose/material3/ChipColors;

    return-object p0
.end method

.method public final getDefaultButtonColorsCached$material3()Landroidx/compose/material3/ButtonColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    return-object p0
.end method

.method public final getDefaultCardColorsCached$material3()Landroidx/compose/material3/CardColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultCardColorsCached:Landroidx/compose/material3/CardColors;

    return-object p0
.end method

.method public final getDefaultCheckboxColorsCached$material3()Landroidx/compose/material3/CheckboxColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultCheckboxColorsCached:Landroidx/compose/material3/CheckboxColors;

    return-object p0
.end method

.method public final getDefaultDatePickerColorsCached$material3()Landroidx/compose/material3/DatePickerColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultDatePickerColorsCached:Landroidx/compose/material3/DatePickerColors;

    return-object p0
.end method

.method public final getDefaultElevatedAssistChipColorsCached$material3()Landroidx/compose/material3/ChipColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultElevatedAssistChipColorsCached:Landroidx/compose/material3/ChipColors;

    return-object p0
.end method

.method public final getDefaultElevatedButtonColorsCached$material3()Landroidx/compose/material3/ButtonColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultElevatedButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    return-object p0
.end method

.method public final getDefaultElevatedCardColorsCached$material3()Landroidx/compose/material3/CardColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultElevatedCardColorsCached:Landroidx/compose/material3/CardColors;

    return-object p0
.end method

.method public final getDefaultElevatedFilterChipColorsCached$material3()Landroidx/compose/material3/SelectableChipColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultElevatedFilterChipColorsCached:Landroidx/compose/material3/SelectableChipColors;

    return-object p0
.end method

.method public final getDefaultElevatedSuggestionChipColorsCached$material3()Landroidx/compose/material3/ChipColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultElevatedSuggestionChipColorsCached:Landroidx/compose/material3/ChipColors;

    return-object p0
.end method

.method public final getDefaultFilledIconButtonColorsCached$material3()Landroidx/compose/material3/IconButtonColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultFilledIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    return-object p0
.end method

.method public final getDefaultFilledIconToggleButtonColorsCached$material3()Landroidx/compose/material3/IconToggleButtonColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultFilledIconToggleButtonColorsCached:Landroidx/compose/material3/IconToggleButtonColors;

    return-object p0
.end method

.method public final getDefaultFilledTonalButtonColorsCached$material3()Landroidx/compose/material3/ButtonColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultFilledTonalButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    return-object p0
.end method

.method public final getDefaultFilledTonalIconButtonColorsCached$material3()Landroidx/compose/material3/IconButtonColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultFilledTonalIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    return-object p0
.end method

.method public final getDefaultFilledTonalIconToggleButtonColorsCached$material3()Landroidx/compose/material3/IconToggleButtonColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultFilledTonalIconToggleButtonColorsCached:Landroidx/compose/material3/IconToggleButtonColors;

    return-object p0
.end method

.method public final getDefaultFilterChipColorsCached$material3()Landroidx/compose/material3/SelectableChipColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultFilterChipColorsCached:Landroidx/compose/material3/SelectableChipColors;

    return-object p0
.end method

.method public final getDefaultIconButtonColorsCached$material3()Landroidx/compose/material3/IconButtonColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    return-object p0
.end method

.method public final getDefaultIconButtonVibrantColorsCached$material3()Landroidx/compose/material3/IconButtonColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultIconButtonVibrantColorsCached:Landroidx/compose/material3/IconButtonColors;

    return-object p0
.end method

.method public final getDefaultIconToggleButtonColorsCached$material3()Landroidx/compose/material3/IconToggleButtonColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultIconToggleButtonColorsCached:Landroidx/compose/material3/IconToggleButtonColors;

    return-object p0
.end method

.method public final getDefaultIconToggleButtonVibrantColorsCached$material3()Landroidx/compose/material3/IconToggleButtonColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultIconToggleButtonVibrantColorsCached:Landroidx/compose/material3/IconToggleButtonColors;

    return-object p0
.end method

.method public final getDefaultInputChipColorsCached$material3()Landroidx/compose/material3/SelectableChipColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultInputChipColorsCached:Landroidx/compose/material3/SelectableChipColors;

    return-object p0
.end method

.method public final getDefaultListItemColorsCached$material3()Landroidx/compose/material3/ListItemColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultListItemColorsCached:Landroidx/compose/material3/ListItemColors;

    return-object p0
.end method

.method public final getDefaultMenuItemColorsCached$material3()Landroidx/compose/material3/MenuItemColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultMenuItemColorsCached:Landroidx/compose/material3/MenuItemColors;

    return-object p0
.end method

.method public final getDefaultNavigationBarItemColorsCached$material3()Landroidx/compose/material3/NavigationBarItemColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultNavigationBarItemColorsCached:Landroidx/compose/material3/NavigationBarItemColors;

    return-object p0
.end method

.method public final getDefaultNavigationRailItemColorsCached$material3()Landroidx/compose/material3/NavigationRailItemColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultNavigationRailItemColorsCached:Landroidx/compose/material3/NavigationRailItemColors;

    return-object p0
.end method

.method public final getDefaultOutlinedButtonColorsCached$material3()Landroidx/compose/material3/ButtonColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    return-object p0
.end method

.method public final getDefaultOutlinedCardColorsCached$material3()Landroidx/compose/material3/CardColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedCardColorsCached:Landroidx/compose/material3/CardColors;

    return-object p0
.end method

.method public final getDefaultOutlinedIconButtonColorsCached$material3()Landroidx/compose/material3/IconButtonColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    return-object p0
.end method

.method public final getDefaultOutlinedIconButtonVibrantColorsCached$material3()Landroidx/compose/material3/IconButtonColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedIconButtonVibrantColorsCached:Landroidx/compose/material3/IconButtonColors;

    return-object p0
.end method

.method public final getDefaultOutlinedIconToggleButtonColorsCached$material3()Landroidx/compose/material3/IconToggleButtonColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedIconToggleButtonColorsCached:Landroidx/compose/material3/IconToggleButtonColors;

    return-object p0
.end method

.method public final getDefaultOutlinedIconToggleButtonVibrantColorsCached$material3()Landroidx/compose/material3/IconToggleButtonColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedIconToggleButtonVibrantColorsCached:Landroidx/compose/material3/IconToggleButtonColors;

    return-object p0
.end method

.method public final getDefaultOutlinedTextFieldColorsCached$material3()Landroidx/compose/material3/TextFieldColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    return-object p0
.end method

.method public final getDefaultRadioButtonColorsCached$material3()Landroidx/compose/material3/RadioButtonColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultRadioButtonColorsCached:Landroidx/compose/material3/RadioButtonColors;

    return-object p0
.end method

.method public final getDefaultRichTooltipColorsCached$material3()Landroidx/compose/material3/RichTooltipColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultRichTooltipColorsCached:Landroidx/compose/material3/RichTooltipColors;

    return-object p0
.end method

.method public final getDefaultSegmentedButtonColorsCached$material3()Landroidx/compose/material3/SegmentedButtonColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultSegmentedButtonColorsCached:Landroidx/compose/material3/SegmentedButtonColors;

    return-object p0
.end method

.method public final getDefaultShortNavigationBarItemColorsCached$material3()Landroidx/compose/material3/NavigationItemColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultShortNavigationBarItemColorsCached:Landroidx/compose/material3/NavigationItemColors;

    return-object p0
.end method

.method public final getDefaultSliderColorsCached$material3()Landroidx/compose/material3/SliderColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultSliderColorsCached:Landroidx/compose/material3/SliderColors;

    return-object p0
.end method

.method public final getDefaultSuggestionChipColorsCached$material3()Landroidx/compose/material3/ChipColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultSuggestionChipColorsCached:Landroidx/compose/material3/ChipColors;

    return-object p0
.end method

.method public final getDefaultSwitchColorsCached$material3()Landroidx/compose/material3/SwitchColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultSwitchColorsCached:Landroidx/compose/material3/SwitchColors;

    return-object p0
.end method

.method public final getDefaultTextButtonColorsCached$material3()Landroidx/compose/material3/ButtonColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultTextButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    return-object p0
.end method

.method public final getDefaultTextFieldColorsCached$material3()Landroidx/compose/material3/TextFieldColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    return-object p0
.end method

.method public final getDefaultTimePickerColorsCached$material3()Landroidx/compose/material3/TimePickerColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultTimePickerColorsCached:Landroidx/compose/material3/TimePickerColors;

    return-object p0
.end method

.method public final getDefaultTopAppBarColorsCached$material3()Landroidx/compose/material3/TopAppBarColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultTopAppBarColorsCached:Landroidx/compose/material3/TopAppBarColors;

    return-object p0
.end method

.method public final getDefaultVerticalDragHandleColorsCached$material3()Landroidx/compose/material3/DragHandleColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultVerticalDragHandleColorsCached:Landroidx/compose/material3/DragHandleColors;

    return-object p0
.end method

.method public final getDefaultWideNavigationRailItemColorsCached$material3()Landroidx/compose/material3/NavigationItemColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultWideNavigationRailItemColorsCached:Landroidx/compose/material3/NavigationItemColors;

    return-object p0
.end method

.method public final getDefaultWideWideNavigationRailColorsCached$material3()Landroidx/compose/material3/WideNavigationRailColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultWideWideNavigationRailColorsCached:Landroidx/compose/material3/WideNavigationRailColors;

    return-object p0
.end method

.method public final getError-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->error:J

    return-wide v0
.end method

.method public final getErrorContainer-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->errorContainer:J

    return-wide v0
.end method

.method public final getInverseOnSurface-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    return-wide v0
.end method

.method public final getInversePrimary-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->inversePrimary:J

    return-wide v0
.end method

.method public final getInverseSurface-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    return-wide v0
.end method

.method public final getOnBackground-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onBackground:J

    return-wide v0
.end method

.method public final getOnError-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onError:J

    return-wide v0
.end method

.method public final getOnErrorContainer-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onErrorContainer:J

    return-wide v0
.end method

.method public final getOnPrimary-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    return-wide v0
.end method

.method public final getOnPrimaryContainer-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    return-wide v0
.end method

.method public final getOnPrimaryFixed-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryFixed:J

    return-wide v0
.end method

.method public final getOnPrimaryFixedVariant-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryFixedVariant:J

    return-wide v0
.end method

.method public final getOnSecondary-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onSecondary:J

    return-wide v0
.end method

.method public final getOnSecondaryContainer-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    return-wide v0
.end method

.method public final getOnSecondaryFixed-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryFixed:J

    return-wide v0
.end method

.method public final getOnSecondaryFixedVariant-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryFixedVariant:J

    return-wide v0
.end method

.method public final getOnSurface-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onSurface:J

    return-wide v0
.end method

.method public final getOnSurfaceVariant-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    return-wide v0
.end method

.method public final getOnTertiary-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onTertiary:J

    return-wide v0
.end method

.method public final getOnTertiaryContainer-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    return-wide v0
.end method

.method public final getOnTertiaryFixed-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryFixed:J

    return-wide v0
.end method

.method public final getOnTertiaryFixedVariant-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryFixedVariant:J

    return-wide v0
.end method

.method public final getOutline-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->outline:J

    return-wide v0
.end method

.method public final getOutlineVariant-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->outlineVariant:J

    return-wide v0
.end method

.method public final getPrimary-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->primary:J

    return-wide v0
.end method

.method public final getPrimaryContainer-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    return-wide v0
.end method

.method public final getPrimaryFixed-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->primaryFixed:J

    return-wide v0
.end method

.method public final getPrimaryFixedDim-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->primaryFixedDim:J

    return-wide v0
.end method

.method public final getScrim-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->scrim:J

    return-wide v0
.end method

.method public final getSecondary-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->secondary:J

    return-wide v0
.end method

.method public final getSecondaryContainer-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    return-wide v0
.end method

.method public final getSecondaryFixed-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->secondaryFixed:J

    return-wide v0
.end method

.method public final getSecondaryFixedDim-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->secondaryFixedDim:J

    return-wide v0
.end method

.method public final getSurface-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surface:J

    return-wide v0
.end method

.method public final getSurfaceBright-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceBright:J

    return-wide v0
.end method

.method public final getSurfaceContainer-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    return-wide v0
.end method

.method public final getSurfaceContainerHigh-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHigh:J

    return-wide v0
.end method

.method public final getSurfaceContainerHighest-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    return-wide v0
.end method

.method public final getSurfaceContainerLow-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    return-wide v0
.end method

.method public final getSurfaceContainerLowest-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLowest:J

    return-wide v0
.end method

.method public final getSurfaceDim-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceDim:J

    return-wide v0
.end method

.method public final getSurfaceTint-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceTint:J

    return-wide v0
.end method

.method public final getSurfaceVariant-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    return-wide v0
.end method

.method public final getTertiary-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->tertiary:J

    return-wide v0
.end method

.method public final getTertiaryContainer-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    return-wide v0
.end method

.method public final getTertiaryFixed-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->tertiaryFixed:J

    return-wide v0
.end method

.method public final getTertiaryFixedDim-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->tertiaryFixedDim:J

    return-wide v0
.end method

.method public final setDefaultAssistChipColorsCached$material3(Landroidx/compose/material3/ChipColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultAssistChipColorsCached:Landroidx/compose/material3/ChipColors;

    return-void
.end method

.method public final setDefaultButtonColorsCached$material3(Landroidx/compose/material3/ButtonColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    return-void
.end method

.method public final setDefaultCardColorsCached$material3(Landroidx/compose/material3/CardColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultCardColorsCached:Landroidx/compose/material3/CardColors;

    return-void
.end method

.method public final setDefaultCheckboxColorsCached$material3(Landroidx/compose/material3/CheckboxColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultCheckboxColorsCached:Landroidx/compose/material3/CheckboxColors;

    return-void
.end method

.method public final setDefaultDatePickerColorsCached$material3(Landroidx/compose/material3/DatePickerColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultDatePickerColorsCached:Landroidx/compose/material3/DatePickerColors;

    return-void
.end method

.method public final setDefaultElevatedAssistChipColorsCached$material3(Landroidx/compose/material3/ChipColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultElevatedAssistChipColorsCached:Landroidx/compose/material3/ChipColors;

    return-void
.end method

.method public final setDefaultElevatedButtonColorsCached$material3(Landroidx/compose/material3/ButtonColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultElevatedButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    return-void
.end method

.method public final setDefaultElevatedCardColorsCached$material3(Landroidx/compose/material3/CardColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultElevatedCardColorsCached:Landroidx/compose/material3/CardColors;

    return-void
.end method

.method public final setDefaultElevatedFilterChipColorsCached$material3(Landroidx/compose/material3/SelectableChipColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultElevatedFilterChipColorsCached:Landroidx/compose/material3/SelectableChipColors;

    return-void
.end method

.method public final setDefaultElevatedSuggestionChipColorsCached$material3(Landroidx/compose/material3/ChipColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultElevatedSuggestionChipColorsCached:Landroidx/compose/material3/ChipColors;

    return-void
.end method

.method public final setDefaultFilledIconButtonColorsCached$material3(Landroidx/compose/material3/IconButtonColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultFilledIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    return-void
.end method

.method public final setDefaultFilledIconToggleButtonColorsCached$material3(Landroidx/compose/material3/IconToggleButtonColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultFilledIconToggleButtonColorsCached:Landroidx/compose/material3/IconToggleButtonColors;

    return-void
.end method

.method public final setDefaultFilledTonalButtonColorsCached$material3(Landroidx/compose/material3/ButtonColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultFilledTonalButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    return-void
.end method

.method public final setDefaultFilledTonalIconButtonColorsCached$material3(Landroidx/compose/material3/IconButtonColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultFilledTonalIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    return-void
.end method

.method public final setDefaultFilledTonalIconToggleButtonColorsCached$material3(Landroidx/compose/material3/IconToggleButtonColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultFilledTonalIconToggleButtonColorsCached:Landroidx/compose/material3/IconToggleButtonColors;

    return-void
.end method

.method public final setDefaultFilterChipColorsCached$material3(Landroidx/compose/material3/SelectableChipColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultFilterChipColorsCached:Landroidx/compose/material3/SelectableChipColors;

    return-void
.end method

.method public final setDefaultIconButtonColorsCached$material3(Landroidx/compose/material3/IconButtonColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    return-void
.end method

.method public final setDefaultIconButtonVibrantColorsCached$material3(Landroidx/compose/material3/IconButtonColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultIconButtonVibrantColorsCached:Landroidx/compose/material3/IconButtonColors;

    return-void
.end method

.method public final setDefaultIconToggleButtonColorsCached$material3(Landroidx/compose/material3/IconToggleButtonColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultIconToggleButtonColorsCached:Landroidx/compose/material3/IconToggleButtonColors;

    return-void
.end method

.method public final setDefaultIconToggleButtonVibrantColorsCached$material3(Landroidx/compose/material3/IconToggleButtonColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultIconToggleButtonVibrantColorsCached:Landroidx/compose/material3/IconToggleButtonColors;

    return-void
.end method

.method public final setDefaultInputChipColorsCached$material3(Landroidx/compose/material3/SelectableChipColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultInputChipColorsCached:Landroidx/compose/material3/SelectableChipColors;

    return-void
.end method

.method public final setDefaultListItemColorsCached$material3(Landroidx/compose/material3/ListItemColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultListItemColorsCached:Landroidx/compose/material3/ListItemColors;

    return-void
.end method

.method public final setDefaultMenuItemColorsCached$material3(Landroidx/compose/material3/MenuItemColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultMenuItemColorsCached:Landroidx/compose/material3/MenuItemColors;

    return-void
.end method

.method public final setDefaultNavigationBarItemColorsCached$material3(Landroidx/compose/material3/NavigationBarItemColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultNavigationBarItemColorsCached:Landroidx/compose/material3/NavigationBarItemColors;

    return-void
.end method

.method public final setDefaultNavigationRailItemColorsCached$material3(Landroidx/compose/material3/NavigationRailItemColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultNavigationRailItemColorsCached:Landroidx/compose/material3/NavigationRailItemColors;

    return-void
.end method

.method public final setDefaultOutlinedButtonColorsCached$material3(Landroidx/compose/material3/ButtonColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    return-void
.end method

.method public final setDefaultOutlinedCardColorsCached$material3(Landroidx/compose/material3/CardColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedCardColorsCached:Landroidx/compose/material3/CardColors;

    return-void
.end method

.method public final setDefaultOutlinedIconButtonColorsCached$material3(Landroidx/compose/material3/IconButtonColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    return-void
.end method

.method public final setDefaultOutlinedIconButtonVibrantColorsCached$material3(Landroidx/compose/material3/IconButtonColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedIconButtonVibrantColorsCached:Landroidx/compose/material3/IconButtonColors;

    return-void
.end method

.method public final setDefaultOutlinedIconToggleButtonColorsCached$material3(Landroidx/compose/material3/IconToggleButtonColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedIconToggleButtonColorsCached:Landroidx/compose/material3/IconToggleButtonColors;

    return-void
.end method

.method public final setDefaultOutlinedIconToggleButtonVibrantColorsCached$material3(Landroidx/compose/material3/IconToggleButtonColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedIconToggleButtonVibrantColorsCached:Landroidx/compose/material3/IconToggleButtonColors;

    return-void
.end method

.method public final setDefaultOutlinedTextFieldColorsCached$material3(Landroidx/compose/material3/TextFieldColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    return-void
.end method

.method public final setDefaultRadioButtonColorsCached$material3(Landroidx/compose/material3/RadioButtonColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultRadioButtonColorsCached:Landroidx/compose/material3/RadioButtonColors;

    return-void
.end method

.method public final setDefaultRichTooltipColorsCached$material3(Landroidx/compose/material3/RichTooltipColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultRichTooltipColorsCached:Landroidx/compose/material3/RichTooltipColors;

    return-void
.end method

.method public final setDefaultSegmentedButtonColorsCached$material3(Landroidx/compose/material3/SegmentedButtonColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultSegmentedButtonColorsCached:Landroidx/compose/material3/SegmentedButtonColors;

    return-void
.end method

.method public final setDefaultShortNavigationBarItemColorsCached$material3(Landroidx/compose/material3/NavigationItemColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultShortNavigationBarItemColorsCached:Landroidx/compose/material3/NavigationItemColors;

    return-void
.end method

.method public final setDefaultSliderColorsCached$material3(Landroidx/compose/material3/SliderColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultSliderColorsCached:Landroidx/compose/material3/SliderColors;

    return-void
.end method

.method public final setDefaultSuggestionChipColorsCached$material3(Landroidx/compose/material3/ChipColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultSuggestionChipColorsCached:Landroidx/compose/material3/ChipColors;

    return-void
.end method

.method public final setDefaultSwitchColorsCached$material3(Landroidx/compose/material3/SwitchColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultSwitchColorsCached:Landroidx/compose/material3/SwitchColors;

    return-void
.end method

.method public final setDefaultTextButtonColorsCached$material3(Landroidx/compose/material3/ButtonColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultTextButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    return-void
.end method

.method public final setDefaultTextFieldColorsCached$material3(Landroidx/compose/material3/TextFieldColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    return-void
.end method

.method public final setDefaultTimePickerColorsCached$material3(Landroidx/compose/material3/TimePickerColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultTimePickerColorsCached:Landroidx/compose/material3/TimePickerColors;

    return-void
.end method

.method public final setDefaultTopAppBarColorsCached$material3(Landroidx/compose/material3/TopAppBarColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultTopAppBarColorsCached:Landroidx/compose/material3/TopAppBarColors;

    return-void
.end method

.method public final setDefaultVerticalDragHandleColorsCached$material3(Landroidx/compose/material3/DragHandleColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultVerticalDragHandleColorsCached:Landroidx/compose/material3/DragHandleColors;

    return-void
.end method

.method public final setDefaultWideNavigationRailItemColorsCached$material3(Landroidx/compose/material3/NavigationItemColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultWideNavigationRailItemColorsCached:Landroidx/compose/material3/NavigationItemColors;

    return-void
.end method

.method public final setDefaultWideWideNavigationRailColorsCached$material3(Landroidx/compose/material3/WideNavigationRailColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultWideWideNavigationRailColorsCached:Landroidx/compose/material3/WideNavigationRailColors;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColorScheme(primary="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->primary:J

    const-string v3, "onPrimary="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    const-string v3, "primaryContainer="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    const-string v3, "onPrimaryContainer="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    const-string v3, "inversePrimary="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->inversePrimary:J

    const-string v3, "secondary="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->secondary:J

    const-string v3, "onSecondary="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onSecondary:J

    const-string v3, "secondaryContainer="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    const-string v3, "onSecondaryContainer="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    const-string v3, "tertiary="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->tertiary:J

    const-string v3, "onTertiary="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onTertiary:J

    const-string v3, "tertiaryContainer="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    const-string v3, "onTertiaryContainer="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    const-string v3, "background="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->background:J

    const-string v3, "onBackground="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onBackground:J

    const-string v3, "surface="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surface:J

    const-string v3, "onSurface="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onSurface:J

    const-string v3, "surfaceVariant="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    const-string v3, "onSurfaceVariant="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    const-string v3, "surfaceTint="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceTint:J

    const-string v3, "inverseSurface="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    const-string v3, "inverseOnSurface="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    const-string v3, "error="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->error:J

    const-string v3, "onError="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onError:J

    const-string v3, "errorContainer="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->errorContainer:J

    const-string v3, "onErrorContainer="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onErrorContainer:J

    const-string v3, "outline="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->outline:J

    const-string v3, "outlineVariant="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->outlineVariant:J

    const-string v3, "scrim="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->scrim:J

    const-string v3, "surfaceBright="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceBright:J

    const-string v3, "surfaceDim="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceDim:J

    const-string v3, "surfaceContainer="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    const-string v3, "surfaceContainerHigh="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHigh:J

    const-string v3, "surfaceContainerHighest="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    const-string v3, "surfaceContainerLow="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    const-string v3, "surfaceContainerLowest="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLowest:J

    const-string v3, "primaryFixed="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->primaryFixed:J

    const-string v3, "primaryFixedDim="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->primaryFixedDim:J

    const-string v3, "onPrimaryFixed="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    const-string v3, "onPrimaryFixedVariant="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryFixedVariant:J

    const-string v3, "secondaryFixed="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->secondaryFixed:J

    const-string v3, "secondaryFixedDim="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->secondaryFixedDim:J

    const-string v3, "onSecondaryFixed="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryFixed:J

    const-string v3, "onSecondaryFixedVariant="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryFixedVariant:J

    const-string v3, "tertiaryFixed="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->tertiaryFixed:J

    const-string v3, "tertiaryFixedDim="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->tertiaryFixedDim:J

    const-string v3, "onTertiaryFixed="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryFixed:J

    const-string v3, "onTertiaryFixedVariant="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryFixedVariant:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
