.class public final Landroidx/compose/material3/FloatingActionButtonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ExtendedFabEndIconPadding:F

.field private static final ExtendedFabMinimumWidth:F

.field private static final ExtendedFabStartIconPadding:F

.field private static final ExtendedFabTextPadding:F

.field private static final LargeExtendedFabIconPadding:F

.field private static final LargeExtendedFabMinimumHeight:F

.field private static final LargeExtendedFabMinimumWidth:F

.field private static final LargeExtendedFabPaddingEnd:F

.field private static final LargeExtendedFabPaddingStart:F

.field private static final LargeExtendedFabTextStyle:Landroidx/compose/material3/tokens/TypographyKeyTokens;

.field private static final MediumExtendedFabIconPadding:F

.field private static final MediumExtendedFabMinimumHeight:F

.field private static final MediumExtendedFabMinimumWidth:F

.field private static final MediumExtendedFabPaddingEnd:F

.field private static final MediumExtendedFabPaddingStart:F

.field private static final MediumExtendedFabTextStyle:Landroidx/compose/material3/tokens/TypographyKeyTokens;

.field private static final SmallExtendedFabIconPadding:F

.field private static final SmallExtendedFabMinimumHeight:F

.field private static final SmallExtendedFabMinimumWidth:F

.field private static final SmallExtendedFabPaddingEnd:F

.field private static final SmallExtendedFabPaddingStart:F

.field private static final SmallExtendedFabTextStyle:Landroidx/compose/material3/tokens/TypographyKeyTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroidx/compose/material3/tokens/ExtendedFabSmallTokens;->INSTANCE:Landroidx/compose/material3/tokens/ExtendedFabSmallTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ExtendedFabSmallTokens;->getContainerHeight-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/FloatingActionButtonKt;->SmallExtendedFabMinimumWidth:F

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ExtendedFabSmallTokens;->getContainerHeight-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/FloatingActionButtonKt;->SmallExtendedFabMinimumHeight:F

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ExtendedFabSmallTokens;->getLeadingSpace-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/FloatingActionButtonKt;->SmallExtendedFabPaddingStart:F

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ExtendedFabSmallTokens;->getTrailingSpace-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/FloatingActionButtonKt;->SmallExtendedFabPaddingEnd:F

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ExtendedFabSmallTokens;->getIconLabelSpace-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/FloatingActionButtonKt;->SmallExtendedFabIconPadding:F

    sget-object v0, Landroidx/compose/material3/tokens/TypographyKeyTokens;->TitleMedium:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    sput-object v0, Landroidx/compose/material3/FloatingActionButtonKt;->SmallExtendedFabTextStyle:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;->INSTANCE:Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;->getContainerHeight-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/FloatingActionButtonKt;->MediumExtendedFabMinimumWidth:F

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;->getContainerHeight-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/FloatingActionButtonKt;->MediumExtendedFabMinimumHeight:F

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;->getLeadingSpace-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/FloatingActionButtonKt;->MediumExtendedFabPaddingStart:F

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;->getTrailingSpace-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/FloatingActionButtonKt;->MediumExtendedFabPaddingEnd:F

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/FloatingActionButtonKt;->MediumExtendedFabIconPadding:F

    sget-object v1, Landroidx/compose/material3/tokens/TypographyKeyTokens;->TitleLarge:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    sput-object v1, Landroidx/compose/material3/FloatingActionButtonKt;->MediumExtendedFabTextStyle:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    sget-object v1, Landroidx/compose/material3/tokens/ExtendedFabLargeTokens;->INSTANCE:Landroidx/compose/material3/tokens/ExtendedFabLargeTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ExtendedFabLargeTokens;->getContainerHeight-D9Ej5fM()F

    move-result v2

    sput v2, Landroidx/compose/material3/FloatingActionButtonKt;->LargeExtendedFabMinimumWidth:F

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ExtendedFabLargeTokens;->getContainerHeight-D9Ej5fM()F

    move-result v2

    sput v2, Landroidx/compose/material3/FloatingActionButtonKt;->LargeExtendedFabMinimumHeight:F

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ExtendedFabLargeTokens;->getLeadingSpace-D9Ej5fM()F

    move-result v2

    sput v2, Landroidx/compose/material3/FloatingActionButtonKt;->LargeExtendedFabPaddingStart:F

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ExtendedFabLargeTokens;->getTrailingSpace-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/FloatingActionButtonKt;->LargeExtendedFabPaddingEnd:F

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    sput v2, Landroidx/compose/material3/FloatingActionButtonKt;->LargeExtendedFabIconPadding:F

    sget-object v2, Landroidx/compose/material3/tokens/TypographyKeyTokens;->HeadlineSmall:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    sput-object v2, Landroidx/compose/material3/FloatingActionButtonKt;->LargeExtendedFabTextStyle:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/FloatingActionButtonKt;->ExtendedFabStartIconPadding:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/FloatingActionButtonKt;->ExtendedFabEndIconPadding:F

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/FloatingActionButtonKt;->ExtendedFabTextPadding:F

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/FloatingActionButtonKt;->ExtendedFabMinimumWidth:F

    return-void
.end method

.method public static final ExtendedFloatingActionButton-ElI5-7k(Lbm3;Lbm3;Lll3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/material3/FloatingActionButtonElevation;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v13, p13

    move/from16 v14, p14

    const v0, -0x45337698

    move-object/from16 v3, p12

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    and-int/lit8 v4, v14, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v4, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v13, 0x6

    if-nez v4, :cond_2

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v13

    goto :goto_1

    :cond_2
    move v4, v13

    :goto_1
    and-int/lit8 v5, v14, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v4, v4, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v13, 0x30

    if-nez v5, :cond_5

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    :cond_5
    :goto_3
    and-int/lit8 v5, v14, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v4, v4, 0x180

    move-object/from16 v15, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v13, 0x180

    move-object/from16 v15, p2

    if-nez v5, :cond_8

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v4, v5

    :cond_8
    :goto_5
    and-int/lit8 v5, v14, 0x8

    if-eqz v5, :cond_a

    or-int/lit16 v4, v4, 0xc00

    :cond_9
    move-object/from16 v6, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v6, v13, 0xc00

    if-nez v6, :cond_9

    move-object/from16 v6, p3

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v7, 0x800

    goto :goto_6

    :cond_b
    const/16 v7, 0x400

    :goto_6
    or-int/2addr v4, v7

    :goto_7
    and-int/lit8 v7, v14, 0x10

    if-eqz v7, :cond_d

    or-int/lit16 v4, v4, 0x6000

    :cond_c
    move/from16 v8, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v8, v13, 0x6000

    if-nez v8, :cond_c

    move/from16 v8, p4

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_e

    const/16 v9, 0x4000

    goto :goto_8

    :cond_e
    const/16 v9, 0x2000

    :goto_8
    or-int/2addr v4, v9

    :goto_9
    const/high16 v9, 0x30000

    and-int/2addr v9, v13

    if-nez v9, :cond_11

    and-int/lit8 v9, v14, 0x20

    if-nez v9, :cond_f

    move-object/from16 v9, p5

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/high16 v10, 0x20000

    goto :goto_a

    :cond_f
    move-object/from16 v9, p5

    :cond_10
    const/high16 v10, 0x10000

    :goto_a
    or-int/2addr v4, v10

    goto :goto_b

    :cond_11
    move-object/from16 v9, p5

    :goto_b
    const/high16 v10, 0x180000

    and-int/2addr v10, v13

    if-nez v10, :cond_14

    and-int/lit8 v10, v14, 0x40

    if-nez v10, :cond_12

    move-wide/from16 v10, p6

    invoke-interface {v3, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v12

    if-eqz v12, :cond_13

    const/high16 v12, 0x100000

    goto :goto_c

    :cond_12
    move-wide/from16 v10, p6

    :cond_13
    const/high16 v12, 0x80000

    :goto_c
    or-int/2addr v4, v12

    goto :goto_d

    :cond_14
    move-wide/from16 v10, p6

    :goto_d
    const/high16 v12, 0xc00000

    and-int v16, v13, v12

    if-nez v16, :cond_16

    move/from16 p12, v12

    and-int/lit16 v12, v14, 0x80

    move-wide/from16 v0, p8

    if-nez v12, :cond_15

    invoke-interface {v3, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_15

    const/high16 v16, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v16, 0x400000

    :goto_e
    or-int v4, v4, v16

    goto :goto_f

    :cond_16
    move-wide/from16 v0, p8

    move/from16 p12, v12

    :goto_f
    const/high16 v16, 0x6000000

    and-int v16, v13, v16

    if-nez v16, :cond_19

    and-int/lit16 v12, v14, 0x100

    if-nez v12, :cond_17

    move-object/from16 v12, p10

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    const/high16 v17, 0x4000000

    goto :goto_10

    :cond_17
    move-object/from16 v12, p10

    :cond_18
    const/high16 v17, 0x2000000

    :goto_10
    or-int v4, v4, v17

    goto :goto_11

    :cond_19
    move-object/from16 v12, p10

    :goto_11
    and-int/lit16 v0, v14, 0x200

    const/high16 v1, 0x30000000

    if-eqz v0, :cond_1b

    or-int/2addr v4, v1

    :cond_1a
    move-object/from16 v1, p11

    goto :goto_13

    :cond_1b
    and-int/2addr v1, v13

    if-nez v1, :cond_1a

    move-object/from16 v1, p11

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    const/high16 v17, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v17, 0x10000000

    :goto_12
    or-int v4, v4, v17

    :goto_13
    const v17, 0x12492493

    move/from16 v18, v0

    and-int v0, v4, v17

    const v1, 0x12492492

    move/from16 v17, v4

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1d

    move v0, v4

    goto :goto_14

    :cond_1d
    const/4 v0, 0x0

    :goto_14
    and-int/lit8 v1, v17, 0x1

    invoke-interface {v3, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v13, 0x1

    const v1, -0xe000001

    const v19, -0x1c00001

    const v20, -0x380001

    const v21, -0x70001

    if-eqz v0, :cond_24

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_16

    :cond_1e
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v14, 0x20

    if-eqz v0, :cond_1f

    and-int v0, v17, v21

    move/from16 v17, v0

    :cond_1f
    and-int/lit8 v0, v14, 0x40

    if-eqz v0, :cond_20

    and-int v17, v17, v20

    :cond_20
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_21

    and-int v17, v17, v19

    :cond_21
    and-int/lit16 v0, v14, 0x100

    if-eqz v0, :cond_22

    and-int v17, v17, v1

    :cond_22
    move-wide/from16 v20, p8

    :cond_23
    move-object/from16 v23, p11

    :goto_15
    move-wide/from16 v18, v10

    move-object/from16 v22, v12

    move/from16 v0, v17

    move-object/from16 v17, v9

    goto/16 :goto_18

    :cond_24
    :goto_16
    if-eqz v5, :cond_25

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v6, v0

    :cond_25
    if-eqz v7, :cond_26

    move v8, v4

    :cond_26
    and-int/lit8 v0, v14, 0x20

    const/4 v5, 0x6

    if-eqz v0, :cond_27

    sget-object v0, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    invoke-virtual {v0, v3, v5}, Landroidx/compose/material3/FloatingActionButtonDefaults;->getExtendedFabShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    and-int v7, v17, v21

    move-object v9, v0

    move/from16 v17, v7

    :cond_27
    and-int/lit8 v0, v14, 0x40

    if-eqz v0, :cond_28

    sget-object v0, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    invoke-virtual {v0, v3, v5}, Landroidx/compose/material3/FloatingActionButtonDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v10

    and-int v17, v17, v20

    :cond_28
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_29

    shr-int/lit8 v0, v17, 0x12

    and-int/lit8 v0, v0, 0xe

    invoke-static {v10, v11, v3, v0}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v20

    and-int v17, v17, v19

    goto :goto_17

    :cond_29
    move-wide/from16 v20, p8

    :goto_17
    and-int/lit16 v0, v14, 0x100

    if-eqz v0, :cond_2a

    sget-object v0, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    const/16 v5, 0x6000

    const/16 v7, 0xf

    const/4 v12, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 p3, v0

    move-object/from16 p8, v3

    move/from16 p9, v5

    move/from16 p10, v7

    move/from16 p4, v12

    move/from16 p5, v19

    move/from16 p6, v22

    move/from16 p7, v23

    invoke-virtual/range {p3 .. p10}, Landroidx/compose/material3/FloatingActionButtonDefaults;->elevation-xZ9-QkE(FFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/FloatingActionButtonElevation;

    move-result-object v0

    and-int v1, v17, v1

    move-object v12, v0

    move/from16 v17, v1

    :cond_2a
    if-eqz v18, :cond_23

    const/4 v0, 0x0

    move-object/from16 v23, v0

    goto :goto_15

    :goto_18
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, -0x1

    const-string v5, "androidx.compose.material3.ExtendedFloatingActionButton (FloatingActionButton.kt:391)"

    const v12, -0x45337698

    invoke-static {v12, v0, v1, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2b
    new-instance v1, Landroidx/compose/material3/FloatingActionButtonKt$ExtendedFloatingActionButton$3;

    move-object/from16 v5, p0

    invoke-direct {v1, v8, v2, v5}, Landroidx/compose/material3/FloatingActionButtonKt$ExtendedFloatingActionButton$3;-><init>(ZLbm3;Lbm3;)V

    const/16 v7, 0x36

    const v9, 0x25ba60ea

    invoke-static {v9, v4, v1, v3, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v24

    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v4, v1, 0xe

    or-int v4, v4, p12

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v1, v4

    shr-int/lit8 v0, v0, 0x9

    and-int/lit16 v4, v0, 0x380

    or-int/2addr v1, v4

    and-int/lit16 v4, v0, 0x1c00

    or-int/2addr v1, v4

    const v4, 0xe000

    and-int/2addr v4, v0

    or-int/2addr v1, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v0

    or-int/2addr v1, v4

    const/high16 v4, 0x380000

    and-int/2addr v0, v4

    or-int v26, v1, v0

    const/16 v27, 0x0

    move-object/from16 v25, v3

    move-object/from16 v16, v6

    invoke-static/range {v15 .. v27}, Landroidx/compose/material3/FloatingActionButtonKt;->FloatingActionButton-X-z6DiA(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2c
    move v5, v8

    move-object/from16 v4, v16

    move-object/from16 v6, v17

    move-wide/from16 v7, v18

    move-wide/from16 v9, v20

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    goto :goto_19

    :cond_2d
    move-object/from16 v5, p0

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v4, v6

    move v5, v8

    move-object v6, v9

    move-wide v7, v10

    move-object v11, v12

    move-wide/from16 v9, p8

    move-object/from16 v12, p11

    :goto_19
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_2e

    new-instance v0, Lxc3;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v14}, Lxc3;-><init>(Lbm3;Lbm3;Lll3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_2e
    return-void
.end method

.method public static final ExtendedFloatingActionButton-X-z6DiA(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;Landroidx/compose/runtime/Composer;II)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/material3/FloatingActionButtonElevation;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    const v0, 0x3df6d14a

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v11, 0x6

    move-object/from16 v13, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v11, 0x6

    move-object/from16 v13, p0

    if-nez v1, :cond_2

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v11

    goto :goto_1

    :cond_2
    move v1, v11

    :goto_1
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x30

    :cond_3
    move-object/from16 v3, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v3, v11, 0x30

    if-nez v3, :cond_3

    move-object/from16 v3, p1

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x20

    goto :goto_2

    :cond_5
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :goto_3
    and-int/lit16 v4, v11, 0x180

    if-nez v4, :cond_8

    and-int/lit8 v4, v12, 0x4

    if-nez v4, :cond_6

    move-object/from16 v4, p2

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v4, p2

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v1, v5

    goto :goto_5

    :cond_8
    move-object/from16 v4, p2

    :goto_5
    and-int/lit16 v5, v11, 0xc00

    if-nez v5, :cond_a

    and-int/lit8 v5, v12, 0x8

    move-wide/from16 v7, p3

    if-nez v5, :cond_9

    invoke-interface {v6, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0x800

    goto :goto_6

    :cond_9
    const/16 v5, 0x400

    :goto_6
    or-int/2addr v1, v5

    goto :goto_7

    :cond_a
    move-wide/from16 v7, p3

    :goto_7
    and-int/lit16 v5, v11, 0x6000

    if-nez v5, :cond_c

    and-int/lit8 v5, v12, 0x10

    move-wide/from16 v14, p5

    if-nez v5, :cond_b

    invoke-interface {v6, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v5, 0x4000

    goto :goto_8

    :cond_b
    const/16 v5, 0x2000

    :goto_8
    or-int/2addr v1, v5

    goto :goto_9

    :cond_c
    move-wide/from16 v14, p5

    :goto_9
    const/high16 v5, 0x30000

    and-int/2addr v5, v11

    if-nez v5, :cond_f

    and-int/lit8 v5, v12, 0x20

    if-nez v5, :cond_d

    move-object/from16 v5, p7

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/high16 v9, 0x20000

    goto :goto_a

    :cond_d
    move-object/from16 v5, p7

    :cond_e
    const/high16 v9, 0x10000

    :goto_a
    or-int/2addr v1, v9

    goto :goto_b

    :cond_f
    move-object/from16 v5, p7

    :goto_b
    and-int/lit8 v9, v12, 0x40

    const/high16 v16, 0x180000

    if-eqz v9, :cond_10

    or-int v1, v1, v16

    move-object/from16 v0, p8

    goto :goto_d

    :cond_10
    and-int v16, v11, v16

    move-object/from16 v0, p8

    if-nez v16, :cond_12

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_11
    const/high16 v17, 0x80000

    :goto_c
    or-int v1, v1, v17

    :cond_12
    :goto_d
    and-int/lit16 v0, v12, 0x80

    const/high16 v17, 0xc00000

    if-eqz v0, :cond_13

    or-int v1, v1, v17

    goto :goto_f

    :cond_13
    and-int v0, v11, v17

    if-nez v0, :cond_15

    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/high16 v0, 0x800000

    goto :goto_e

    :cond_14
    const/high16 v0, 0x400000

    :goto_e
    or-int/2addr v1, v0

    :cond_15
    :goto_f
    const v0, 0x492493

    and-int/2addr v0, v1

    move/from16 p10, v2

    const v2, 0x492492

    const/4 v3, 0x1

    if-eq v0, v2, :cond_16

    move v0, v3

    goto :goto_10

    :cond_16
    const/4 v0, 0x0

    :goto_10
    and-int/lit8 v2, v1, 0x1

    invoke-interface {v6, v0, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v11, 0x1

    const v18, -0x70001

    const v2, -0xe001

    if-eqz v0, :cond_1c

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_11

    :cond_17
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_18

    and-int/lit16 v1, v1, -0x381

    :cond_18
    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_19

    and-int/lit16 v1, v1, -0x1c01

    :cond_19
    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_1a

    and-int/2addr v1, v2

    :cond_1a
    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_1b

    and-int v1, v1, v18

    :cond_1b
    move-object/from16 v21, p8

    move v0, v3

    move-object/from16 v20, v5

    move-wide/from16 v18, v14

    move/from16 v2, v17

    const v3, 0x3df6d14a

    move-object/from16 v14, p1

    move-object v15, v4

    move-wide/from16 v16, v7

    goto/16 :goto_15

    :cond_1c
    :goto_11
    if-eqz p10, :cond_1d

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_12

    :cond_1d
    move-object/from16 v0, p1

    :goto_12
    and-int/lit8 v19, v12, 0x4

    move/from16 p10, v2

    const/4 v2, 0x6

    if-eqz v19, :cond_1e

    sget-object v4, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    invoke-virtual {v4, v6, v2}, Landroidx/compose/material3/FloatingActionButtonDefaults;->getExtendedFabShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v4

    and-int/lit16 v1, v1, -0x381

    :cond_1e
    move-object/from16 v19, v4

    and-int/lit8 v4, v12, 0x8

    if-eqz v4, :cond_1f

    sget-object v4, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    invoke-virtual {v4, v6, v2}, Landroidx/compose/material3/FloatingActionButtonDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    and-int/lit16 v1, v1, -0x1c01

    :cond_1f
    move v4, v1

    move-wide v1, v7

    and-int/lit8 v7, v12, 0x10

    if-eqz v7, :cond_20

    shr-int/lit8 v7, v4, 0x9

    and-int/lit8 v7, v7, 0xe

    invoke-static {v1, v2, v6, v7}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    and-int v4, v4, p10

    move-wide v14, v7

    :cond_20
    move/from16 v20, v4

    and-int/lit8 v4, v12, 0x20

    if-eqz v4, :cond_21

    move-wide v7, v1

    sget-object v1, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    move-wide v4, v7

    const/16 v7, 0x6000

    const/16 v8, 0xf

    const/4 v2, 0x0

    move/from16 v21, v3

    const/4 v3, 0x0

    move-wide/from16 v22, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p1, v0

    move/from16 v0, v21

    invoke-virtual/range {v1 .. v8}, Landroidx/compose/material3/FloatingActionButtonDefaults;->elevation-xZ9-QkE(FFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/FloatingActionButtonElevation;

    move-result-object v1

    and-int v2, v20, v18

    move-object v5, v1

    move v1, v2

    goto :goto_13

    :cond_21
    move-object/from16 p1, v0

    move-wide/from16 v22, v1

    move v0, v3

    move/from16 v1, v20

    :goto_13
    if-eqz v9, :cond_22

    const/4 v2, 0x0

    move-wide/from16 v20, v14

    move-object/from16 v15, v19

    move-wide/from16 v18, v20

    move-object/from16 v14, p1

    move-object/from16 v21, v2

    :goto_14
    move-object/from16 v20, v5

    move/from16 v2, v17

    move-wide/from16 v16, v22

    const v3, 0x3df6d14a

    goto :goto_15

    :cond_22
    move-wide v2, v14

    move-object/from16 v15, v19

    move-wide/from16 v18, v2

    move-object/from16 v14, p1

    move-object/from16 v21, p8

    goto :goto_14

    :goto_15
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, -0x1

    const-string v5, "androidx.compose.material3.ExtendedFloatingActionButton (FloatingActionButton.kt:320)"

    invoke-static {v3, v1, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_23
    new-instance v3, Landroidx/compose/material3/FloatingActionButtonKt$ExtendedFloatingActionButton$1;

    invoke-direct {v3, v10}, Landroidx/compose/material3/FloatingActionButtonKt$ExtendedFloatingActionButton$1;-><init>(Ldm3;)V

    const/16 v4, 0x36

    const v5, -0x498c6034

    invoke-static {v5, v0, v3, v6, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v22

    and-int/lit8 v0, v1, 0xe

    or-int/2addr v0, v2

    and-int/lit8 v2, v1, 0x70

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x1c00

    or-int/2addr v0, v2

    const v2, 0xe000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0x70000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0x380000

    and-int/2addr v1, v2

    or-int v24, v0, v1

    const/16 v25, 0x0

    move-object/from16 v23, v6

    invoke-static/range {v13 .. v25}, Landroidx/compose/material3/FloatingActionButtonKt;->FloatingActionButton-X-z6DiA(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_24
    move-object/from16 v23, v6

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    goto :goto_16

    :cond_25
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-object/from16 v9, p8

    move-object v3, v4

    move-object/from16 v23, v6

    move-wide/from16 v26, v7

    move-object v8, v5

    move-wide/from16 v4, v26

    move-wide v6, v14

    :goto_16
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_26

    new-instance v0, Lcd3;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v12}, Lcd3;-><init>(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;II)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_26
    return-void
.end method

.method private static final ExtendedFloatingActionButton-qtIzBjc(Lbm3;Lbm3;Lll3;Landroidx/compose/ui/text/TextStyle;FFFFFLandroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "FFFFF",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/material3/FloatingActionButtonElevation;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move/from16 v0, p19

    move/from16 v1, p20

    move/from16 v2, p21

    const v3, 0xb8285ae

    move-object/from16 v4, p18

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_0

    or-int/lit8 v5, v0, 0x6

    move v8, v5

    move-object/from16 v5, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v0, 0x6

    if-nez v5, :cond_2

    move-object/from16 v5, p0

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x4

    goto :goto_0

    :cond_1
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v8, v0

    goto :goto_1

    :cond_2
    move-object/from16 v5, p0

    move v8, v0

    :goto_1
    and-int/lit8 v9, v2, 0x2

    if-eqz v9, :cond_4

    or-int/lit8 v8, v8, 0x30

    :cond_3
    move-object/from16 v9, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v9, v0, 0x30

    if-nez v9, :cond_3

    move-object/from16 v9, p1

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/16 v12, 0x20

    goto :goto_2

    :cond_5
    const/16 v12, 0x10

    :goto_2
    or-int/2addr v8, v12

    :goto_3
    and-int/lit8 v12, v2, 0x4

    if-eqz v12, :cond_7

    or-int/lit16 v8, v8, 0x180

    :cond_6
    move-object/from16 v12, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v12, v0, 0x180

    if-nez v12, :cond_6

    move-object/from16 v12, p2

    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/16 v15, 0x100

    goto :goto_4

    :cond_8
    const/16 v15, 0x80

    :goto_4
    or-int/2addr v8, v15

    :goto_5
    and-int/lit8 v15, v2, 0x8

    const/16 v16, 0x400

    const/16 v17, 0x800

    if-eqz v15, :cond_a

    or-int/lit16 v8, v8, 0xc00

    :cond_9
    move-object/from16 v15, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v15, v0, 0xc00

    if-nez v15, :cond_9

    move-object/from16 v15, p3

    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    move/from16 v18, v17

    goto :goto_6

    :cond_b
    move/from16 v18, v16

    :goto_6
    or-int v8, v8, v18

    :goto_7
    and-int/lit8 v18, v2, 0x10

    const/16 v19, 0x2000

    const/16 v20, 0x4000

    if-eqz v18, :cond_d

    or-int/lit16 v8, v8, 0x6000

    :cond_c
    move/from16 v6, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v6, v0, 0x6000

    if-nez v6, :cond_c

    move/from16 v6, p4

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_e

    move/from16 v18, v20

    goto :goto_8

    :cond_e
    move/from16 v18, v19

    :goto_8
    or-int v8, v8, v18

    :goto_9
    and-int/lit8 v18, v2, 0x20

    const/high16 v21, 0x10000

    const/high16 v22, 0x20000

    const/high16 v23, 0x30000

    if-eqz v18, :cond_f

    or-int v8, v8, v23

    move/from16 v7, p5

    goto :goto_b

    :cond_f
    and-int v18, v0, v23

    move/from16 v7, p5

    if-nez v18, :cond_11

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v24

    if-eqz v24, :cond_10

    move/from16 v24, v22

    goto :goto_a

    :cond_10
    move/from16 v24, v21

    :goto_a
    or-int v8, v8, v24

    :cond_11
    :goto_b
    and-int/lit8 v24, v2, 0x40

    const/high16 v25, 0x180000

    if-eqz v24, :cond_12

    or-int v8, v8, v25

    move/from16 v10, p6

    goto :goto_d

    :cond_12
    and-int v24, v0, v25

    move/from16 v10, p6

    if-nez v24, :cond_14

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v25

    if-eqz v25, :cond_13

    const/high16 v25, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v25, 0x80000

    :goto_c
    or-int v8, v8, v25

    :cond_14
    :goto_d
    and-int/lit16 v11, v2, 0x80

    const/high16 v26, 0xc00000

    if-eqz v11, :cond_16

    or-int v8, v8, v26

    :cond_15
    move/from16 v11, p7

    goto :goto_f

    :cond_16
    and-int v11, v0, v26

    if-nez v11, :cond_15

    move/from16 v11, p7

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v26

    if-eqz v26, :cond_17

    const/high16 v26, 0x800000

    goto :goto_e

    :cond_17
    const/high16 v26, 0x400000

    :goto_e
    or-int v8, v8, v26

    :goto_f
    and-int/lit16 v13, v2, 0x100

    const/high16 v27, 0x6000000

    if-eqz v13, :cond_19

    or-int v8, v8, v27

    :cond_18
    move/from16 v13, p8

    goto :goto_11

    :cond_19
    and-int v13, v0, v27

    if-nez v13, :cond_18

    move/from16 v13, p8

    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v27

    if-eqz v27, :cond_1a

    const/high16 v27, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v27, 0x2000000

    :goto_10
    or-int v8, v8, v27

    :goto_11
    and-int/lit16 v14, v2, 0x200

    const/high16 v28, 0x30000000

    if-eqz v14, :cond_1b

    or-int v8, v8, v28

    move-object/from16 v3, p9

    goto :goto_13

    :cond_1b
    and-int v28, v0, v28

    move-object/from16 v3, p9

    if-nez v28, :cond_1d

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1c

    const/high16 v29, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v29, 0x10000000

    :goto_12
    or-int v8, v8, v29

    :cond_1d
    :goto_13
    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_1e

    or-int/lit8 v18, v1, 0x6

    move/from16 v29, v0

    move/from16 v0, p10

    goto :goto_15

    :cond_1e
    and-int/lit8 v29, v1, 0x6

    if-nez v29, :cond_20

    move/from16 v29, v0

    move/from16 v0, p10

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v30

    if-eqz v30, :cond_1f

    const/16 v18, 0x4

    goto :goto_14

    :cond_1f
    const/16 v18, 0x2

    :goto_14
    or-int v18, v1, v18

    goto :goto_15

    :cond_20
    move/from16 v29, v0

    move/from16 v0, p10

    move/from16 v18, v1

    :goto_15
    and-int/lit8 v30, v1, 0x30

    if-nez v30, :cond_23

    and-int/lit16 v0, v2, 0x800

    if-nez v0, :cond_21

    move-object/from16 v0, p11

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_22

    const/16 v24, 0x20

    goto :goto_16

    :cond_21
    move-object/from16 v0, p11

    :cond_22
    const/16 v24, 0x10

    :goto_16
    or-int v18, v18, v24

    goto :goto_17

    :cond_23
    move-object/from16 v0, p11

    :goto_17
    and-int/lit16 v0, v1, 0x180

    if-nez v0, :cond_25

    and-int/lit16 v0, v2, 0x1000

    move-wide/from16 v5, p12

    if-nez v0, :cond_24

    invoke-interface {v4, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v26, 0x100

    goto :goto_18

    :cond_24
    const/16 v26, 0x80

    :goto_18
    or-int v18, v18, v26

    goto :goto_19

    :cond_25
    move-wide/from16 v5, p12

    :goto_19
    and-int/lit16 v0, v1, 0xc00

    if-nez v0, :cond_27

    and-int/lit16 v0, v2, 0x2000

    move-wide/from16 v5, p14

    if-nez v0, :cond_26

    invoke-interface {v4, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_26

    move/from16 v16, v17

    :cond_26
    or-int v18, v18, v16

    goto :goto_1a

    :cond_27
    move-wide/from16 v5, p14

    :goto_1a
    and-int/lit16 v0, v1, 0x6000

    if-nez v0, :cond_2a

    and-int/lit16 v0, v2, 0x4000

    if-nez v0, :cond_28

    move-object/from16 v0, p16

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_29

    move/from16 v19, v20

    goto :goto_1b

    :cond_28
    move-object/from16 v0, p16

    :cond_29
    :goto_1b
    or-int v18, v18, v19

    goto :goto_1c

    :cond_2a
    move-object/from16 v0, p16

    :goto_1c
    const v16, 0x8000

    and-int v16, v2, v16

    if-eqz v16, :cond_2b

    or-int v18, v18, v23

    move-object/from16 v0, p17

    goto :goto_1d

    :cond_2b
    and-int v17, v1, v23

    move-object/from16 v0, p17

    if-nez v17, :cond_2d

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2c

    move/from16 v21, v22

    :cond_2c
    or-int v18, v18, v21

    :cond_2d
    :goto_1d
    const v17, 0x12492493

    and-int v0, v8, v17

    const v1, 0x12492492

    if-ne v0, v1, :cond_2f

    const v0, 0x12493

    and-int v0, v18, v0

    const v1, 0x12492

    if-eq v0, v1, :cond_2e

    goto :goto_1e

    :cond_2e
    const/4 v0, 0x0

    goto :goto_1f

    :cond_2f
    :goto_1e
    const/4 v0, 0x1

    :goto_1f
    and-int/lit8 v1, v8, 0x1

    invoke-interface {v4, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, p19, 0x1

    const v1, -0xe001

    if-eqz v0, :cond_35

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_20

    :cond_30
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v2, 0x800

    if-eqz v0, :cond_31

    and-int/lit8 v18, v18, -0x71

    :cond_31
    move/from16 v0, v18

    and-int/lit16 v14, v2, 0x1000

    if-eqz v14, :cond_32

    and-int/lit16 v0, v0, -0x381

    :cond_32
    and-int/lit16 v14, v2, 0x2000

    if-eqz v14, :cond_33

    and-int/lit16 v0, v0, -0x1c01

    :cond_33
    and-int/lit16 v14, v2, 0x4000

    if-eqz v14, :cond_34

    and-int/2addr v0, v1

    :cond_34
    move-object/from16 v18, p9

    move/from16 v14, p10

    move-object/from16 v9, p11

    move-wide/from16 v10, p12

    move-object/from16 v15, p17

    move v3, v0

    move-object v1, v4

    move-wide v12, v5

    move-object/from16 v0, p16

    goto/16 :goto_29

    :cond_35
    :goto_20
    if-eqz v14, :cond_36

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_21

    :cond_36
    move-object/from16 v0, p9

    :goto_21
    if-eqz v29, :cond_37

    const/4 v14, 0x1

    goto :goto_22

    :cond_37
    move/from16 v14, p10

    :goto_22
    move/from16 p18, v1

    and-int/lit16 v1, v2, 0x800

    const/4 v3, 0x6

    if-eqz v1, :cond_38

    sget-object v1, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    invoke-virtual {v1, v4, v3}, Landroidx/compose/material3/FloatingActionButtonDefaults;->getExtendedFabShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    and-int/lit8 v18, v18, -0x71

    :goto_23
    move/from16 v31, v18

    goto :goto_24

    :cond_38
    move-object/from16 v1, p11

    goto :goto_23

    :goto_24
    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_39

    sget-object v3, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    move-object/from16 v18, v0

    const/4 v0, 0x6

    invoke-virtual {v3, v4, v0}, Landroidx/compose/material3/FloatingActionButtonDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v19

    move/from16 v0, v31

    and-int/lit16 v0, v0, -0x381

    move v3, v0

    move-wide/from16 v33, v19

    move-object/from16 v19, v1

    move-wide/from16 v0, v33

    goto :goto_25

    :cond_39
    move-object/from16 v18, v0

    move/from16 v0, v31

    move v3, v0

    move-object/from16 v19, v1

    move-wide/from16 v0, p12

    :goto_25
    and-int/lit16 v5, v2, 0x2000

    if-eqz v5, :cond_3a

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0xe

    invoke-static {v0, v1, v4, v5}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    and-int/lit16 v3, v3, -0x1c01

    goto :goto_26

    :cond_3a
    move-wide/from16 v5, p14

    :goto_26
    move-wide/from16 v20, v0

    and-int/lit16 v0, v2, 0x4000

    if-eqz v0, :cond_3b

    sget-object v0, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    const/16 v1, 0x6000

    const/16 v22, 0xf

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 p9, v0

    move/from16 p15, v1

    move-object/from16 p14, v4

    move/from16 p16, v22

    move/from16 p10, v23

    move/from16 p11, v24

    move/from16 p12, v25

    move/from16 p13, v26

    invoke-virtual/range {p9 .. p16}, Landroidx/compose/material3/FloatingActionButtonDefaults;->elevation-xZ9-QkE(FFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/FloatingActionButtonElevation;

    move-result-object v0

    move-object/from16 v1, p14

    and-int v3, v3, p18

    goto :goto_27

    :cond_3b
    move-object v1, v4

    move-object/from16 v0, p16

    :goto_27
    if-eqz v16, :cond_3c

    const/4 v4, 0x0

    move-object v15, v4

    :goto_28
    move-wide v12, v5

    move-object/from16 v9, v19

    move-wide/from16 v10, v20

    goto :goto_29

    :cond_3c
    move-object/from16 v15, p17

    goto :goto_28

    :goto_29
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_3d

    const-string v4, "androidx.compose.material3.ExtendedFloatingActionButton (FloatingActionButton.kt:451)"

    const v5, 0xb8285ae

    invoke-static {v5, v8, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3d
    sget-object v4, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v6

    invoke-virtual {v4}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v4

    new-instance v5, Landroidx/compose/material3/FloatingActionButtonKt$ExtendedFloatingActionButton$5;

    move-object/from16 p17, p0

    move-object/from16 p15, p1

    move/from16 p11, p4

    move/from16 p13, p6

    move/from16 p14, p7

    move/from16 p16, p8

    move-object/from16 p9, v5

    move/from16 p12, v7

    move/from16 p10, v14

    invoke-direct/range {p9 .. p17}, Landroidx/compose/material3/FloatingActionButtonKt$ExtendedFloatingActionButton$5;-><init>(ZFFFFLbm3;FLbm3;)V

    move/from16 v21, p10

    const/16 v7, 0x36

    const v14, -0x3150f1e4

    move-object/from16 p9, v0

    const/4 v0, 0x1

    invoke-static {v14, v0, v5, v1, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v16

    shr-int/lit8 v0, v8, 0x6

    and-int/lit8 v5, v0, 0xe

    or-int/lit16 v5, v5, 0xd80

    and-int/lit8 v0, v0, 0x70

    or-int/2addr v0, v5

    shr-int/lit8 v5, v8, 0xf

    const v7, 0xe000

    and-int/2addr v5, v7

    or-int/2addr v0, v5

    shl-int/lit8 v3, v3, 0xc

    const/high16 v5, 0x70000

    and-int/2addr v5, v3

    or-int/2addr v0, v5

    const/high16 v5, 0x380000

    and-int/2addr v5, v3

    or-int/2addr v0, v5

    const/high16 v5, 0x1c00000

    and-int/2addr v5, v3

    or-int/2addr v0, v5

    const/high16 v5, 0xe000000

    and-int/2addr v5, v3

    or-int/2addr v0, v5

    const/high16 v5, 0x70000000

    and-int/2addr v3, v5

    or-int/2addr v0, v3

    const/16 v19, 0x6

    const/16 v20, 0x0

    move-object/from16 v5, p3

    move-object/from16 v14, p9

    move-object/from16 v17, v1

    move v7, v4

    move-object/from16 v8, v18

    move-object/from16 v4, p2

    move/from16 v18, v0

    invoke-static/range {v4 .. v20}, Landroidx/compose/material3/FloatingActionButtonKt;->FloatingActionButton-lF-WlFE(Lll3;Landroidx/compose/ui/text/TextStyle;FFLandroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3e
    move-object/from16 v17, v14

    move-object/from16 v18, v15

    move-wide v15, v12

    move-object v12, v9

    move-wide v13, v10

    move/from16 v11, v21

    move-object v10, v8

    goto :goto_2a

    :cond_3f
    move-object v1, v4

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-wide/from16 v13, p12

    move-wide/from16 v15, p14

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    :goto_2a
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_40

    move-object v1, v0

    new-instance v0, Ldd3;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v32, v1

    move/from16 v21, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v21}, Ldd3;-><init>(Lbm3;Lbm3;Lll3;Landroidx/compose/ui/text/TextStyle;FFFFFLandroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V

    move-object/from16 v1, v32

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_40
    return-void
.end method

.method private static final ExtendedFloatingActionButton_ElI5_7k$lambda$8(Lbm3;Lbm3;Lll3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 16

    or-int/lit8 v0, p12, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v15, p13

    move-object/from16 v13, p14

    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/FloatingActionButtonKt;->ExtendedFloatingActionButton-ElI5-7k(Lbm3;Lbm3;Lll3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final ExtendedFloatingActionButton_X_z6DiA$lambda$7(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 14

    or-int/lit8 v0, p10, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v13, p11

    move-object/from16 v11, p12

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/FloatingActionButtonKt;->ExtendedFloatingActionButton-X-z6DiA(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ExtendedFloatingActionButton_qtIzBjc$lambda$9(Lbm3;Lbm3;Lll3;Landroidx/compose/ui/text/TextStyle;FFFFFLandroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 23

    or-int/lit8 v0, p18, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v20

    invoke-static/range {p19 .. p19}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-wide/from16 v13, p12

    move-wide/from16 v15, p14

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v22, p20

    move-object/from16 v19, p21

    invoke-static/range {v1 .. v22}, Landroidx/compose/material3/FloatingActionButtonKt;->ExtendedFloatingActionButton-qtIzBjc(Lbm3;Lbm3;Lll3;Landroidx/compose/ui/text/TextStyle;FFFFFLandroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method public static final FloatingActionButton-X-z6DiA(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Landroidx/compose/runtime/Composer;II)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/material3/FloatingActionButtonElevation;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move/from16 v11, p11

    move/from16 v12, p12

    const v0, 0x2c98a4e4

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v11, 0x6

    move-object/from16 v13, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v11, 0x6

    move-object/from16 v13, p0

    if-nez v1, :cond_2

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v11

    goto :goto_1

    :cond_2
    move v1, v11

    :goto_1
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x30

    :cond_3
    move-object/from16 v3, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v3, v11, 0x30

    if-nez v3, :cond_3

    move-object/from16 v3, p1

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x20

    goto :goto_2

    :cond_5
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :goto_3
    and-int/lit16 v4, v11, 0x180

    if-nez v4, :cond_8

    and-int/lit8 v4, v12, 0x4

    if-nez v4, :cond_6

    move-object/from16 v4, p2

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v4, p2

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v1, v5

    goto :goto_5

    :cond_8
    move-object/from16 v4, p2

    :goto_5
    and-int/lit16 v5, v11, 0xc00

    if-nez v5, :cond_a

    and-int/lit8 v5, v12, 0x8

    move-wide/from16 v7, p3

    if-nez v5, :cond_9

    invoke-interface {v6, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0x800

    goto :goto_6

    :cond_9
    const/16 v5, 0x400

    :goto_6
    or-int/2addr v1, v5

    goto :goto_7

    :cond_a
    move-wide/from16 v7, p3

    :goto_7
    and-int/lit16 v5, v11, 0x6000

    if-nez v5, :cond_c

    and-int/lit8 v5, v12, 0x10

    move-wide/from16 v9, p5

    if-nez v5, :cond_b

    invoke-interface {v6, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v5, 0x4000

    goto :goto_8

    :cond_b
    const/16 v5, 0x2000

    :goto_8
    or-int/2addr v1, v5

    goto :goto_9

    :cond_c
    move-wide/from16 v9, p5

    :goto_9
    const/high16 v5, 0x30000

    and-int/2addr v5, v11

    if-nez v5, :cond_f

    and-int/lit8 v5, v12, 0x20

    if-nez v5, :cond_d

    move-object/from16 v5, p7

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_d
    move-object/from16 v5, p7

    :cond_e
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v1, v14

    goto :goto_b

    :cond_f
    move-object/from16 v5, p7

    :goto_b
    and-int/lit8 v14, v12, 0x40

    const/high16 v15, 0x180000

    if-eqz v14, :cond_11

    or-int/2addr v1, v15

    :cond_10
    move-object/from16 v15, p8

    goto :goto_d

    :cond_11
    and-int/2addr v15, v11

    if-nez v15, :cond_10

    move-object/from16 v15, p8

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v16, 0x80000

    :goto_c
    or-int v1, v1, v16

    :goto_d
    and-int/lit16 v0, v12, 0x80

    const/high16 v17, 0xc00000

    if-eqz v0, :cond_14

    or-int v1, v1, v17

    :cond_13
    move-object/from16 v0, p9

    goto :goto_f

    :cond_14
    and-int v0, v11, v17

    if-nez v0, :cond_13

    move-object/from16 v0, p9

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v17, 0x400000

    :goto_e
    or-int v1, v1, v17

    :goto_f
    const v17, 0x492493

    and-int v0, v1, v17

    move/from16 p10, v2

    const v2, 0x492492

    if-eq v0, v2, :cond_16

    const/4 v0, 0x1

    goto :goto_10

    :cond_16
    const/4 v0, 0x0

    :goto_10
    and-int/lit8 v2, v1, 0x1

    invoke-interface {v6, v0, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v11, 0x1

    const v17, -0x70001

    const v18, -0xe001

    const/4 v2, 0x6

    if-eqz v0, :cond_1c

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_11

    :cond_17
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_18

    and-int/lit16 v1, v1, -0x381

    :cond_18
    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_19

    and-int/lit16 v1, v1, -0x1c01

    :cond_19
    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_1a

    and-int v1, v1, v18

    :cond_1a
    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_1b

    and-int v1, v1, v17

    :cond_1b
    move v0, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v23, v5

    move-wide/from16 v19, v7

    move-wide/from16 v21, v9

    move-object/from16 v24, v15

    goto/16 :goto_17

    :cond_1c
    :goto_11
    if-eqz p10, :cond_1d

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_12

    :cond_1d
    move-object v0, v3

    :goto_12
    and-int/lit8 v3, v12, 0x4

    if-eqz v3, :cond_1e

    sget-object v3, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    invoke-virtual {v3, v6, v2}, Landroidx/compose/material3/FloatingActionButtonDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v3

    and-int/lit16 v1, v1, -0x381

    move-object/from16 v19, v3

    goto :goto_13

    :cond_1e
    move-object/from16 v19, v4

    :goto_13
    and-int/lit8 v3, v12, 0x8

    if-eqz v3, :cond_1f

    sget-object v3, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    invoke-virtual {v3, v6, v2}, Landroidx/compose/material3/FloatingActionButtonDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    and-int/lit16 v1, v1, -0x1c01

    goto :goto_14

    :cond_1f
    move-wide v3, v7

    :goto_14
    and-int/lit8 v7, v12, 0x10

    if-eqz v7, :cond_20

    shr-int/lit8 v7, v1, 0x9

    and-int/lit8 v7, v7, 0xe

    invoke-static {v3, v4, v6, v7}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    and-int v1, v1, v18

    move-wide v9, v7

    :cond_20
    move/from16 v18, v1

    and-int/lit8 v1, v12, 0x20

    if-eqz v1, :cond_21

    sget-object v1, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    const/16 v7, 0x6000

    const/16 v8, 0xf

    move v5, v2

    const/4 v2, 0x0

    move-wide/from16 v20, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v22, v5

    const/4 v5, 0x0

    move-object/from16 p1, v0

    move/from16 v0, v22

    invoke-virtual/range {v1 .. v8}, Landroidx/compose/material3/FloatingActionButtonDefaults;->elevation-xZ9-QkE(FFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/FloatingActionButtonElevation;

    move-result-object v1

    and-int v2, v18, v17

    move-object v5, v1

    move v1, v2

    goto :goto_15

    :cond_21
    move-object/from16 p1, v0

    move v0, v2

    move-wide/from16 v20, v3

    move/from16 v1, v18

    :goto_15
    if-eqz v14, :cond_22

    const/4 v2, 0x0

    move-object/from16 v17, p1

    move-object/from16 v24, v2

    move-object/from16 v23, v5

    :goto_16
    move-object/from16 v18, v19

    move-wide/from16 v19, v20

    move-wide/from16 v21, v9

    goto :goto_17

    :cond_22
    move-object/from16 v17, p1

    move-object/from16 v23, v5

    move-object/from16 v24, v15

    goto :goto_16

    :goto_17
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.FloatingActionButton (FloatingActionButton.kt:118)"

    const v4, 0x2c98a4e4

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_23
    sget-object v2, Landroidx/compose/material3/tokens/ExtendedFabPrimaryTokens;->INSTANCE:Landroidx/compose/material3/tokens/ExtendedFabPrimaryTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/ExtendedFabPrimaryTokens;->getLabelTextFont()Landroidx/compose/material3/tokens/TypographyKeyTokens;

    move-result-object v2

    invoke-static {v2, v6, v0}, Landroidx/compose/material3/TypographyKt;->getValue(Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v14

    sget-object v0, Landroidx/compose/material3/tokens/FabBaselineTokens;->INSTANCE:Landroidx/compose/material3/tokens/FabBaselineTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/FabBaselineTokens;->getContainerWidth-D9Ej5fM()F

    move-result v15

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/FabBaselineTokens;->getContainerHeight-D9Ej5fM()F

    move-result v16

    and-int/lit8 v0, v1, 0xe

    or-int/lit16 v0, v0, 0xd80

    shl-int/lit8 v2, v1, 0x9

    const v3, 0xe000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x380000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x1c00000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0xe000000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x70000000

    and-int/2addr v2, v3

    or-int v27, v0, v2

    shr-int/lit8 v0, v1, 0x15

    and-int/lit8 v28, v0, 0xe

    const/16 v29, 0x0

    move-object/from16 v25, p9

    move-object/from16 v26, v6

    invoke-static/range {v13 .. v29}, Landroidx/compose/material3/FloatingActionButtonKt;->FloatingActionButton-lF-WlFE(Lll3;Landroidx/compose/ui/text/TextStyle;FFLandroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_24
    move-object/from16 v26, v6

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    goto :goto_18

    :cond_25
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v26, v6

    move-wide/from16 v30, v7

    move-object v8, v5

    move-wide/from16 v4, v30

    move-wide v6, v9

    move-object v9, v15

    :goto_18
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_26

    new-instance v0, Lbd3;

    move-object/from16 v1, p0

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v12}, Lbd3;-><init>(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;II)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_26
    return-void
.end method

.method private static final FloatingActionButton-lF-WlFE(Lll3;Landroidx/compose/ui/text/TextStyle;FFLandroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Landroidx/compose/runtime/Composer;III)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "FF",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/material3/FloatingActionButtonElevation;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move/from16 v14, p14

    move/from16 v0, p16

    const v1, 0x740892c

    move-object/from16 v2, p13

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v14, 0x6

    move-object/from16 v15, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v14, 0x6

    move-object/from16 v15, p0

    if-nez v2, :cond_2

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v14

    goto :goto_1

    :cond_2
    move v2, v14

    :goto_1
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v10, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v14, 0x30

    move-object/from16 v10, p1

    if-nez v5, :cond_5

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    :cond_5
    :goto_3
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v2, v2, 0x180

    move/from16 v11, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v14, 0x180

    move/from16 v11, p2

    if-nez v5, :cond_8

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v2, v5

    :cond_8
    :goto_5
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_9

    or-int/lit16 v2, v2, 0xc00

    move/from16 v12, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v14, 0xc00

    move/from16 v12, p3

    if-nez v5, :cond_b

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x800

    goto :goto_6

    :cond_a
    const/16 v5, 0x400

    :goto_6
    or-int/2addr v2, v5

    :cond_b
    :goto_7
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_d

    or-int/lit16 v2, v2, 0x6000

    :cond_c
    move-object/from16 v6, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v6, v14, 0x6000

    if-nez v6, :cond_c

    move-object/from16 v6, p4

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/16 v8, 0x4000

    goto :goto_8

    :cond_e
    const/16 v8, 0x2000

    :goto_8
    or-int/2addr v2, v8

    :goto_9
    const/high16 v8, 0x30000

    and-int/2addr v8, v14

    if-nez v8, :cond_11

    and-int/lit8 v8, v0, 0x20

    if-nez v8, :cond_f

    move-object/from16 v8, p5

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const/high16 v9, 0x20000

    goto :goto_a

    :cond_f
    move-object/from16 v8, p5

    :cond_10
    const/high16 v9, 0x10000

    :goto_a
    or-int/2addr v2, v9

    goto :goto_b

    :cond_11
    move-object/from16 v8, p5

    :goto_b
    const/high16 v9, 0x180000

    and-int/2addr v9, v14

    if-nez v9, :cond_13

    and-int/lit8 v9, v0, 0x40

    move/from16 p13, v2

    move-wide/from16 v1, p6

    if-nez v9, :cond_12

    invoke-interface {v7, v1, v2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_12

    const/high16 v9, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v9, 0x80000

    :goto_c
    or-int v9, p13, v9

    goto :goto_d

    :cond_13
    move/from16 p13, v2

    move-wide/from16 v1, p6

    move/from16 v9, p13

    :goto_d
    const/high16 v16, 0xc00000

    and-int v16, v14, v16

    if-nez v16, :cond_15

    and-int/lit16 v3, v0, 0x80

    move-wide/from16 v13, p8

    if-nez v3, :cond_14

    invoke-interface {v7, v13, v14}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v3

    if-eqz v3, :cond_14

    const/high16 v3, 0x800000

    goto :goto_e

    :cond_14
    const/high16 v3, 0x400000

    :goto_e
    or-int/2addr v9, v3

    goto :goto_f

    :cond_15
    move-wide/from16 v13, p8

    :goto_f
    const/high16 v3, 0x6000000

    and-int v3, p14, v3

    if-nez v3, :cond_18

    and-int/lit16 v3, v0, 0x100

    if-nez v3, :cond_16

    move-object/from16 v3, p10

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    const/high16 v17, 0x4000000

    goto :goto_10

    :cond_16
    move-object/from16 v3, p10

    :cond_17
    const/high16 v17, 0x2000000

    :goto_10
    or-int v9, v9, v17

    goto :goto_11

    :cond_18
    move-object/from16 v3, p10

    :goto_11
    and-int/lit16 v3, v0, 0x200

    const/high16 v17, 0x30000000

    if-eqz v3, :cond_1a

    or-int v9, v9, v17

    :cond_19
    move/from16 v17, v3

    move-object/from16 v3, p11

    goto :goto_13

    :cond_1a
    and-int v17, p14, v17

    if-nez v17, :cond_19

    move/from16 v17, v3

    move-object/from16 v3, p11

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b

    const/high16 v18, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v18, 0x10000000

    :goto_12
    or-int v9, v9, v18

    :goto_13
    and-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_1c

    or-int/lit8 v4, p15, 0x6

    move v3, v4

    move-object/from16 v4, p12

    goto :goto_15

    :cond_1c
    and-int/lit8 v4, p15, 0x6

    if-nez v4, :cond_1e

    move-object/from16 v4, p12

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    const/16 v19, 0x4

    goto :goto_14

    :cond_1d
    const/16 v19, 0x2

    :goto_14
    or-int v19, p15, v19

    move/from16 v3, v19

    goto :goto_15

    :cond_1e
    move-object/from16 v4, p12

    move/from16 v3, p15

    :goto_15
    const v19, 0x12492493

    and-int v1, v9, v19

    const v2, 0x12492492

    move/from16 p13, v3

    if-ne v1, v2, :cond_20

    and-int/lit8 v1, p13, 0x3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1f

    goto :goto_16

    :cond_1f
    const/4 v1, 0x0

    goto :goto_17

    :cond_20
    :goto_16
    const/4 v1, 0x1

    :goto_17
    and-int/lit8 v2, v9, 0x1

    invoke-interface {v7, v1, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, p14, 0x1

    const/4 v2, 0x0

    const v18, -0xe000001

    const v20, -0x1c00001

    const v21, -0x380001

    const v22, -0x70001

    const/4 v3, 0x6

    if-eqz v1, :cond_26

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_18

    :cond_21
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_22

    and-int v9, v9, v22

    :cond_22
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_23

    and-int v9, v9, v21

    :cond_23
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_24

    and-int v9, v9, v20

    :cond_24
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_25

    and-int v9, v9, v18

    :cond_25
    move-wide/from16 v19, p6

    move-object/from16 v2, p10

    move/from16 v0, p13

    move/from16 v24, v3

    move-object/from16 v18, v8

    const/4 v1, 0x1

    const/4 v10, 0x0

    move-object/from16 v3, p11

    goto/16 :goto_1d

    :cond_26
    :goto_18
    if-eqz v5, :cond_27

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_19

    :cond_27
    move-object v1, v6

    :goto_19
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_28

    sget-object v5, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    invoke-virtual {v5, v7, v3}, Landroidx/compose/material3/FloatingActionButtonDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v5

    and-int v9, v9, v22

    move-object/from16 v22, v5

    goto :goto_1a

    :cond_28
    move-object/from16 v22, v8

    :goto_1a
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_29

    sget-object v5, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    invoke-virtual {v5, v7, v3}, Landroidx/compose/material3/FloatingActionButtonDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    and-int v9, v9, v21

    goto :goto_1b

    :cond_29
    move-wide/from16 v5, p6

    :goto_1b
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_2a

    shr-int/lit8 v8, v9, 0x12

    and-int/lit8 v8, v8, 0xe

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v13

    and-int v9, v9, v20

    :cond_2a
    move/from16 v20, v9

    and-int/lit16 v8, v0, 0x100

    if-eqz v8, :cond_2b

    move-object v8, v2

    sget-object v2, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    move-object v9, v8

    const/16 v8, 0x6000

    move-object/from16 v21, v9

    const/16 v9, 0xf

    move/from16 v24, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-wide/from16 v25, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p13

    move-object/from16 p4, v1

    const/4 v1, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v9}, Landroidx/compose/material3/FloatingActionButtonDefaults;->elevation-xZ9-QkE(FFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/FloatingActionButtonElevation;

    move-result-object v2

    and-int v3, v20, v18

    move v9, v3

    goto :goto_1c

    :cond_2b
    move/from16 v0, p13

    move-object/from16 p4, v1

    move/from16 v24, v3

    move-wide/from16 v25, v5

    const/4 v1, 0x1

    const/4 v10, 0x0

    move-object/from16 v2, p10

    move/from16 v9, v20

    :goto_1c
    move-object/from16 v6, p4

    if-eqz v17, :cond_2c

    move-object/from16 v18, v22

    move-wide/from16 v19, v25

    const/4 v3, 0x0

    goto :goto_1d

    :cond_2c
    move-object/from16 v3, p11

    move-object/from16 v18, v22

    move-wide/from16 v19, v25

    :goto_1d
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v4, "androidx.compose.material3.FloatingActionButton (FloatingActionButton.kt:145)"

    const v5, 0x740892c

    invoke-static {v5, v9, v0, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2d
    if-nez v3, :cond_2f

    const v0, -0x10dbb1f1

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v0, v4, :cond_2e

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2e
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_1e

    :cond_2f
    const v0, 0x394339c8

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object v0, v3

    :goto_1e
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_30

    new-instance v4, Lmm;

    invoke-direct {v4, v1}, Lmm;-><init>(I)V

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_30
    check-cast v4, Lnl3;

    const/4 v8, 0x0

    invoke-static {v6, v10, v4, v1, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLnl3;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-virtual {v2}, Landroidx/compose/material3/FloatingActionButtonElevation;->tonalElevation-D9Ej5fM$material3()F

    move-result v23

    shr-int/lit8 v4, v9, 0x15

    and-int/lit8 v4, v4, 0x70

    invoke-virtual {v2, v0, v7, v4}, Landroidx/compose/material3/FloatingActionButtonElevation;->shadowElevation$material3(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v4

    new-instance v5, Landroidx/compose/material3/FloatingActionButtonKt$FloatingActionButton$3;

    move-object/from16 p7, p1

    move-object/from16 p10, p12

    move-object/from16 p4, v5

    move/from16 p8, v11

    move/from16 p9, v12

    move-wide/from16 p5, v13

    invoke-direct/range {p4 .. p10}, Landroidx/compose/material3/FloatingActionButtonKt$FloatingActionButton$3;-><init>(JLandroidx/compose/ui/text/TextStyle;FFLbm3;)V

    move-wide/from16 v21, p5

    const/16 v8, 0x36

    const v10, -0x6a129809

    invoke-static {v10, v1, v5, v7, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v27

    and-int/lit8 v1, v9, 0xe

    shr-int/lit8 v5, v9, 0x6

    and-int/lit16 v8, v5, 0x1c00

    or-int/2addr v1, v8

    const v8, 0xe000

    and-int/2addr v8, v5

    or-int/2addr v1, v8

    const/high16 v8, 0x70000

    and-int/2addr v5, v8

    or-int v29, v1, v5

    const/16 v30, 0x6

    const/16 v31, 0x104

    const/16 v17, 0x0

    const/16 v25, 0x0

    move-object/from16 v26, v0

    move/from16 v24, v4

    move-object/from16 v28, v7

    invoke-static/range {v15 .. v31}, Landroidx/compose/material3/SurfaceKt;->Surface-o_FOJdg(Lll3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_31
    move-object v11, v2

    move-object v12, v3

    move-object v5, v6

    move-object/from16 v28, v7

    move-object/from16 v6, v18

    move-wide/from16 v7, v19

    move-wide/from16 v9, v21

    goto :goto_1f

    :cond_32
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object v5, v6

    move-object/from16 v28, v7

    move-object v6, v8

    move-wide v9, v13

    move-wide/from16 v7, p6

    :goto_1f
    invoke-interface/range {v28 .. v28}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_33

    move-object v1, v0

    new-instance v0, Lad3;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v13, p12

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v32, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v16}, Lad3;-><init>(Lll3;Landroidx/compose/ui/text/TextStyle;FFLandroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;III)V

    move-object/from16 v1, v32

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_33
    return-void
.end method

.method private static final FloatingActionButton_X_z6DiA$lambda$0(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 14

    or-int/lit8 v0, p10, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v13, p11

    move-object/from16 v11, p12

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/FloatingActionButtonKt;->FloatingActionButton-X-z6DiA(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final FloatingActionButton_lF_WlFE$lambda$3$lambda$2(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getButton-o7Vup1c()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final FloatingActionButton_lF_WlFE$lambda$4(Lll3;Landroidx/compose/ui/text/TextStyle;FFLandroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 18

    or-int/lit8 v0, p13, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    invoke-static/range {p14 .. p14}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v17, p15

    move-object/from16 v14, p16

    invoke-static/range {v1 .. v17}, Landroidx/compose/material3/FloatingActionButtonKt;->FloatingActionButton-lF-WlFE(Lll3;Landroidx/compose/ui/text/TextStyle;FFLandroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method public static final LargeFloatingActionButton-X-z6DiA(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Landroidx/compose/runtime/Composer;II)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/material3/FloatingActionButtonElevation;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move/from16 v11, p11

    move/from16 v12, p12

    const v0, 0x4bf87d85    # 3.2570122E7f

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v11, 0x6

    move-object/from16 v13, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v11, 0x6

    move-object/from16 v13, p0

    if-nez v1, :cond_2

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v11

    goto :goto_1

    :cond_2
    move v1, v11

    :goto_1
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x30

    :cond_3
    move-object/from16 v3, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v3, v11, 0x30

    if-nez v3, :cond_3

    move-object/from16 v3, p1

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x20

    goto :goto_2

    :cond_5
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :goto_3
    and-int/lit16 v4, v11, 0x180

    if-nez v4, :cond_8

    and-int/lit8 v4, v12, 0x4

    if-nez v4, :cond_6

    move-object/from16 v4, p2

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v4, p2

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v1, v5

    goto :goto_5

    :cond_8
    move-object/from16 v4, p2

    :goto_5
    and-int/lit16 v5, v11, 0xc00

    if-nez v5, :cond_a

    and-int/lit8 v5, v12, 0x8

    move-wide/from16 v7, p3

    if-nez v5, :cond_9

    invoke-interface {v6, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0x800

    goto :goto_6

    :cond_9
    const/16 v5, 0x400

    :goto_6
    or-int/2addr v1, v5

    goto :goto_7

    :cond_a
    move-wide/from16 v7, p3

    :goto_7
    and-int/lit16 v5, v11, 0x6000

    if-nez v5, :cond_c

    and-int/lit8 v5, v12, 0x10

    move-wide/from16 v9, p5

    if-nez v5, :cond_b

    invoke-interface {v6, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v5, 0x4000

    goto :goto_8

    :cond_b
    const/16 v5, 0x2000

    :goto_8
    or-int/2addr v1, v5

    goto :goto_9

    :cond_c
    move-wide/from16 v9, p5

    :goto_9
    const/high16 v5, 0x30000

    and-int/2addr v5, v11

    if-nez v5, :cond_f

    and-int/lit8 v5, v12, 0x20

    if-nez v5, :cond_d

    move-object/from16 v5, p7

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_d
    move-object/from16 v5, p7

    :cond_e
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v1, v14

    goto :goto_b

    :cond_f
    move-object/from16 v5, p7

    :goto_b
    and-int/lit8 v14, v12, 0x40

    const/high16 v15, 0x180000

    if-eqz v14, :cond_11

    or-int/2addr v1, v15

    :cond_10
    move-object/from16 v15, p8

    goto :goto_d

    :cond_11
    and-int/2addr v15, v11

    if-nez v15, :cond_10

    move-object/from16 v15, p8

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v16, 0x80000

    :goto_c
    or-int v1, v1, v16

    :goto_d
    and-int/lit16 v0, v12, 0x80

    const/high16 v17, 0xc00000

    if-eqz v0, :cond_14

    or-int v1, v1, v17

    :cond_13
    move-object/from16 v0, p9

    goto :goto_f

    :cond_14
    and-int v0, v11, v17

    if-nez v0, :cond_13

    move-object/from16 v0, p9

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v17, 0x400000

    :goto_e
    or-int v1, v1, v17

    :goto_f
    const v17, 0x492493

    and-int v0, v1, v17

    move/from16 p10, v2

    const v2, 0x492492

    if-eq v0, v2, :cond_16

    const/4 v0, 0x1

    goto :goto_10

    :cond_16
    const/4 v0, 0x0

    :goto_10
    and-int/lit8 v2, v1, 0x1

    invoke-interface {v6, v0, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v11, 0x1

    const v17, -0x70001

    const v2, -0xe001

    if-eqz v0, :cond_1c

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_11

    :cond_17
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_18

    and-int/lit16 v1, v1, -0x381

    :cond_18
    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_19

    and-int/lit16 v1, v1, -0x1c01

    :cond_19
    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_1a

    and-int/2addr v1, v2

    :cond_1a
    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_1b

    and-int v1, v1, v17

    :cond_1b
    move-object/from16 v20, v5

    move-wide/from16 v16, v7

    move-wide/from16 v18, v9

    move-object/from16 v21, v15

    const v0, 0x4bf87d85    # 3.2570122E7f

    move-object v15, v4

    goto/16 :goto_17

    :cond_1c
    :goto_11
    if-eqz p10, :cond_1d

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_12

    :cond_1d
    move-object v0, v3

    :goto_12
    and-int/lit8 v3, v12, 0x4

    move/from16 p10, v2

    const/4 v2, 0x6

    if-eqz v3, :cond_1e

    sget-object v3, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    invoke-virtual {v3, v6, v2}, Landroidx/compose/material3/FloatingActionButtonDefaults;->getLargeShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v3

    and-int/lit16 v1, v1, -0x381

    move-object/from16 v18, v3

    goto :goto_13

    :cond_1e
    move-object/from16 v18, v4

    :goto_13
    and-int/lit8 v3, v12, 0x8

    if-eqz v3, :cond_1f

    sget-object v3, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    invoke-virtual {v3, v6, v2}, Landroidx/compose/material3/FloatingActionButtonDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v2

    and-int/lit16 v1, v1, -0x1c01

    move-wide/from16 v26, v2

    move v3, v1

    move-wide/from16 v1, v26

    goto :goto_14

    :cond_1f
    move v3, v1

    move-wide v1, v7

    :goto_14
    and-int/lit8 v4, v12, 0x10

    if-eqz v4, :cond_20

    shr-int/lit8 v4, v3, 0x9

    and-int/lit8 v4, v4, 0xe

    invoke-static {v1, v2, v6, v4}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    and-int v3, v3, p10

    move-wide v9, v7

    :cond_20
    move/from16 v19, v3

    and-int/lit8 v3, v12, 0x20

    if-eqz v3, :cond_21

    move-wide v7, v1

    sget-object v1, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    move-wide v2, v7

    const/16 v7, 0x6000

    const/16 v8, 0xf

    move-wide v3, v2

    const/4 v2, 0x0

    move-wide v4, v3

    const/4 v3, 0x0

    move-wide/from16 v20, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v8}, Landroidx/compose/material3/FloatingActionButtonDefaults;->elevation-xZ9-QkE(FFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/FloatingActionButtonElevation;

    move-result-object v1

    and-int v2, v19, v17

    move-object v5, v1

    move v1, v2

    goto :goto_15

    :cond_21
    move-wide/from16 v20, v1

    move/from16 v1, v19

    :goto_15
    if-eqz v14, :cond_22

    const/4 v2, 0x0

    move-object v3, v0

    move-object/from16 v15, v18

    move-wide/from16 v16, v20

    const v0, 0x4bf87d85    # 3.2570122E7f

    move-object/from16 v21, v2

    move-object/from16 v20, v5

    :goto_16
    move-wide/from16 v18, v9

    goto :goto_17

    :cond_22
    move-object v3, v0

    move-wide/from16 v16, v20

    const v0, 0x4bf87d85    # 3.2570122E7f

    move-object/from16 v20, v5

    move-object/from16 v21, v15

    move-object/from16 v15, v18

    goto :goto_16

    :goto_17
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, -0x1

    const-string v4, "androidx.compose.material3.LargeFloatingActionButton (FloatingActionButton.kt:262)"

    invoke-static {v0, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_23
    sget-object v0, Landroidx/compose/material3/tokens/FabLargeTokens;->INSTANCE:Landroidx/compose/material3/tokens/FabLargeTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/FabLargeTokens;->getContainerWidth-D9Ej5fM()F

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/FabLargeTokens;->getContainerHeight-D9Ej5fM()F

    move-result v0

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 p3, v0

    move/from16 p2, v2

    move-object/from16 p1, v3

    move/from16 p6, v4

    move-object/from16 p7, v5

    move/from16 p4, v7

    move/from16 p5, v8

    invoke-static/range {p1 .. p7}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    const v0, 0x1ffff8e

    and-int v24, v1, v0

    const/16 v25, 0x0

    move-object/from16 v22, p9

    move-object/from16 v23, v6

    invoke-static/range {v13 .. v25}, Landroidx/compose/material3/FloatingActionButtonKt;->FloatingActionButton-X-z6DiA(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_24
    move-object v2, v3

    move-object/from16 v23, v6

    move-object v3, v15

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    goto :goto_18

    :cond_25
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v23, v6

    move-wide/from16 v26, v7

    move-object v8, v5

    move-wide/from16 v4, v26

    move-wide v6, v9

    move-object v9, v15

    :goto_18
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_26

    new-instance v0, Lyc3;

    move-object/from16 v1, p0

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v12}, Lyc3;-><init>(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;II)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_26
    return-void
.end method

.method private static final LargeFloatingActionButton_X_z6DiA$lambda$6(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 14

    or-int/lit8 v0, p10, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v13, p11

    move-object/from16 v11, p12

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/FloatingActionButtonKt;->LargeFloatingActionButton-X-z6DiA(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final SmallFloatingActionButton-X-z6DiA(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Landroidx/compose/runtime/Composer;II)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/material3/FloatingActionButtonElevation;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move/from16 v11, p11

    move/from16 v12, p12

    const v0, 0x1960339

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v11, 0x6

    move-object/from16 v13, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v11, 0x6

    move-object/from16 v13, p0

    if-nez v1, :cond_2

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v11

    goto :goto_1

    :cond_2
    move v1, v11

    :goto_1
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x30

    :cond_3
    move-object/from16 v3, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v3, v11, 0x30

    if-nez v3, :cond_3

    move-object/from16 v3, p1

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x20

    goto :goto_2

    :cond_5
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :goto_3
    and-int/lit16 v4, v11, 0x180

    if-nez v4, :cond_8

    and-int/lit8 v4, v12, 0x4

    if-nez v4, :cond_6

    move-object/from16 v4, p2

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v4, p2

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v1, v5

    goto :goto_5

    :cond_8
    move-object/from16 v4, p2

    :goto_5
    and-int/lit16 v5, v11, 0xc00

    if-nez v5, :cond_a

    and-int/lit8 v5, v12, 0x8

    move-wide/from16 v7, p3

    if-nez v5, :cond_9

    invoke-interface {v6, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0x800

    goto :goto_6

    :cond_9
    const/16 v5, 0x400

    :goto_6
    or-int/2addr v1, v5

    goto :goto_7

    :cond_a
    move-wide/from16 v7, p3

    :goto_7
    and-int/lit16 v5, v11, 0x6000

    if-nez v5, :cond_c

    and-int/lit8 v5, v12, 0x10

    move-wide/from16 v9, p5

    if-nez v5, :cond_b

    invoke-interface {v6, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v5, 0x4000

    goto :goto_8

    :cond_b
    const/16 v5, 0x2000

    :goto_8
    or-int/2addr v1, v5

    goto :goto_9

    :cond_c
    move-wide/from16 v9, p5

    :goto_9
    const/high16 v5, 0x30000

    and-int/2addr v5, v11

    if-nez v5, :cond_f

    and-int/lit8 v5, v12, 0x20

    if-nez v5, :cond_d

    move-object/from16 v5, p7

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_d
    move-object/from16 v5, p7

    :cond_e
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v1, v14

    goto :goto_b

    :cond_f
    move-object/from16 v5, p7

    :goto_b
    and-int/lit8 v14, v12, 0x40

    const/high16 v15, 0x180000

    if-eqz v14, :cond_11

    or-int/2addr v1, v15

    :cond_10
    move-object/from16 v15, p8

    goto :goto_d

    :cond_11
    and-int/2addr v15, v11

    if-nez v15, :cond_10

    move-object/from16 v15, p8

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v16, 0x80000

    :goto_c
    or-int v1, v1, v16

    :goto_d
    and-int/lit16 v0, v12, 0x80

    const/high16 v17, 0xc00000

    if-eqz v0, :cond_14

    or-int v1, v1, v17

    :cond_13
    move-object/from16 v0, p9

    goto :goto_f

    :cond_14
    and-int v0, v11, v17

    if-nez v0, :cond_13

    move-object/from16 v0, p9

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v17, 0x400000

    :goto_e
    or-int v1, v1, v17

    :goto_f
    const v17, 0x492493

    and-int v0, v1, v17

    move/from16 p10, v2

    const v2, 0x492492

    if-eq v0, v2, :cond_16

    const/4 v0, 0x1

    goto :goto_10

    :cond_16
    const/4 v0, 0x0

    :goto_10
    and-int/lit8 v2, v1, 0x1

    invoke-interface {v6, v0, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v11, 0x1

    const v17, -0x70001

    const v2, -0xe001

    if-eqz v0, :cond_1c

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_11

    :cond_17
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_18

    and-int/lit16 v1, v1, -0x381

    :cond_18
    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_19

    and-int/lit16 v1, v1, -0x1c01

    :cond_19
    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_1a

    and-int/2addr v1, v2

    :cond_1a
    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_1b

    and-int v1, v1, v17

    :cond_1b
    move-object/from16 v20, v5

    move-wide/from16 v16, v7

    move-wide/from16 v18, v9

    move-object/from16 v21, v15

    const v0, 0x1960339

    move-object v15, v4

    goto/16 :goto_17

    :cond_1c
    :goto_11
    if-eqz p10, :cond_1d

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_12

    :cond_1d
    move-object v0, v3

    :goto_12
    and-int/lit8 v3, v12, 0x4

    move/from16 p10, v2

    const/4 v2, 0x6

    if-eqz v3, :cond_1e

    sget-object v3, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    invoke-virtual {v3, v6, v2}, Landroidx/compose/material3/FloatingActionButtonDefaults;->getSmallShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v3

    and-int/lit16 v1, v1, -0x381

    move-object/from16 v18, v3

    goto :goto_13

    :cond_1e
    move-object/from16 v18, v4

    :goto_13
    and-int/lit8 v3, v12, 0x8

    if-eqz v3, :cond_1f

    sget-object v3, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    invoke-virtual {v3, v6, v2}, Landroidx/compose/material3/FloatingActionButtonDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v2

    and-int/lit16 v1, v1, -0x1c01

    move-wide/from16 v26, v2

    move v3, v1

    move-wide/from16 v1, v26

    goto :goto_14

    :cond_1f
    move v3, v1

    move-wide v1, v7

    :goto_14
    and-int/lit8 v4, v12, 0x10

    if-eqz v4, :cond_20

    shr-int/lit8 v4, v3, 0x9

    and-int/lit8 v4, v4, 0xe

    invoke-static {v1, v2, v6, v4}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    and-int v3, v3, p10

    move-wide v9, v7

    :cond_20
    move/from16 v19, v3

    and-int/lit8 v3, v12, 0x20

    if-eqz v3, :cond_21

    move-wide v7, v1

    sget-object v1, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    move-wide v2, v7

    const/16 v7, 0x6000

    const/16 v8, 0xf

    move-wide v3, v2

    const/4 v2, 0x0

    move-wide v4, v3

    const/4 v3, 0x0

    move-wide/from16 v20, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v8}, Landroidx/compose/material3/FloatingActionButtonDefaults;->elevation-xZ9-QkE(FFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/FloatingActionButtonElevation;

    move-result-object v1

    and-int v2, v19, v17

    move-object v5, v1

    move v1, v2

    goto :goto_15

    :cond_21
    move-wide/from16 v20, v1

    move/from16 v1, v19

    :goto_15
    if-eqz v14, :cond_22

    const/4 v2, 0x0

    move-object v3, v0

    move-object/from16 v15, v18

    move-wide/from16 v16, v20

    const v0, 0x1960339

    move-object/from16 v21, v2

    move-object/from16 v20, v5

    :goto_16
    move-wide/from16 v18, v9

    goto :goto_17

    :cond_22
    move-object v3, v0

    move-wide/from16 v16, v20

    const v0, 0x1960339

    move-object/from16 v20, v5

    move-object/from16 v21, v15

    move-object/from16 v15, v18

    goto :goto_16

    :goto_17
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, -0x1

    const-string v4, "androidx.compose.material3.SmallFloatingActionButton (FloatingActionButton.kt:207)"

    invoke-static {v0, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_23
    sget-object v0, Landroidx/compose/material3/tokens/FabSmallTokens;->INSTANCE:Landroidx/compose/material3/tokens/FabSmallTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/FabSmallTokens;->getContainerWidth-D9Ej5fM()F

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/FabSmallTokens;->getContainerHeight-D9Ej5fM()F

    move-result v0

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 p3, v0

    move/from16 p2, v2

    move-object/from16 p1, v3

    move/from16 p6, v4

    move-object/from16 p7, v5

    move/from16 p4, v7

    move/from16 p5, v8

    invoke-static/range {p1 .. p7}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    const v0, 0x1ffff8e

    and-int v24, v1, v0

    const/16 v25, 0x0

    move-object/from16 v22, p9

    move-object/from16 v23, v6

    invoke-static/range {v13 .. v25}, Landroidx/compose/material3/FloatingActionButtonKt;->FloatingActionButton-X-z6DiA(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_24
    move-object v2, v3

    move-object/from16 v23, v6

    move-object v3, v15

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    goto :goto_18

    :cond_25
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v23, v6

    move-wide/from16 v26, v7

    move-object v8, v5

    move-wide/from16 v4, v26

    move-wide v6, v9

    move-object v9, v15

    :goto_18
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_26

    new-instance v0, Lzc3;

    move-object/from16 v1, p0

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v12}, Lzc3;-><init>(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;II)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_26
    return-void
.end method

.method private static final SmallFloatingActionButton_X_z6DiA$lambda$5(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 14

    or-int/lit8 v0, p10, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v13, p11

    move-object/from16 v11, p12

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/FloatingActionButtonKt;->SmallFloatingActionButton-X-z6DiA(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic a(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p13}, Landroidx/compose/material3/FloatingActionButtonKt;->ExtendedFloatingActionButton_X_z6DiA$lambda$7(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$extendedFabCollapseAnimation(Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/ExitTransition;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/FloatingActionButtonKt;->extendedFabCollapseAnimation(Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/ExitTransition;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$extendedFabExpandAnimation(Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/EnterTransition;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/FloatingActionButtonKt;->extendedFabExpandAnimation(Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/EnterTransition;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getExtendedFabEndIconPadding$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/FloatingActionButtonKt;->ExtendedFabEndIconPadding:F

    return v0
.end method

.method public static final synthetic access$getExtendedFabMinimumWidth$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/FloatingActionButtonKt;->ExtendedFabMinimumWidth:F

    return v0
.end method

.method public static final synthetic access$getExtendedFabStartIconPadding$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/FloatingActionButtonKt;->ExtendedFabStartIconPadding:F

    return v0
.end method

.method public static final synthetic access$getExtendedFabTextPadding$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/FloatingActionButtonKt;->ExtendedFabTextPadding:F

    return v0
.end method

.method public static synthetic b(Lbm3;Lbm3;Lll3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p15}, Landroidx/compose/material3/FloatingActionButtonKt;->ExtendedFloatingActionButton_ElI5_7k$lambda$8(Lbm3;Lbm3;Lll3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p13}, Landroidx/compose/material3/FloatingActionButtonKt;->LargeFloatingActionButton_X_z6DiA$lambda$6(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p13}, Landroidx/compose/material3/FloatingActionButtonKt;->FloatingActionButton_X_z6DiA$lambda$0(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lbm3;Lbm3;Lll3;Landroidx/compose/ui/text/TextStyle;FFFFFLandroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p22}, Landroidx/compose/material3/FloatingActionButtonKt;->ExtendedFloatingActionButton_qtIzBjc$lambda$9(Lbm3;Lbm3;Lll3;Landroidx/compose/ui/text/TextStyle;FFFFFLandroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final extendedFabCollapseAnimation(Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/ExitTransition;
    .locals 8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.extendedFabCollapseAnimation (FloatingActionButton.kt:795)"

    const v2, -0x3591ea9

    invoke-static {v2, p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p1, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    const/4 v0, 0x6

    invoke-static {p1, p0, v0}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object p1

    sget-object v1, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v1, p0, v0}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v2

    sget-object p0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkHorizontally$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLnl3;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method private static final extendedFabExpandAnimation(Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/EnterTransition;
    .locals 8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.extendedFabExpandAnimation (FloatingActionButton.kt:806)"

    const v2, -0x2ae715f2

    invoke-static {v2, p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p1, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    const/4 v0, 0x6

    invoke-static {p1, p0, v0}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object p1

    sget-object v1, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v1, p0, v0}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v2

    sget-object p0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/EnterExitTransitionKt;->expandHorizontally$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLnl3;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public static synthetic f(Lll3;Landroidx/compose/ui/text/TextStyle;FFLandroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p17}, Landroidx/compose/material3/FloatingActionButtonKt;->FloatingActionButton_lF_WlFE$lambda$4(Lll3;Landroidx/compose/ui/text/TextStyle;FFLandroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/FloatingActionButtonKt;->FloatingActionButton_lF_WlFE$lambda$3$lambda$2(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p13}, Landroidx/compose/material3/FloatingActionButtonKt;->SmallFloatingActionButton_X_z6DiA$lambda$5(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
