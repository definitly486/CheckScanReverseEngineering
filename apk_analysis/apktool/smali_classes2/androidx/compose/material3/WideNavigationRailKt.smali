.class public final Landroidx/compose/material3/WideNavigationRailKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CollapsedRailWidth:F

.field private static final ExpandedRailMaxWidth:F

.field private static final ExpandedRailMinWidth:F

.field private static final HeaderLayoutIdTag:Ljava/lang/String; = "header"

.field private static final ItemHorizontalPadding:F

.field private static final ItemStartIconIndicatorVerticalPadding:F

.field private static final ItemTopIconIndicatorHorizontalPadding:F

.field private static final ItemTopIconIndicatorVerticalPadding:F

.field private static final LocalModalWideNavigationRailOverride:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material3/ModalWideNavigationRailOverride;",
            ">;"
        }
    .end annotation
.end field

.field private static final LocalWideNavigationRailOverride:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material3/WideNavigationRailOverride;",
            ">;"
        }
    .end annotation
.end field

.field private static final PredictiveBackMaxScaleXDistance:F

.field private static final PredictiveBackMaxScaleYDistance:F

.field private static final PredictiveBackPivotFractionY:F = 0.5f

.field private static final TopIconItemMinHeight:F

.field private static final WNRHeaderPadding:F

.field private static final WNRItemNoLabelIndicatorPadding:F

.field private static final WNRVerticalPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->getActiveIndicatorWidth-D9Ej5fM()F

    move-result v1

    sget-object v2, Landroidx/compose/material3/tokens/NavigationRailBaselineItemTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailBaselineItemTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/NavigationRailBaselineItemTokens;->getIconSize-D9Ej5fM()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/WideNavigationRailKt;->WNRItemNoLabelIndicatorPadding:F

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/WideNavigationRailKt;->ItemHorizontalPadding:F

    sget-object v1, Landroidx/compose/material3/tokens/NavigationRailCollapsedTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailCollapsedTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/NavigationRailCollapsedTokens;->getTopSpace-D9Ej5fM()F

    move-result v4

    sput v4, Landroidx/compose/material3/WideNavigationRailKt;->WNRVerticalPadding:F

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/NavigationRailBaselineItemTokens;->getHeaderSpaceMinimum-D9Ej5fM()F

    move-result v4

    sput v4, Landroidx/compose/material3/WideNavigationRailKt;->WNRHeaderPadding:F

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/NavigationRailCollapsedTokens;->getContainerWidth-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/WideNavigationRailKt;->CollapsedRailWidth:F

    sget-object v1, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->getContainerWidthMinimum-D9Ej5fM()F

    move-result v4

    sput v4, Landroidx/compose/material3/WideNavigationRailKt;->ExpandedRailMinWidth:F

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->getContainerWidthMaximum-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/WideNavigationRailKt;->ExpandedRailMaxWidth:F

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/NavigationRailBaselineItemTokens;->getContainerHeight-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/WideNavigationRailKt;->TopIconItemMinHeight:F

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->getActiveIndicatorHeight-D9Ej5fM()F

    move-result v1

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/NavigationRailBaselineItemTokens;->getIconSize-D9Ej5fM()F

    move-result v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    div-float/2addr v1, v3

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/WideNavigationRailKt;->ItemTopIconIndicatorVerticalPadding:F

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->getActiveIndicatorWidth-D9Ej5fM()F

    move-result v0

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/NavigationRailBaselineItemTokens;->getIconSize-D9Ej5fM()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    div-float/2addr v0, v3

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/WideNavigationRailKt;->ItemTopIconIndicatorHorizontalPadding:F

    sget-object v0, Landroidx/compose/material3/tokens/NavigationRailHorizontalItemTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailHorizontalItemTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/NavigationRailHorizontalItemTokens;->getActiveIndicatorHeight-D9Ej5fM()F

    move-result v0

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/NavigationRailBaselineItemTokens;->getIconSize-D9Ej5fM()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    div-float/2addr v0, v3

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/WideNavigationRailKt;->ItemStartIconIndicatorVerticalPadding:F

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/WideNavigationRailKt;->PredictiveBackMaxScaleXDistance:F

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/WideNavigationRailKt;->PredictiveBackMaxScaleYDistance:F

    new-instance v0, Ldl3;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ldl3;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lll3;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/WideNavigationRailKt;->LocalWideNavigationRailOverride:Landroidx/compose/runtime/ProvidableCompositionLocal;

    new-instance v0, Lc80;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lc80;-><init>(I)V

    invoke-static {v1, v0, v2, v1}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lll3;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/WideNavigationRailKt;->LocalModalWideNavigationRailOverride:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method private static final LocalModalWideNavigationRailOverride$lambda$39()Landroidx/compose/material3/ModalWideNavigationRailOverride;
    .locals 1

    sget-object v0, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;->INSTANCE:Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;

    return-object v0
.end method

.method private static final LocalWideNavigationRailOverride$lambda$38()Landroidx/compose/material3/WideNavigationRailOverride;
    .locals 1

    sget-object v0, Landroidx/compose/material3/DefaultWideNavigationRailOverride;->INSTANCE:Landroidx/compose/material3/DefaultWideNavigationRailOverride;

    return-object v0
.end method

.method public static final ModalWideNavigationRail-k3FuEkE(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lbm3;Landroidx/compose/runtime/Composer;III)V
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/WideNavigationRailState;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/WideNavigationRailColors;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;F",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/material3/ModalWideNavigationRailProperties;",
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

    move-object/from16 v0, p1

    move/from16 v13, p13

    move/from16 v15, p15

    const v1, -0x24c5dab

    move-object/from16 v2, p12

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    and-int/lit8 v3, v15, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v6, v13, 0x6

    move v7, v6

    move-object/from16 v6, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v13, 0x6

    if-nez v6, :cond_2

    move-object/from16 v6, p0

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v13

    goto :goto_1

    :cond_2
    move-object/from16 v6, p0

    move v7, v13

    :goto_1
    and-int/lit8 v8, v13, 0x30

    if-nez v8, :cond_5

    and-int/lit8 v8, v15, 0x2

    if-nez v8, :cond_4

    and-int/lit8 v8, v13, 0x40

    if-nez v8, :cond_3

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_2

    :cond_3
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    :goto_2
    if-eqz v8, :cond_4

    const/16 v8, 0x20

    goto :goto_3

    :cond_4
    const/16 v8, 0x10

    :goto_3
    or-int/2addr v7, v8

    :cond_5
    and-int/lit8 v8, v15, 0x4

    if-eqz v8, :cond_7

    or-int/lit16 v7, v7, 0x180

    :cond_6
    move/from16 v11, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v11, v13, 0x180

    if-nez v11, :cond_6

    move/from16 v11, p2

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x100

    goto :goto_4

    :cond_8
    const/16 v12, 0x80

    :goto_4
    or-int/2addr v7, v12

    :goto_5
    and-int/lit16 v12, v13, 0xc00

    if-nez v12, :cond_b

    and-int/lit8 v12, v15, 0x8

    if-nez v12, :cond_9

    move-object/from16 v12, p3

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/16 v14, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v12, p3

    :cond_a
    const/16 v14, 0x400

    :goto_6
    or-int/2addr v7, v14

    goto :goto_7

    :cond_b
    move-object/from16 v12, p3

    :goto_7
    and-int/lit16 v14, v13, 0x6000

    if-nez v14, :cond_e

    and-int/lit8 v14, v15, 0x10

    if-nez v14, :cond_c

    move-object/from16 v14, p4

    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v14, p4

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v7, v7, v16

    goto :goto_9

    :cond_e
    move-object/from16 v14, p4

    :goto_9
    const/high16 v16, 0x30000

    and-int v16, v13, v16

    if-nez v16, :cond_10

    and-int/lit8 v16, v15, 0x20

    move-object/from16 v4, p5

    if-nez v16, :cond_f

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v16, 0x10000

    :goto_a
    or-int v7, v7, v16

    goto :goto_b

    :cond_10
    move-object/from16 v4, p5

    :goto_b
    and-int/lit8 v16, v15, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_11

    or-int v7, v7, v17

    move-object/from16 v5, p6

    goto :goto_d

    :cond_11
    and-int v17, v13, v17

    move-object/from16 v5, p6

    if-nez v17, :cond_13

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v18, 0x80000

    :goto_c
    or-int v7, v7, v18

    :cond_13
    :goto_d
    and-int/lit16 v9, v15, 0x80

    const/high16 v19, 0xc00000

    if-eqz v9, :cond_14

    or-int v7, v7, v19

    move/from16 v10, p7

    goto :goto_f

    :cond_14
    and-int v19, v13, v19

    move/from16 v10, p7

    if-nez v19, :cond_16

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v20

    if-eqz v20, :cond_15

    const/high16 v20, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v20, 0x400000

    :goto_e
    or-int v7, v7, v20

    :cond_16
    :goto_f
    const/high16 v20, 0x6000000

    and-int v20, v13, v20

    if-nez v20, :cond_19

    and-int/lit16 v1, v15, 0x100

    if-nez v1, :cond_17

    move-object/from16 v1, p8

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    const/high16 v21, 0x4000000

    goto :goto_10

    :cond_17
    move-object/from16 v1, p8

    :cond_18
    const/high16 v21, 0x2000000

    :goto_10
    or-int v7, v7, v21

    goto :goto_11

    :cond_19
    move-object/from16 v1, p8

    :goto_11
    const/high16 v21, 0x30000000

    and-int v21, v13, v21

    if-nez v21, :cond_1c

    and-int/lit16 v0, v15, 0x200

    if-nez v0, :cond_1a

    move-object/from16 v0, p9

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b

    const/high16 v21, 0x20000000

    goto :goto_12

    :cond_1a
    move-object/from16 v0, p9

    :cond_1b
    const/high16 v21, 0x10000000

    :goto_12
    or-int v7, v7, v21

    goto :goto_13

    :cond_1c
    move-object/from16 v0, p9

    :goto_13
    and-int/lit16 v0, v15, 0x400

    if-eqz v0, :cond_1d

    or-int/lit8 v17, p14, 0x6

    move/from16 v21, v0

    move-object/from16 v0, p10

    goto :goto_15

    :cond_1d
    and-int/lit8 v21, p14, 0x6

    if-nez v21, :cond_1f

    move/from16 v21, v0

    move-object/from16 v0, p10

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e

    const/16 v17, 0x4

    goto :goto_14

    :cond_1e
    const/16 v17, 0x2

    :goto_14
    or-int v17, p14, v17

    goto :goto_15

    :cond_1f
    move/from16 v21, v0

    move-object/from16 v0, p10

    move/from16 v17, p14

    :goto_15
    and-int/lit16 v0, v15, 0x800

    if-eqz v0, :cond_20

    or-int/lit8 v17, v17, 0x30

    :goto_16
    move/from16 v0, v17

    goto :goto_18

    :cond_20
    and-int/lit8 v0, p14, 0x30

    if-nez v0, :cond_22

    move-object/from16 v0, p11

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_21

    const/16 v18, 0x20

    goto :goto_17

    :cond_21
    const/16 v18, 0x10

    :goto_17
    or-int v17, v17, v18

    goto :goto_16

    :cond_22
    move-object/from16 v0, p11

    goto :goto_16

    :goto_18
    const v17, 0x12492493

    and-int v1, v7, v17

    move/from16 p12, v3

    const v3, 0x12492492

    const/4 v4, 0x1

    if-ne v1, v3, :cond_24

    and-int/lit8 v1, v0, 0x13

    const/16 v3, 0x12

    if-eq v1, v3, :cond_23

    goto :goto_19

    :cond_23
    const/4 v1, 0x0

    goto :goto_1a

    :cond_24
    :goto_19
    move v1, v4

    :goto_1a
    and-int/lit8 v3, v7, 0x1

    invoke-interface {v2, v1, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, v13, 0x1

    const v3, -0x70000001

    const v18, -0xe000001

    const v19, -0x70001

    const v22, -0xe001

    if-eqz v1, :cond_2c

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_1b

    :cond_25
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, v15, 0x2

    if-eqz v1, :cond_26

    and-int/lit8 v7, v7, -0x71

    :cond_26
    and-int/lit8 v1, v15, 0x8

    if-eqz v1, :cond_27

    and-int/lit16 v7, v7, -0x1c01

    :cond_27
    and-int/lit8 v1, v15, 0x10

    if-eqz v1, :cond_28

    and-int v7, v7, v22

    :cond_28
    and-int/lit8 v1, v15, 0x20

    if-eqz v1, :cond_29

    and-int v7, v7, v19

    :cond_29
    and-int/lit16 v1, v15, 0x100

    if-eqz v1, :cond_2a

    and-int v7, v7, v18

    :cond_2a
    and-int/lit16 v1, v15, 0x200

    if-eqz v1, :cond_2b

    and-int/2addr v7, v3

    :cond_2b
    move-object/from16 v24, p1

    move-object/from16 v28, p5

    move-object/from16 v31, p8

    move-object/from16 v32, p9

    move-object/from16 v33, p10

    move-object/from16 v29, v5

    move-object/from16 v23, v6

    move/from16 v30, v10

    move/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v14

    goto/16 :goto_26

    :cond_2c
    :goto_1b
    if-eqz p12, :cond_2d

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1c

    :cond_2d
    move-object v1, v6

    :goto_1c
    and-int/lit8 v6, v15, 0x2

    move/from16 p12, v3

    const/4 v3, 0x0

    if-eqz v6, :cond_2e

    const/4 v6, 0x0

    invoke-static {v3, v2, v6, v4}, Landroidx/compose/material3/WideNavigationRailStateKt;->rememberWideNavigationRailState(Landroidx/compose/material3/WideNavigationRailValue;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/WideNavigationRailState;

    move-result-object v4

    and-int/lit8 v7, v7, -0x71

    goto :goto_1d

    :cond_2e
    move-object/from16 v4, p1

    :goto_1d
    if-eqz v8, :cond_2f

    const/4 v11, 0x0

    :cond_2f
    and-int/lit8 v6, v15, 0x8

    const/4 v8, 0x6

    if-eqz v6, :cond_30

    sget-object v6, Landroidx/compose/material3/WideNavigationRailDefaults;->INSTANCE:Landroidx/compose/material3/WideNavigationRailDefaults;

    invoke-virtual {v6, v2, v8}, Landroidx/compose/material3/WideNavigationRailDefaults;->getModalCollapsedShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    and-int/lit16 v7, v7, -0x1c01

    goto :goto_1e

    :cond_30
    move-object v6, v12

    :goto_1e
    and-int/lit8 v12, v15, 0x10

    if-eqz v12, :cond_31

    sget-object v12, Landroidx/compose/material3/WideNavigationRailDefaults;->INSTANCE:Landroidx/compose/material3/WideNavigationRailDefaults;

    invoke-virtual {v12, v2, v8}, Landroidx/compose/material3/WideNavigationRailDefaults;->getModalExpandedShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v12

    and-int v7, v7, v22

    goto :goto_1f

    :cond_31
    move-object v12, v14

    :goto_1f
    and-int/lit8 v14, v15, 0x20

    if-eqz v14, :cond_32

    sget-object v14, Landroidx/compose/material3/WideNavigationRailDefaults;->INSTANCE:Landroidx/compose/material3/WideNavigationRailDefaults;

    invoke-virtual {v14, v2, v8}, Landroidx/compose/material3/WideNavigationRailDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/WideNavigationRailColors;

    move-result-object v14

    and-int v7, v7, v19

    goto :goto_20

    :cond_32
    move-object/from16 v14, p5

    :goto_20
    if-eqz v16, :cond_33

    goto :goto_21

    :cond_33
    move-object v3, v5

    :goto_21
    if-eqz v9, :cond_34

    const/4 v5, 0x0

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    goto :goto_22

    :cond_34
    move v5, v10

    :goto_22
    and-int/lit16 v9, v15, 0x100

    if-eqz v9, :cond_35

    sget-object v9, Landroidx/compose/material3/WideNavigationRailDefaults;->INSTANCE:Landroidx/compose/material3/WideNavigationRailDefaults;

    invoke-virtual {v9, v2, v8}, Landroidx/compose/material3/WideNavigationRailDefaults;->getWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v8

    and-int v7, v7, v18

    goto :goto_23

    :cond_35
    move-object/from16 v8, p8

    :goto_23
    and-int/lit16 v9, v15, 0x200

    if-eqz v9, :cond_36

    sget-object v9, Landroidx/compose/material3/WideNavigationRailDefaults;->INSTANCE:Landroidx/compose/material3/WideNavigationRailDefaults;

    invoke-virtual {v9}, Landroidx/compose/material3/WideNavigationRailDefaults;->getArrangement()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v9

    and-int v7, v7, p12

    goto :goto_24

    :cond_36
    move-object/from16 v9, p9

    :goto_24
    if-eqz v21, :cond_37

    sget-object v10, Landroidx/compose/material3/WideNavigationRailDefaults;->INSTANCE:Landroidx/compose/material3/WideNavigationRailDefaults;

    invoke-virtual {v10}, Landroidx/compose/material3/WideNavigationRailDefaults;->getModalExpandedProperties()Landroidx/compose/material3/ModalWideNavigationRailProperties;

    move-result-object v10

    move-object/from16 v23, v1

    move-object/from16 v29, v3

    move-object/from16 v24, v4

    move/from16 v30, v5

    move-object/from16 v26, v6

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    :goto_25
    move/from16 v25, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v14

    goto :goto_26

    :cond_37
    move-object/from16 v33, p10

    move-object/from16 v23, v1

    move-object/from16 v29, v3

    move-object/from16 v24, v4

    move/from16 v30, v5

    move-object/from16 v26, v6

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    goto :goto_25

    :goto_26
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "androidx.compose.material3.ModalWideNavigationRail (WideNavigationRail.kt:477)"

    const v3, -0x24c5dab

    invoke-static {v3, v7, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_38
    new-instance v22, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;

    const/16 v35, 0x0

    move-object/from16 v34, p11

    invoke-direct/range {v22 .. v35}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lbm3;Ljh2;)V

    move-object/from16 v0, v22

    sget-object v1, Landroidx/compose/material3/WideNavigationRailKt;->LocalModalWideNavigationRailOverride:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material3/ModalWideNavigationRailOverride;

    const/4 v6, 0x0

    invoke-interface {v1, v0, v2, v6}, Landroidx/compose/material3/ModalWideNavigationRailOverride;->ModalWideNavigationRail(Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_39
    move-object v0, v2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v26

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    move-object/from16 v7, v29

    move/from16 v8, v30

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    move-object/from16 v11, v33

    goto :goto_27

    :cond_3a
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v9, p8

    move-object v0, v2

    move-object v7, v5

    move-object v1, v6

    move v8, v10

    move v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    :goto_27
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_3b

    move-object v12, v0

    new-instance v0, Lyh9;

    move/from16 v14, p14

    move-object/from16 v36, v12

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v15}, Lyh9;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lbm3;III)V

    move-object/from16 v12, v36

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_3b
    return-void
.end method

.method private static final ModalWideNavigationRailContent-pU6N4AM(ZZLandroidx/compose/animation/core/Animatable;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;FLbm3;Landroidx/compose/foundation/layout/WindowInsets;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;Landroidx/compose/runtime/Composer;II)V
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Landroidx/compose/material3/RailPredictiveBackState;",
            "Lbm3<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/ModalWideNavigationRailState;",
            "Landroidx/compose/material3/WideNavigationRailColors;",
            "Landroidx/compose/ui/graphics/Shape;",
            "F",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Z",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
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

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v14, p6

    move/from16 v15, p9

    move/from16 v5, p16

    move/from16 v6, p17

    const v7, -0x5ef9ef35

    move-object/from16 v8, p15

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    and-int/lit8 v9, v5, 0x6

    if-nez v9, :cond_1

    move/from16 v9, p0

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x4

    goto :goto_0

    :cond_0
    const/4 v12, 0x2

    :goto_0
    or-int/2addr v12, v5

    goto :goto_1

    :cond_1
    move/from16 v9, p0

    move v12, v5

    :goto_1
    and-int/lit8 v13, v5, 0x30

    const/16 v16, 0x10

    if-nez v13, :cond_3

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v13, 0x20

    goto :goto_2

    :cond_2
    move/from16 v13, v16

    :goto_2
    or-int/2addr v12, v13

    :cond_3
    and-int/lit16 v13, v5, 0x180

    const/16 v17, 0x80

    if-nez v13, :cond_6

    and-int/lit16 v13, v5, 0x200

    if-nez v13, :cond_4

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    goto :goto_3

    :cond_4
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    :goto_3
    if-eqz v13, :cond_5

    const/16 v13, 0x100

    goto :goto_4

    :cond_5
    move/from16 v13, v17

    :goto_4
    or-int/2addr v12, v13

    :cond_6
    and-int/lit16 v13, v5, 0xc00

    const/16 v19, 0x400

    if-nez v13, :cond_8

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/16 v13, 0x800

    goto :goto_5

    :cond_7
    move/from16 v13, v19

    :goto_5
    or-int/2addr v12, v13

    :cond_8
    and-int/lit16 v13, v5, 0x6000

    const/16 v21, 0x2000

    const/16 v22, 0x4000

    if-nez v13, :cond_a

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    move/from16 v13, v22

    goto :goto_6

    :cond_9
    move/from16 v13, v21

    :goto_6
    or-int/2addr v12, v13

    :cond_a
    const/high16 v13, 0x30000

    and-int/2addr v13, v5

    if-nez v13, :cond_c

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/high16 v13, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v13, 0x10000

    :goto_7
    or-int/2addr v12, v13

    :cond_c
    const/high16 v13, 0x180000

    and-int/2addr v13, v5

    if-nez v13, :cond_e

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/high16 v13, 0x100000

    goto :goto_8

    :cond_d
    const/high16 v13, 0x80000

    :goto_8
    or-int/2addr v12, v13

    :cond_e
    const/high16 v23, 0xc00000

    and-int v13, v5, v23

    if-nez v13, :cond_10

    move-object/from16 v13, p7

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    const/high16 v24, 0x800000

    goto :goto_9

    :cond_f
    const/high16 v24, 0x400000

    :goto_9
    or-int v12, v12, v24

    goto :goto_a

    :cond_10
    move-object/from16 v13, p7

    :goto_a
    const/high16 v24, 0x6000000

    and-int v24, v5, v24

    move-object/from16 v10, p8

    if-nez v24, :cond_12

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    const/high16 v25, 0x4000000

    goto :goto_b

    :cond_11
    const/high16 v25, 0x2000000

    :goto_b
    or-int v12, v12, v25

    :cond_12
    const/high16 v25, 0x30000000

    and-int v25, v5, v25

    if-nez v25, :cond_14

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v25

    if-eqz v25, :cond_13

    const/high16 v25, 0x20000000

    goto :goto_c

    :cond_13
    const/high16 v25, 0x10000000

    :goto_c
    or-int v12, v12, v25

    :cond_14
    and-int/lit8 v25, v6, 0x6

    move-object/from16 v11, p10

    if-nez v25, :cond_16

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    const/16 v26, 0x4

    goto :goto_d

    :cond_15
    const/16 v26, 0x2

    :goto_d
    or-int v26, v6, v26

    goto :goto_e

    :cond_16
    move/from16 v26, v6

    :goto_e
    and-int/lit8 v27, v6, 0x30

    move-object/from16 v7, p11

    if-nez v27, :cond_18

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_17

    const/16 v16, 0x20

    :cond_17
    or-int v26, v26, v16

    :cond_18
    and-int/lit16 v5, v6, 0x180

    if-nez v5, :cond_1a

    move/from16 v5, p12

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_19

    const/16 v17, 0x100

    :cond_19
    or-int v26, v26, v17

    goto :goto_f

    :cond_1a
    move/from16 v5, p12

    :goto_f
    and-int/lit16 v5, v6, 0xc00

    if-nez v5, :cond_1c

    move-object/from16 v5, p13

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    const/16 v19, 0x800

    :cond_1b
    or-int v26, v26, v19

    goto :goto_10

    :cond_1c
    move-object/from16 v5, p13

    :goto_10
    and-int/lit16 v5, v6, 0x6000

    if-nez v5, :cond_1e

    move-object/from16 v5, p14

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1d

    move/from16 v21, v22

    :cond_1d
    or-int v26, v26, v21

    :goto_11
    move/from16 v5, v26

    goto :goto_12

    :cond_1e
    move-object/from16 v5, p14

    goto :goto_11

    :goto_12
    const v16, 0x12492493

    and-int v6, v12, v16

    const v7, 0x12492492

    const/4 v9, 0x1

    if-ne v6, v7, :cond_20

    and-int/lit16 v6, v5, 0x2493

    const/16 v7, 0x2492

    if-eq v6, v7, :cond_1f

    goto :goto_13

    :cond_1f
    const/4 v6, 0x0

    goto :goto_14

    :cond_20
    :goto_13
    move v6, v9

    :goto_14
    and-int/lit8 v7, v12, 0x1

    invoke-interface {v8, v6, v7}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_21

    const-string v6, "androidx.compose.material3.ModalWideNavigationRailContent (WideNavigationRail.kt:988)"

    const v7, -0x5ef9ef35

    invoke-static {v7, v12, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_21
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v5, v6, :cond_22

    move v6, v9

    goto :goto_15

    :cond_22
    const/4 v6, 0x0

    :goto_15
    sget-object v5, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    sget v5, Landroidx/compose/material3/R$string;->m3c_wide_navigation_rail_pane_title:I

    invoke-static {v5}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v5

    const/4 v7, 0x0

    invoke-static {v5, v8, v7}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x20

    invoke-virtual {v13}, Landroidx/compose/material3/WideNavigationRailColors;->getModalContainerColor-0d7_KjU()J

    move-result-wide v18

    const/16 v16, 0x100

    invoke-virtual {v13}, Landroidx/compose/material3/WideNavigationRailColors;->getModalContentColor-0d7_KjU()J

    move-result-wide v20

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-static {v1, v7, v15, v9, v10}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-static {v11, v7, v9, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxHeight$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v11, :cond_23

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v9, v11, :cond_24

    :cond_23
    new-instance v9, Lun;

    const/4 v11, 0x4

    invoke-direct {v9, v5, v11}, Lun;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_24
    check-cast v9, Lnl3;

    const/4 v5, 0x0

    const/4 v11, 0x1

    invoke-static {v7, v5, v9, v11, v10}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLnl3;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    and-int/lit16 v9, v12, 0x380

    move/from16 v5, v16

    if-eq v9, v5, :cond_26

    and-int/lit16 v5, v12, 0x200

    if-eqz v5, :cond_25

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_16

    :cond_25
    const/4 v5, 0x0

    goto :goto_17

    :cond_26
    :goto_16
    move v5, v11

    :goto_17
    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v5, v9

    and-int/lit16 v9, v12, 0x1c00

    const/16 v11, 0x800

    if-ne v9, v11, :cond_27

    const/4 v9, 0x1

    goto :goto_18

    :cond_27
    const/4 v9, 0x0

    :goto_18
    or-int/2addr v5, v9

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v9

    or-int/2addr v5, v9

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_28

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v9, v5, :cond_29

    :cond_28
    new-instance v9, Lbi9;

    invoke-direct {v9, v3, v14, v4, v6}, Lbi9;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/material3/RailPredictiveBackState;Z)V

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_29
    check-cast v9, Lnl3;

    invoke-static {v7, v9}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-virtual {v14}, Landroidx/compose/material3/ModalWideNavigationRailState;->getAnchoredDraggableState$material3()Landroidx/compose/material3/internal/AnchoredDraggableState;

    move-result-object v7

    sget-object v9, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    and-int/lit8 v11, v12, 0x70

    const/16 v10, 0x20

    if-ne v11, v10, :cond_2a

    const/4 v10, 0x1

    goto :goto_19

    :cond_2a
    const/4 v10, 0x0

    :goto_19
    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v11

    or-int/2addr v10, v11

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_2b

    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v11, v10, :cond_2c

    :cond_2b
    new-instance v11, Lth9;

    invoke-direct {v11, v2, v6, v14}, Lth9;-><init>(ZZLandroidx/compose/material3/ModalWideNavigationRailState;)V

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2c
    check-cast v11, Lbm3;

    invoke-static {v5, v7, v9, v11}, Landroidx/compose/material3/internal/AnchoredDraggableKt;->draggableAnchors(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;Lbm3;)Landroidx/compose/ui/Modifier;

    move-result-object v28

    invoke-virtual {v14}, Landroidx/compose/material3/ModalWideNavigationRailState;->getAnchoredDraggableState$material3()Landroidx/compose/material3/internal/AnchoredDraggableState;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getDraggableState$material3()Landroidx/compose/foundation/gestures/DraggableState;

    move-result-object v29

    invoke-virtual {v14}, Landroidx/compose/material3/ModalWideNavigationRailState;->getAnchoredDraggableState$material3()Landroidx/compose/material3/internal/AnchoredDraggableState;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material3/internal/AnchoredDraggableState;->isAnimationRunning()Z

    move-result v33

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_2d

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v7, v5, :cond_2e

    :cond_2d
    new-instance v7, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$4$1;

    const/4 v5, 0x0

    invoke-direct {v7, v0, v5}, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$4$1;-><init>(Lbm3;Le02;)V

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2e
    move-object/from16 v35, v7

    check-cast v35, Ldm3;

    const/16 v37, 0xa8

    const/16 v38, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    move/from16 v31, p12

    move-object/from16 v30, v9

    invoke-static/range {v28 .. v38}, Landroidx/compose/foundation/gestures/DraggableKt;->draggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLdm3;Ldm3;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    new-instance v3, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$5;

    move/from16 v7, p0

    move-object/from16 v9, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object v5, v4

    move-object v0, v8

    move/from16 v17, v12

    move-object v8, v13

    const/4 v1, 0x1

    move-object/from16 v4, p2

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    invoke-direct/range {v3 .. v13}, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$5;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/RailPredictiveBackState;ZZLandroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;)V

    const/16 v4, 0x36

    const v5, -0x3e37a9da

    invoke-static {v5, v1, v3, v0, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v25

    shr-int/lit8 v1, v17, 0x15

    and-int/lit8 v1, v1, 0x70

    or-int v27, v1, v23

    const/16 v28, 0x70

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, p8

    move-object/from16 v26, v0

    invoke-static/range {v16 .. v28}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lbm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1a

    :cond_2f
    move-object v0, v8

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_30
    :goto_1a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_31

    move-object v1, v0

    new-instance v0, Luh9;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v39, v1

    move-object v7, v14

    move v10, v15

    move/from16 v1, p0

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v17}, Luh9;-><init>(ZZLandroidx/compose/animation/core/Animatable;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;FLbm3;Landroidx/compose/foundation/layout/WindowInsets;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;II)V

    move-object/from16 v1, v39

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_31
    return-void
.end method

.method private static final ModalWideNavigationRailContent_pU6N4AM$lambda$18$lambda$17(Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 0

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setPaneTitle(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalWideNavigationRailContent_pU6N4AM$lambda$20$lambda$19(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/material3/RailPredictiveBackState;ZLandroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/material3/ModalWideNavigationRailState;->getCurrentOffset()F

    move-result p1

    invoke-interface {p4}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->getSize-NH-jbRc()J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_3

    cmpg-float p1, v1, v0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/material3/RailPredictiveBackState;->getSwipeEdgeMatchesRail()Z

    move-result p1

    invoke-static {p4, p0, p1}, Landroidx/compose/material3/WideNavigationRailKt;->calculatePredictiveBackScaleX(Landroidx/compose/ui/graphics/GraphicsLayerScope;FZ)F

    move-result p1

    invoke-interface {p4, p1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setScaleX(F)V

    invoke-static {p4, p0}, Landroidx/compose/material3/WideNavigationRailKt;->calculatePredictiveBackScaleY(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)F

    move-result p0

    invoke-interface {p4, p0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setScaleY(F)V

    if-eqz p3, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    const/high16 p0, 0x3f000000    # 0.5f

    invoke-static {v0, p0}, Landroidx/compose/ui/graphics/TransformOriginKt;->TransformOrigin(FF)J

    move-result-wide p0

    invoke-interface {p4, p0, p1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    :cond_3
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalWideNavigationRailContent_pU6N4AM$lambda$23$lambda$22(ZZLandroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/ui/unit/IntSize;Landroidx/compose/ui/unit/Constraints;)Lb36;
    .locals 1

    invoke-virtual {p3}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide p3

    const/16 v0, 0x20

    shr-long/2addr p3, v0

    long-to-int p3, p3

    int-to-float p3, p3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    neg-float p3, p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    new-instance p0, Lxh9;

    invoke-direct {p0, p3}, Lxh9;-><init>(F)V

    invoke-static {p0}, Landroidx/compose/material3/internal/AnchoredDraggableKt;->DraggableAnchors(Lnl3;)Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/compose/material3/ModalWideNavigationRailState;->getTargetValue()Landroidx/compose/material3/WideNavigationRailValue;

    move-result-object p1

    new-instance p2, Lb36;

    invoke-direct {p2, p0, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method private static final ModalWideNavigationRailContent_pU6N4AM$lambda$23$lambda$22$lambda$21(FFLandroidx/compose/material3/internal/DraggableAnchorsConfig;)Lj59;
    .locals 1

    sget-object v0, Landroidx/compose/material3/WideNavigationRailValue;->Collapsed:Landroidx/compose/material3/WideNavigationRailValue;

    invoke-virtual {p2, v0, p0}, Landroidx/compose/material3/internal/DraggableAnchorsConfig;->at(Ljava/lang/Object;F)V

    sget-object p0, Landroidx/compose/material3/WideNavigationRailValue;->Expanded:Landroidx/compose/material3/WideNavigationRailValue;

    invoke-virtual {p2, p0, p1}, Landroidx/compose/material3/internal/DraggableAnchorsConfig;->at(Ljava/lang/Object;F)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalWideNavigationRailContent_pU6N4AM$lambda$25(ZZLandroidx/compose/animation/core/Animatable;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;FLbm3;Landroidx/compose/foundation/layout/WindowInsets;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 19

    or-int/lit8 v0, p15, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v17

    invoke-static/range {p16 .. p16}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v18

    move/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p17

    invoke-static/range {v1 .. v18}, Landroidx/compose/material3/WideNavigationRailKt;->ModalWideNavigationRailContent-pU6N4AM(ZZLandroidx/compose/animation/core/Animatable;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;FLbm3;Landroidx/compose/foundation/layout/WindowInsets;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final ModalWideNavigationRail_k3FuEkE$lambda$14(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lbm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 17

    or-int/lit8 v0, p12, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    invoke-static/range {p13 .. p13}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v16, p14

    move-object/from16 v13, p15

    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/WideNavigationRailKt;->ModalWideNavigationRail-k3FuEkE(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lbm3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final Scrim-3J-VO9M(JLnl3;ZLandroidx/compose/runtime/Composer;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lnl3<",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;Z",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-wide/from16 v2, p0

    move-object/from16 v5, p2

    move/from16 v4, p3

    move/from16 v1, p5

    const v0, 0x89fdfdd

    move-object/from16 v6, p4

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    and-int/lit8 v6, v1, 0x6

    const/4 v14, 0x2

    if-nez v6, :cond_1

    invoke-interface {v11, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    move v6, v14

    :goto_0
    or-int/2addr v6, v1

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    and-int/lit8 v7, v1, 0x30

    if-nez v7, :cond_3

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v6, v7

    :cond_3
    and-int/lit16 v7, v1, 0x180

    if-nez v7, :cond_5

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v6, v7

    :cond_5
    and-int/lit16 v7, v6, 0x93

    const/16 v8, 0x92

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v7, v8, :cond_6

    move v7, v10

    goto :goto_4

    :cond_6
    move v7, v9

    :goto_4
    and-int/lit8 v8, v6, 0x1

    invoke-interface {v11, v7, v8}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, -0x1

    const-string v8, "androidx.compose.material3.Scrim (WideNavigationRail.kt:1102)"

    invoke-static {v0, v6, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_7
    const-wide/16 v7, 0x10

    cmp-long v0, v2, v7

    if-eqz v0, :cond_13

    const v0, -0x5b394e73

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-eqz v4, :cond_8

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    sget-object v8, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    const/4 v12, 0x6

    invoke-static {v8, v11, v12}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v8

    const/4 v12, 0x0

    const/16 v13, 0x1c

    move/from16 v16, v6

    move v6, v7

    move-object v7, v8

    const/4 v8, 0x0

    move/from16 v17, v9

    const/4 v9, 0x0

    move/from16 v18, v10

    const/4 v10, 0x0

    move/from16 v15, v17

    move/from16 v0, v18

    invoke-static/range {v6 .. v13}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lnl3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v6

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v7, v9, :cond_9

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7, v10, v14, v10}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    check-cast v7, Landroidx/compose/runtime/MutableState;

    sget-object v9, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    sget v9, Landroidx/compose/material3/R$string;->m3c_wide_navigation_rail_close_rail:I

    invoke-static {v9}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v9

    invoke-static {v9, v11, v15}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v4, :cond_d

    const v12, -0x5b32abbf

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget-object v12, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v13, v14, :cond_a

    new-instance v13, Landroidx/compose/material3/WideNavigationRailKt$Scrim$dismissModalRail$1$1;

    invoke-direct {v13, v7}, Landroidx/compose/material3/WideNavigationRailKt$Scrim$dismissModalRail$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v12, v5, v13}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_b

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v15, v14, :cond_c

    :cond_b
    new-instance v15, Lia2;

    invoke-direct {v15, v0, v9, v7}, Lia2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    check-cast v15, Lnl3;

    invoke-static {v13, v0, v15}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLnl3;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_6
    const/4 v13, 0x0

    goto :goto_7

    :cond_d
    const v9, -0x5b2cdf23

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v12, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v9, v12

    goto :goto_6

    :goto_7
    invoke-static {v12, v13, v0, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-interface {v12, v9}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    and-int/lit8 v12, v16, 0xe

    const/4 v13, 0x4

    if-ne v12, v13, :cond_e

    goto :goto_8

    :cond_e
    const/4 v0, 0x0

    :goto_8
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v0, v12

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v0, :cond_f

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v12, v0, :cond_10

    :cond_f
    new-instance v12, Lvh9;

    invoke-direct {v12, v2, v3, v6}, Lvh9;-><init>(JLandroidx/compose/runtime/State;)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_10
    check-cast v12, Lnl3;

    const/4 v15, 0x0

    invoke-static {v9, v12, v11, v15}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lnl3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v7}, Landroidx/compose/material3/WideNavigationRailKt;->Scrim_3J_VO9M$lambda$28(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_11

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v9, v6, :cond_12

    :cond_11
    new-instance v9, Landroidx/compose/material3/WideNavigationRailKt$Scrim$2$1;

    invoke-direct {v9, v5, v7, v10}, Landroidx/compose/material3/WideNavigationRailKt$Scrim$2$1;-><init>(Lnl3;Landroidx/compose/runtime/MutableState;Le02;)V

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_12
    check-cast v9, Lbm3;

    const/4 v15, 0x0

    invoke-static {v0, v9, v11, v15}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_9

    :cond_13
    const v0, -0x5b29001b

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_a

    :cond_14
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_15
    :goto_a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_16

    new-instance v0, Lwh9;

    invoke-direct/range {v0 .. v5}, Lwh9;-><init>(IJZLnl3;)V

    invoke-interface {v6, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_16
    return-void
.end method

.method private static final Scrim_3J_VO9M$lambda$26(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static final Scrim_3J_VO9M$lambda$28(Landroidx/compose/runtime/MutableState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final Scrim_3J_VO9M$lambda$29(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final Scrim_3J_VO9M$lambda$33$lambda$32(Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 1

    invoke-static {p2, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    new-instance p0, Lgf;

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lgf;-><init>(Ljava/lang/Object;I)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p2, v0, p0, p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->onClick$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lll3;ILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Scrim_3J_VO9M$lambda$33$lambda$32$lambda$31(Landroidx/compose/runtime/MutableState;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/compose/material3/WideNavigationRailKt;->Scrim_3J_VO9M$lambda$29(Landroidx/compose/runtime/MutableState;Z)V

    return v0
.end method

.method private static final Scrim_3J_VO9M$lambda$35$lambda$34(JLandroidx/compose/runtime/State;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 16

    invoke-static/range {p2 .. p2}, Landroidx/compose/material3/WideNavigationRailKt;->Scrim_3J_VO9M$lambda$26(Landroidx/compose/runtime/State;)F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lkx6;->d(FFF)F

    move-result v10

    const/16 v14, 0x76

    const/4 v15, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v4, p0

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final Scrim_3J_VO9M$lambda$37(JLnl3;ZILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 6

    or-int/lit8 p4, p4, 0x1

    invoke-static {p4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/WideNavigationRailKt;->Scrim-3J-VO9M(JLnl3;ZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final WideNavigationRail(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/WideNavigationRailState;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/WideNavigationRailColors;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
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

    move-object/from16 v0, p1

    move/from16 v9, p9

    move/from16 v10, p10

    const v1, 0x9c963a4

    move-object/from16 v2, p8

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    and-int/lit8 v3, v10, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v4, v9, 0x6

    move v5, v4

    move-object/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v9, 0x6

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v9

    goto :goto_1

    :cond_2
    move-object/from16 v4, p0

    move v5, v9

    :goto_1
    and-int/lit8 v6, v9, 0x30

    if-nez v6, :cond_5

    and-int/lit8 v6, v10, 0x2

    if-nez v6, :cond_4

    and-int/lit8 v6, v9, 0x40

    if-nez v6, :cond_3

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    :cond_3
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    :goto_2
    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_3

    :cond_4
    const/16 v6, 0x10

    :goto_3
    or-int/2addr v5, v6

    :cond_5
    and-int/lit16 v6, v9, 0x180

    if-nez v6, :cond_8

    and-int/lit8 v6, v10, 0x4

    if-nez v6, :cond_6

    move-object/from16 v6, p2

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v6, p2

    :cond_7
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v5, v7

    goto :goto_5

    :cond_8
    move-object/from16 v6, p2

    :goto_5
    and-int/lit16 v7, v9, 0xc00

    if-nez v7, :cond_b

    and-int/lit8 v7, v10, 0x8

    if-nez v7, :cond_9

    move-object/from16 v7, p3

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v7, p3

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v5, v8

    goto :goto_7

    :cond_b
    move-object/from16 v7, p3

    :goto_7
    and-int/lit8 v8, v10, 0x10

    if-eqz v8, :cond_d

    or-int/lit16 v5, v5, 0x6000

    :cond_c
    move-object/from16 v11, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v11, v9, 0x6000

    if-nez v11, :cond_c

    move-object/from16 v11, p4

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/16 v12, 0x4000

    goto :goto_8

    :cond_e
    const/16 v12, 0x2000

    :goto_8
    or-int/2addr v5, v12

    :goto_9
    const/high16 v12, 0x30000

    and-int/2addr v12, v9

    if-nez v12, :cond_11

    and-int/lit8 v12, v10, 0x20

    if-nez v12, :cond_f

    move-object/from16 v12, p5

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/high16 v13, 0x20000

    goto :goto_a

    :cond_f
    move-object/from16 v12, p5

    :cond_10
    const/high16 v13, 0x10000

    :goto_a
    or-int/2addr v5, v13

    goto :goto_b

    :cond_11
    move-object/from16 v12, p5

    :goto_b
    const/high16 v13, 0x180000

    and-int/2addr v13, v9

    if-nez v13, :cond_14

    and-int/lit8 v13, v10, 0x40

    if-nez v13, :cond_12

    move-object/from16 v13, p6

    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    const/high16 v14, 0x100000

    goto :goto_c

    :cond_12
    move-object/from16 v13, p6

    :cond_13
    const/high16 v14, 0x80000

    :goto_c
    or-int/2addr v5, v14

    goto :goto_d

    :cond_14
    move-object/from16 v13, p6

    :goto_d
    and-int/lit16 v14, v10, 0x80

    const/high16 v15, 0xc00000

    if-eqz v14, :cond_16

    or-int/2addr v5, v15

    :cond_15
    move-object/from16 v14, p7

    goto :goto_f

    :cond_16
    and-int v14, v9, v15

    if-nez v14, :cond_15

    move-object/from16 v14, p7

    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    const/high16 v15, 0x800000

    goto :goto_e

    :cond_17
    const/high16 v15, 0x400000

    :goto_e
    or-int/2addr v5, v15

    :goto_f
    const v15, 0x492493

    and-int/2addr v15, v5

    const v1, 0x492492

    const/4 v0, 0x1

    if-eq v15, v1, :cond_18

    move v1, v0

    goto :goto_10

    :cond_18
    const/4 v1, 0x0

    :goto_10
    and-int/lit8 v15, v5, 0x1

    invoke-interface {v2, v1, v15}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, v9, 0x1

    const v15, -0x380001

    const v17, -0x70001

    if-eqz v1, :cond_1f

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_12

    :cond_19
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v10, 0x2

    if-eqz v0, :cond_1a

    and-int/lit8 v5, v5, -0x71

    :cond_1a
    and-int/lit8 v0, v10, 0x4

    if-eqz v0, :cond_1b

    and-int/lit16 v5, v5, -0x381

    :cond_1b
    and-int/lit8 v0, v10, 0x8

    if-eqz v0, :cond_1c

    and-int/lit16 v5, v5, -0x1c01

    :cond_1c
    and-int/lit8 v0, v10, 0x20

    if-eqz v0, :cond_1d

    and-int v5, v5, v17

    :cond_1d
    and-int/lit8 v0, v10, 0x40

    if-eqz v0, :cond_1e

    and-int/2addr v5, v15

    :cond_1e
    move-object/from16 v17, p1

    move-object v1, v4

    :goto_11
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    goto/16 :goto_15

    :cond_1f
    :goto_12
    if-eqz v3, :cond_20

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_13

    :cond_20
    move-object v1, v4

    :goto_13
    and-int/lit8 v3, v10, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_21

    const/4 v3, 0x0

    invoke-static {v4, v2, v3, v0}, Landroidx/compose/material3/WideNavigationRailStateKt;->rememberWideNavigationRailState(Landroidx/compose/material3/WideNavigationRailValue;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/WideNavigationRailState;

    move-result-object v0

    and-int/lit8 v5, v5, -0x71

    goto :goto_14

    :cond_21
    move-object/from16 v0, p1

    :goto_14
    and-int/lit8 v3, v10, 0x4

    const/4 v4, 0x6

    if-eqz v3, :cond_22

    sget-object v3, Landroidx/compose/material3/WideNavigationRailDefaults;->INSTANCE:Landroidx/compose/material3/WideNavigationRailDefaults;

    invoke-virtual {v3, v2, v4}, Landroidx/compose/material3/WideNavigationRailDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v3

    and-int/lit16 v5, v5, -0x381

    move-object v6, v3

    :cond_22
    and-int/lit8 v3, v10, 0x8

    if-eqz v3, :cond_23

    sget-object v3, Landroidx/compose/material3/WideNavigationRailDefaults;->INSTANCE:Landroidx/compose/material3/WideNavigationRailDefaults;

    invoke-virtual {v3, v2, v4}, Landroidx/compose/material3/WideNavigationRailDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/WideNavigationRailColors;

    move-result-object v3

    and-int/lit16 v5, v5, -0x1c01

    move-object v7, v3

    :cond_23
    if-eqz v8, :cond_24

    const/4 v11, 0x0

    :cond_24
    and-int/lit8 v3, v10, 0x20

    if-eqz v3, :cond_25

    sget-object v3, Landroidx/compose/material3/WideNavigationRailDefaults;->INSTANCE:Landroidx/compose/material3/WideNavigationRailDefaults;

    invoke-virtual {v3, v2, v4}, Landroidx/compose/material3/WideNavigationRailDefaults;->getWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v3

    and-int v4, v5, v17

    move-object v12, v3

    move v5, v4

    :cond_25
    and-int/lit8 v3, v10, 0x40

    if-eqz v3, :cond_26

    sget-object v3, Landroidx/compose/material3/WideNavigationRailDefaults;->INSTANCE:Landroidx/compose/material3/WideNavigationRailDefaults;

    invoke-virtual {v3}, Landroidx/compose/material3/WideNavigationRailDefaults;->getArrangement()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v3

    and-int/2addr v5, v15

    move-object/from16 v17, v0

    move-object/from16 v22, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    goto :goto_15

    :cond_26
    move-object/from16 v17, v0

    goto :goto_11

    :goto_15
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, -0x1

    const-string v3, "androidx.compose.material3.WideNavigationRail (WideNavigationRail.kt:169)"

    const v4, 0x9c963a4

    invoke-static {v4, v5, v0, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_27
    sget-object v0, Landroidx/compose/material3/WideNavigationRailKt;->LocalWideNavigationRailOverride:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/WideNavigationRailOverride;

    new-instance v15, Landroidx/compose/material3/WideNavigationRailOverrideScope;

    move-object/from16 v16, v1

    move-object/from16 v23, v14

    invoke-direct/range {v15 .. v23}, Landroidx/compose/material3/WideNavigationRailOverrideScope;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;)V

    const/4 v3, 0x0

    invoke-interface {v0, v15, v2, v3}, Landroidx/compose/material3/WideNavigationRailOverride;->WideNavigationRail(Landroidx/compose/material3/WideNavigationRailOverrideScope;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_28
    move-object v0, v2

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    goto :goto_16

    :cond_29
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v0, v2

    move-object v1, v4

    move-object v3, v6

    move-object v4, v7

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v2, p1

    :goto_16
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_2a

    new-instance v0, Lai9;

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Lai9;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;II)V

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_2a
    return-void
.end method

.method private static final WideNavigationRail$lambda$1(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 12

    or-int/lit8 v0, p8, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v11, p9

    move-object/from16 v9, p10

    invoke-static/range {v1 .. v11}, Landroidx/compose/material3/WideNavigationRailKt;->WideNavigationRail(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final WideNavigationRailItem-pli-t6k(ZLll3;Lbm3;Lbm3;ZLandroidx/compose/ui/Modifier;ZILandroidx/compose/material3/NavigationItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lll3<",
            "Lj59;",
            ">;",
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
            ">;Z",
            "Landroidx/compose/ui/Modifier;",
            "ZI",
            "Landroidx/compose/material3/NavigationItemColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move/from16 v5, p4

    move/from16 v11, p11

    move/from16 v12, p12

    const v0, -0x70ef55f8

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v11, 0x6

    move/from16 v13, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v11, 0x6

    move/from16 v13, p0

    if-nez v2, :cond_2

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v11

    goto :goto_1

    :cond_2
    move v2, v11

    :goto_1
    and-int/lit8 v3, v12, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v14, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v11, 0x30

    move-object/from16 v14, p1

    if-nez v3, :cond_5

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v12, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v2, v2, 0x180

    :cond_6
    move-object/from16 v3, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v3, v11, 0x180

    if-nez v3, :cond_6

    move-object/from16 v3, p2

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x100

    goto :goto_4

    :cond_8
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v2, v4

    :goto_5
    and-int/lit8 v4, v12, 0x8

    if-eqz v4, :cond_a

    or-int/lit16 v2, v2, 0xc00

    :cond_9
    move-object/from16 v4, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v4, v11, 0xc00

    if-nez v4, :cond_9

    move-object/from16 v4, p3

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v6, 0x800

    goto :goto_6

    :cond_b
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v2, v6

    :goto_7
    and-int/lit8 v6, v12, 0x10

    if-eqz v6, :cond_c

    or-int/lit16 v2, v2, 0x6000

    goto :goto_9

    :cond_c
    and-int/lit16 v6, v11, 0x6000

    if-nez v6, :cond_e

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v6, 0x4000

    goto :goto_8

    :cond_d
    const/16 v6, 0x2000

    :goto_8
    or-int/2addr v2, v6

    :cond_e
    :goto_9
    and-int/lit8 v6, v12, 0x20

    const/high16 v7, 0x30000

    if-eqz v6, :cond_10

    or-int/2addr v2, v7

    :cond_f
    move-object/from16 v7, p5

    goto :goto_b

    :cond_10
    and-int/2addr v7, v11

    if-nez v7, :cond_f

    move-object/from16 v7, p5

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const/high16 v8, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v8, 0x10000

    :goto_a
    or-int/2addr v2, v8

    :goto_b
    and-int/lit8 v8, v12, 0x40

    const/high16 v9, 0x180000

    if-eqz v8, :cond_13

    or-int/2addr v2, v9

    :cond_12
    move/from16 v9, p6

    goto :goto_d

    :cond_13
    and-int/2addr v9, v11

    if-nez v9, :cond_12

    move/from16 v9, p6

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v10

    if-eqz v10, :cond_14

    const/high16 v10, 0x100000

    goto :goto_c

    :cond_14
    const/high16 v10, 0x80000

    :goto_c
    or-int/2addr v2, v10

    :goto_d
    const/high16 v10, 0xc00000

    and-int/2addr v10, v11

    if-nez v10, :cond_17

    and-int/lit16 v10, v12, 0x80

    if-nez v10, :cond_15

    move/from16 v10, p7

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v15

    if-eqz v15, :cond_16

    const/high16 v15, 0x800000

    goto :goto_e

    :cond_15
    move/from16 v10, p7

    :cond_16
    const/high16 v15, 0x400000

    :goto_e
    or-int/2addr v2, v15

    goto :goto_f

    :cond_17
    move/from16 v10, p7

    :goto_f
    const/high16 v15, 0x6000000

    and-int/2addr v15, v11

    if-nez v15, :cond_1a

    and-int/lit16 v15, v12, 0x100

    if-nez v15, :cond_18

    move-object/from16 v15, p8

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    const/high16 v16, 0x4000000

    goto :goto_10

    :cond_18
    move-object/from16 v15, p8

    :cond_19
    const/high16 v16, 0x2000000

    :goto_10
    or-int v2, v2, v16

    goto :goto_11

    :cond_1a
    move-object/from16 v15, p8

    :goto_11
    and-int/lit16 v0, v12, 0x200

    const/high16 v17, 0x30000000

    if-eqz v0, :cond_1c

    or-int v2, v2, v17

    :cond_1b
    move/from16 v17, v0

    move-object/from16 v0, p9

    goto :goto_13

    :cond_1c
    and-int v17, v11, v17

    if-nez v17, :cond_1b

    move/from16 v17, v0

    move-object/from16 v0, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d

    const/high16 v18, 0x20000000

    goto :goto_12

    :cond_1d
    const/high16 v18, 0x10000000

    :goto_12
    or-int v2, v2, v18

    :goto_13
    const v18, 0x12492493

    and-int v0, v2, v18

    move/from16 p10, v2

    const v2, 0x12492492

    const/16 v18, 0x1

    if-eq v0, v2, :cond_1e

    move/from16 v0, v18

    goto :goto_14

    :cond_1e
    const/4 v0, 0x0

    :goto_14
    and-int/lit8 v2, p10, 0x1

    invoke-interface {v1, v0, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v11, 0x1

    const v19, -0x1c00001

    const v20, -0xe000001

    const/4 v2, 0x6

    if-eqz v0, :cond_22

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_17

    :cond_1f
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_20

    and-int v0, p10, v19

    goto :goto_15

    :cond_20
    move/from16 v0, p10

    :goto_15
    and-int/lit16 v6, v12, 0x100

    if-eqz v6, :cond_21

    and-int v0, v0, v20

    :cond_21
    move-object/from16 v6, p9

    :goto_16
    move-object/from16 v29, v7

    move/from16 v30, v9

    move/from16 v32, v10

    move-object/from16 v28, v15

    goto :goto_19

    :cond_22
    :goto_17
    if-eqz v6, :cond_23

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v7, v0

    :cond_23
    if-eqz v8, :cond_24

    move/from16 v9, v18

    :cond_24
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_25

    sget-object v0, Landroidx/compose/material3/WideNavigationRailItemDefaults;->INSTANCE:Landroidx/compose/material3/WideNavigationRailItemDefaults;

    invoke-virtual {v0, v5}, Landroidx/compose/material3/WideNavigationRailItemDefaults;->iconPositionFor-s8pcRp0(Z)I

    move-result v0

    and-int v6, p10, v19

    move v10, v0

    goto :goto_18

    :cond_25
    move/from16 v6, p10

    :goto_18
    and-int/lit16 v0, v12, 0x100

    if-eqz v0, :cond_26

    sget-object v0, Landroidx/compose/material3/WideNavigationRailItemDefaults;->INSTANCE:Landroidx/compose/material3/WideNavigationRailItemDefaults;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/material3/WideNavigationRailItemDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/NavigationItemColors;

    move-result-object v0

    and-int v6, v6, v20

    move-object v15, v0

    :cond_26
    move v0, v6

    if-eqz v17, :cond_21

    const/4 v6, 0x0

    goto :goto_16

    :goto_19
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_27

    const/4 v7, -0x1

    const-string v8, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)"

    const v9, -0x70ef55f8

    invoke-static {v9, v0, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_27
    if-nez v6, :cond_29

    const v7, -0x5bbc638d

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_28

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v7

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_28
    check-cast v7, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 v33, v7

    goto :goto_1a

    :cond_29
    const v7, 0xd8e8ee4

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 v33, v6

    :goto_1a
    sget-object v7, Landroidx/compose/material3/tokens/NavigationRailBaselineItemTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailBaselineItemTokens;

    invoke-virtual {v7}, Landroidx/compose/material3/tokens/NavigationRailBaselineItemTokens;->getActiveIndicatorShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object v7

    invoke-static {v7, v1, v2}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v16

    sget-object v7, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;

    invoke-virtual {v7}, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->getActiveIndicatorWidth-D9Ej5fM()F

    move-result v17

    invoke-virtual {v7}, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->getLabelTextFont()Landroidx/compose/material3/tokens/TypographyKeyTokens;

    move-result-object v8

    invoke-static {v8, v1, v2}, Landroidx/compose/material3/TypographyKt;->getValue(Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v18

    sget-object v8, Landroidx/compose/material3/tokens/NavigationRailHorizontalItemTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailHorizontalItemTokens;

    invoke-virtual {v8}, Landroidx/compose/material3/tokens/NavigationRailHorizontalItemTokens;->getLabelTextFont()Landroidx/compose/material3/tokens/TypographyKeyTokens;

    move-result-object v9

    invoke-static {v9, v1, v2}, Landroidx/compose/material3/TypographyKt;->getValue(Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v19

    sget v20, Landroidx/compose/material3/WideNavigationRailKt;->ItemTopIconIndicatorHorizontalPadding:F

    sget v21, Landroidx/compose/material3/WideNavigationRailKt;->ItemTopIconIndicatorVerticalPadding:F

    invoke-virtual {v7}, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->getIconLabelSpace-D9Ej5fM()F

    move-result v22

    invoke-virtual {v8}, Landroidx/compose/material3/tokens/NavigationRailHorizontalItemTokens;->getFullWidthLeadingSpace-D9Ej5fM()F

    move-result v23

    sget v24, Landroidx/compose/material3/WideNavigationRailKt;->ItemStartIconIndicatorVerticalPadding:F

    sget v25, Landroidx/compose/material3/WideNavigationRailKt;->WNRItemNoLabelIndicatorPadding:F

    invoke-virtual {v8}, Landroidx/compose/material3/tokens/NavigationRailHorizontalItemTokens;->getIconLabelSpace-D9Ej5fM()F

    move-result v26

    sget v27, Landroidx/compose/material3/WideNavigationRailKt;->ItemHorizontalPadding:F

    and-int/lit8 v7, v0, 0xe

    const v8, 0x36c06000

    or-int/2addr v7, v8

    and-int/lit8 v8, v0, 0x70

    or-int/2addr v7, v8

    and-int/lit16 v8, v0, 0x380

    or-int v35, v7, v8

    shr-int/lit8 v7, v0, 0x9

    const/high16 v8, 0x70000

    and-int/2addr v7, v8

    or-int/lit16 v7, v7, 0x6db6

    shl-int/lit8 v8, v0, 0x3

    const/high16 v9, 0x380000

    and-int/2addr v9, v8

    or-int/2addr v7, v9

    const/high16 v9, 0x1c00000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    shl-int/lit8 v8, v0, 0xf

    const/high16 v9, 0xe000000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    const/high16 v8, 0x70000000

    shl-int/2addr v0, v2

    and-int/2addr v0, v8

    or-int v36, v7, v0

    const/16 v37, 0x0

    move-object/from16 v34, v1

    move-object v15, v3

    move-object/from16 v31, v4

    invoke-static/range {v13 .. v37}, Landroidx/compose/material3/NavigationItemKt;->AnimatedNavigationItem-DQd_Gtc(ZLll3;Lbm3;Landroidx/compose/ui/graphics/Shape;FLandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;FFFFFFFFLandroidx/compose/material3/NavigationItemColors;Landroidx/compose/ui/Modifier;ZLbm3;ILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2a
    move-object v10, v6

    move-object/from16 v9, v28

    move-object/from16 v6, v29

    move/from16 v7, v30

    move/from16 v8, v32

    goto :goto_1b

    :cond_2b
    move-object/from16 v34, v1

    invoke-interface/range {v34 .. v34}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v6, v7

    move v7, v9

    move v8, v10

    move-object v9, v15

    move-object/from16 v10, p9

    :goto_1b
    invoke-interface/range {v34 .. v34}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_2c

    new-instance v0, Lsh9;

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v12}, Lsh9;-><init>(ZLll3;Lbm3;Lbm3;ZLandroidx/compose/ui/Modifier;ZILandroidx/compose/material3/NavigationItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_2c
    return-void
.end method

.method private static final WideNavigationRailItem_pli_t6k$lambda$16(ZLll3;Lbm3;Lbm3;ZLandroidx/compose/ui/Modifier;ZILandroidx/compose/material3/NavigationItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 14

    or-int/lit8 v0, p10, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    move v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v13, p11

    move-object/from16 v11, p12

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/WideNavigationRailKt;->WideNavigationRailItem-pli-t6k(ZLll3;Lbm3;Lbm3;ZLandroidx/compose/ui/Modifier;ZILandroidx/compose/material3/NavigationItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final WideNavigationRailLayout(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;Landroidx/compose/runtime/Composer;I)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "ZZ",
            "Landroidx/compose/material3/WideNavigationRailColors;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move/from16 v2, p1

    move/from16 v6, p2

    move/from16 v0, p10

    const v1, -0x3bdc8644

    move-object/from16 v3, p9

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    and-int/lit8 v3, v0, 0x6

    if-nez v3, :cond_1

    move-object/from16 v3, p0

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p0

    move v4, v0

    :goto_1
    and-int/lit8 v5, v0, 0x30

    if-nez v5, :cond_3

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    :cond_3
    and-int/lit16 v5, v0, 0x180

    if-nez v5, :cond_5

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_3

    :cond_4
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v4, v5

    :cond_5
    and-int/lit16 v5, v0, 0xc00

    if-nez v5, :cond_7

    move-object/from16 v5, p3

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x800

    goto :goto_4

    :cond_6
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v4, v7

    goto :goto_5

    :cond_7
    move-object/from16 v5, p3

    :goto_5
    and-int/lit16 v7, v0, 0x6000

    move-object/from16 v14, p4

    if-nez v7, :cond_9

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x4000

    goto :goto_6

    :cond_8
    const/16 v7, 0x2000

    :goto_6
    or-int/2addr v4, v7

    :cond_9
    const/high16 v7, 0x30000

    and-int/2addr v7, v0

    move-object/from16 v15, p5

    if-nez v7, :cond_b

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/high16 v7, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v7, 0x10000

    :goto_7
    or-int/2addr v4, v7

    :cond_b
    const/high16 v7, 0x180000

    and-int/2addr v7, v0

    if-nez v7, :cond_d

    move-object/from16 v7, p6

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/high16 v8, 0x100000

    goto :goto_8

    :cond_c
    const/high16 v8, 0x80000

    :goto_8
    or-int/2addr v4, v8

    goto :goto_9

    :cond_d
    move-object/from16 v7, p6

    :goto_9
    const/high16 v16, 0xc00000

    and-int v8, v0, v16

    if-nez v8, :cond_f

    move-object/from16 v8, p7

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/high16 v9, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v9, 0x400000

    :goto_a
    or-int/2addr v4, v9

    goto :goto_b

    :cond_f
    move-object/from16 v8, p7

    :goto_b
    const/high16 v9, 0x6000000

    and-int/2addr v9, v0

    if-nez v9, :cond_11

    move-object/from16 v9, p8

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/high16 v10, 0x4000000

    goto :goto_c

    :cond_10
    const/high16 v10, 0x2000000

    :goto_c
    or-int/2addr v4, v10

    goto :goto_d

    :cond_11
    move-object/from16 v9, p8

    :goto_d
    const v10, 0x2492493

    and-int/2addr v10, v4

    const v12, 0x2492492

    const/4 v13, 0x0

    const/4 v9, 0x1

    if-eq v10, v12, :cond_12

    move v10, v9

    goto :goto_e

    :cond_12
    move v10, v13

    :goto_e
    and-int/lit8 v12, v4, 0x1

    invoke-interface {v11, v10, v12}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_13

    const/4 v10, -0x1

    const-string v12, "androidx.compose.material3.WideNavigationRailLayout (WideNavigationRail.kt:218)"

    invoke-static {v1, v4, v10, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_13
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v1, v12, :cond_14

    invoke-static {v13}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v1

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_14
    check-cast v1, Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v12, v10, :cond_15

    invoke-static {v13}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v12

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_15
    move-object/from16 v17, v12

    check-cast v17, Landroidx/compose/runtime/MutableIntState;

    invoke-static {}, Landroidx/compose/material3/InteractiveComponentSizeKt;->getLocalMinimumInteractiveComponentSize()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v10

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v10}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v10

    sget-object v12, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v12

    invoke-static {v10, v12}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v10

    const/16 v18, 0x0

    if-eqz v10, :cond_16

    const v10, -0x23a43d16

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    :goto_f
    move/from16 v19, v10

    goto :goto_10

    :cond_16
    const v10, -0x23a3b47e

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/material3/InteractiveComponentSizeKt;->getLocalMinimumInteractiveComponentSize()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v10

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v10}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v10

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_f

    :goto_10
    sget-object v10, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    const/4 v12, 0x6

    invoke-static {v10, v11, v12}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v20

    sget-object v10, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v10, v11, v12}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v21

    if-nez v6, :cond_17

    sget v10, Landroidx/compose/material3/WideNavigationRailKt;->CollapsedRailWidth:F

    goto :goto_11

    :cond_17
    sget v10, Landroidx/compose/material3/WideNavigationRailKt;->ExpandedRailMinWidth:F

    :goto_11
    if-nez v2, :cond_18

    move-object/from16 v8, v20

    goto :goto_12

    :cond_18
    move-object/from16 v8, v21

    :goto_12
    const/4 v12, 0x0

    const/16 v13, 0xc

    move/from16 v22, v9

    const/4 v9, 0x0

    move v7, v10

    const/4 v10, 0x0

    move/from16 v0, v22

    invoke-static/range {v7 .. v13}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateDpAsState-AjpBEmI(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lnl3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v22

    if-nez v6, :cond_19

    sget v7, Landroidx/compose/material3/WideNavigationRailKt;->CollapsedRailWidth:F

    goto :goto_13

    :cond_19
    sget v7, Landroidx/compose/material3/WideNavigationRailKt;->ExpandedRailMaxWidth:F

    :goto_13
    if-nez v2, :cond_1a

    move-object/from16 v8, v20

    goto :goto_14

    :cond_1a
    move-object/from16 v8, v21

    :goto_14
    const/4 v12, 0x0

    const/16 v13, 0xc

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v13}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateDpAsState-AjpBEmI(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lnl3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v21

    if-nez v6, :cond_1b

    sget-object v7, Landroidx/compose/material3/tokens/NavigationRailCollapsedTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailCollapsedTokens;

    invoke-virtual {v7}, Landroidx/compose/material3/tokens/NavigationRailCollapsedTokens;->getItemVerticalSpace-D9Ej5fM()F

    move-result v7

    goto :goto_15

    :cond_1b
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    :goto_15
    const/4 v12, 0x0

    const/16 v13, 0xc

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, v20

    invoke-static/range {v7 .. v13}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateDpAsState-AjpBEmI(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lnl3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v18

    if-nez v6, :cond_1c

    sget v7, Landroidx/compose/material3/WideNavigationRailKt;->TopIconItemMinHeight:F

    goto :goto_16

    :cond_1c
    move/from16 v7, v19

    :goto_16
    const/4 v12, 0x0

    const/16 v13, 0xc

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v13}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateDpAsState-AjpBEmI(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lnl3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v9

    if-nez v2, :cond_1d

    invoke-virtual {v5}, Landroidx/compose/material3/WideNavigationRailColors;->getContainerColor-0d7_KjU()J

    move-result-wide v7

    :goto_17
    move-wide/from16 v23, v7

    goto :goto_18

    :cond_1d
    invoke-virtual {v5}, Landroidx/compose/material3/WideNavigationRailColors;->getModalContainerColor-0d7_KjU()J

    move-result-wide v7

    goto :goto_17

    :goto_18
    if-nez v2, :cond_1e

    invoke-virtual {v5}, Landroidx/compose/material3/WideNavigationRailColors;->getContentColor-0d7_KjU()J

    move-result-wide v7

    :goto_19
    move-wide/from16 v25, v7

    goto :goto_1a

    :cond_1e
    invoke-virtual {v5}, Landroidx/compose/material3/WideNavigationRailColors;->getModalContentColor-0d7_KjU()J

    move-result-wide v7

    goto :goto_19

    :goto_1a
    new-instance v3, Landroidx/compose/material3/WideNavigationRailKt$WideNavigationRailLayout$1;

    move-object/from16 v13, p7

    move-object v12, v1

    move-object v1, v11

    move-object v5, v15

    move-object/from16 v11, v17

    move-object/from16 v14, v18

    move/from16 v8, v19

    move-object/from16 v10, v21

    move-object/from16 v7, v22

    move-object/from16 v15, p8

    move/from16 v17, v4

    move-object/from16 v4, p6

    invoke-direct/range {v3 .. v15}, Landroidx/compose/material3/WideNavigationRailKt$WideNavigationRailLayout$1;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Lbm3;ZLandroidx/compose/runtime/State;FLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/runtime/State;Lbm3;)V

    const/16 v4, 0x36

    const v5, -0x58c52229

    invoke-static {v5, v0, v3, v1, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v12

    and-int/lit8 v0, v17, 0xe

    or-int v0, v0, v16

    shr-int/lit8 v3, v17, 0x9

    and-int/lit8 v3, v3, 0x70

    or-int v14, v0, v3

    const/16 v15, 0x70

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move-object v13, v1

    move-wide/from16 v5, v23

    move-wide/from16 v7, v25

    invoke-static/range {v3 .. v15}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lbm3;Landroidx/compose/runtime/Composer;II)V

    move-object v11, v13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1b

    :cond_1f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_20
    :goto_1b
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_21

    new-instance v0, Lzh9;

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lzh9;-><init>(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;I)V

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_21
    return-void
.end method

.method private static final WideNavigationRailLayout$lambda$10(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;)F"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result p0

    return p0
.end method

.method private static final WideNavigationRailLayout$lambda$11(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;)F"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result p0

    return p0
.end method

.method private static final WideNavigationRailLayout$lambda$12(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 12

    or-int/lit8 v0, p9, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p10

    invoke-static/range {v1 .. v11}, Landroidx/compose/material3/WideNavigationRailKt;->WideNavigationRailLayout(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final WideNavigationRailLayout$lambda$3(Landroidx/compose/runtime/MutableIntState;)I
    .locals 0

    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method private static final WideNavigationRailLayout$lambda$4(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method private static final WideNavigationRailLayout$lambda$6(Landroidx/compose/runtime/MutableIntState;)I
    .locals 0

    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method private static final WideNavigationRailLayout$lambda$7(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method private static final WideNavigationRailLayout$lambda$8(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;)F"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result p0

    return p0
.end method

.method private static final WideNavigationRailLayout$lambda$9(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;)F"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/WideNavigationRailKt;->Scrim_3J_VO9M$lambda$33$lambda$32(Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ModalWideNavigationRailContent-pU6N4AM(ZZLandroidx/compose/animation/core/Animatable;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;FLbm3;Landroidx/compose/foundation/layout/WindowInsets;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    invoke-static/range {p0 .. p17}, Landroidx/compose/material3/WideNavigationRailKt;->ModalWideNavigationRailContent-pU6N4AM(ZZLandroidx/compose/animation/core/Animatable;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;FLbm3;Landroidx/compose/foundation/layout/WindowInsets;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static final synthetic access$Scrim-3J-VO9M(JLnl3;ZLandroidx/compose/runtime/Composer;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/WideNavigationRailKt;->Scrim-3J-VO9M(JLnl3;ZLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$Scrim_3J_VO9M$lambda$28(Landroidx/compose/runtime/MutableState;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/WideNavigationRailKt;->Scrim_3J_VO9M$lambda$28(Landroidx/compose/runtime/MutableState;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$Scrim_3J_VO9M$lambda$29(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/WideNavigationRailKt;->Scrim_3J_VO9M$lambda$29(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method

.method public static final synthetic access$WideNavigationRailLayout(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    invoke-static/range {p0 .. p10}, Landroidx/compose/material3/WideNavigationRailKt;->WideNavigationRailLayout(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$WideNavigationRailLayout$lambda$10(Landroidx/compose/runtime/State;)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/WideNavigationRailKt;->WideNavigationRailLayout$lambda$10(Landroidx/compose/runtime/State;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$WideNavigationRailLayout$lambda$11(Landroidx/compose/runtime/State;)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/WideNavigationRailKt;->WideNavigationRailLayout$lambda$11(Landroidx/compose/runtime/State;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$WideNavigationRailLayout$lambda$3(Landroidx/compose/runtime/MutableIntState;)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/WideNavigationRailKt;->WideNavigationRailLayout$lambda$3(Landroidx/compose/runtime/MutableIntState;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$WideNavigationRailLayout$lambda$4(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/WideNavigationRailKt;->WideNavigationRailLayout$lambda$4(Landroidx/compose/runtime/MutableIntState;I)V

    return-void
.end method

.method public static final synthetic access$WideNavigationRailLayout$lambda$6(Landroidx/compose/runtime/MutableIntState;)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/WideNavigationRailKt;->WideNavigationRailLayout$lambda$6(Landroidx/compose/runtime/MutableIntState;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$WideNavigationRailLayout$lambda$7(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/WideNavigationRailKt;->WideNavigationRailLayout$lambda$7(Landroidx/compose/runtime/MutableIntState;I)V

    return-void
.end method

.method public static final synthetic access$WideNavigationRailLayout$lambda$8(Landroidx/compose/runtime/State;)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/WideNavigationRailKt;->WideNavigationRailLayout$lambda$8(Landroidx/compose/runtime/State;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$WideNavigationRailLayout$lambda$9(Landroidx/compose/runtime/State;)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/WideNavigationRailKt;->WideNavigationRailLayout$lambda$9(Landroidx/compose/runtime/State;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$calculatePredictiveBackScaleX(Landroidx/compose/ui/graphics/GraphicsLayerScope;FZ)F
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/WideNavigationRailKt;->calculatePredictiveBackScaleX(Landroidx/compose/ui/graphics/GraphicsLayerScope;FZ)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$calculatePredictiveBackScaleY(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)F
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/WideNavigationRailKt;->calculatePredictiveBackScaleY(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCollapsedRailWidth$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/WideNavigationRailKt;->CollapsedRailWidth:F

    return v0
.end method

.method public static final synthetic access$getExpandedRailMaxWidth$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/WideNavigationRailKt;->ExpandedRailMaxWidth:F

    return v0
.end method

.method public static final synthetic access$getExpandedRailMinWidth$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/WideNavigationRailKt;->ExpandedRailMinWidth:F

    return v0
.end method

.method public static final synthetic access$getItemHorizontalPadding$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/WideNavigationRailKt;->ItemHorizontalPadding:F

    return v0
.end method

.method public static final synthetic access$getWNRHeaderPadding$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/WideNavigationRailKt;->WNRHeaderPadding:F

    return v0
.end method

.method public static final synthetic access$getWNRVerticalPadding$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/WideNavigationRailKt;->WNRVerticalPadding:F

    return v0
.end method

.method public static synthetic b()Landroidx/compose/material3/ModalWideNavigationRailOverride;
    .locals 1

    invoke-static {}, Landroidx/compose/material3/WideNavigationRailKt;->LocalModalWideNavigationRailOverride$lambda$39()Landroidx/compose/material3/ModalWideNavigationRailOverride;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p11}, Landroidx/compose/material3/WideNavigationRailKt;->WideNavigationRailLayout$lambda$12(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final calculatePredictiveBackScaleX(Landroidx/compose/ui/graphics/GraphicsLayerScope;FZ)F
    .locals 4

    invoke-interface {p0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->getSize-NH-jbRc()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_2

    const/4 v1, 0x0

    cmpg-float v3, v0, v1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    const/high16 p2, -0x40800000    # -1.0f

    :goto_0
    sget v3, Landroidx/compose/material3/WideNavigationRailKt;->PredictiveBackMaxScaleXDistance:F

    invoke-interface {p0, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v1, p0, p1}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p0

    mul-float/2addr p0, p2

    div-float/2addr p0, v0

    add-float/2addr p0, v2

    return p0

    :cond_2
    :goto_1
    return v2
.end method

.method private static final calculatePredictiveBackScaleY(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)F
    .locals 4

    invoke-interface {p0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->getSize-NH-jbRc()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v3, v0, v1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    sget v3, Landroidx/compose/material3/WideNavigationRailKt;->PredictiveBackMaxScaleYDistance:F

    invoke-interface {p0, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v1, p0, p1}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p0

    div-float/2addr p0, v0

    sub-float/2addr v2, p0

    :cond_1
    :goto_0
    return v2
.end method

.method public static synthetic d(FLandroidx/compose/material3/internal/DraggableAnchorsConfig;)Lj59;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroidx/compose/material3/WideNavigationRailKt;->ModalWideNavigationRailContent_pU6N4AM$lambda$23$lambda$22$lambda$21(FFLandroidx/compose/material3/internal/DraggableAnchorsConfig;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lbm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p16}, Landroidx/compose/material3/WideNavigationRailKt;->ModalWideNavigationRail_k3FuEkE$lambda$14(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lbm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f()Landroidx/compose/material3/WideNavigationRailOverride;
    .locals 1

    invoke-static {}, Landroidx/compose/material3/WideNavigationRailKt;->LocalWideNavigationRailOverride$lambda$38()Landroidx/compose/material3/WideNavigationRailOverride;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p11}, Landroidx/compose/material3/WideNavigationRailKt;->WideNavigationRail$lambda$1(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final getLocalModalWideNavigationRailOverride()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material3/ModalWideNavigationRailOverride;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/material3/WideNavigationRailKt;->LocalModalWideNavigationRailOverride:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalWideNavigationRailOverride()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material3/WideNavigationRailOverride;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/material3/WideNavigationRailKt;->LocalWideNavigationRailOverride:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getWNRItemNoLabelIndicatorPadding()F
    .locals 1

    sget v0, Landroidx/compose/material3/WideNavigationRailKt;->WNRItemNoLabelIndicatorPadding:F

    return v0
.end method

.method public static synthetic h(Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/WideNavigationRailKt;->ModalWideNavigationRailContent_pU6N4AM$lambda$18$lambda$17(Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/material3/RailPredictiveBackState;ZLandroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/WideNavigationRailKt;->ModalWideNavigationRailContent_pU6N4AM$lambda$20$lambda$19(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/material3/RailPredictiveBackState;ZLandroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(ZZLandroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/ui/unit/IntSize;Landroidx/compose/ui/unit/Constraints;)Lb36;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/WideNavigationRailKt;->ModalWideNavigationRailContent_pU6N4AM$lambda$23$lambda$22(ZZLandroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/ui/unit/IntSize;Landroidx/compose/ui/unit/Constraints;)Lb36;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(JLandroidx/compose/runtime/State;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/WideNavigationRailKt;->Scrim_3J_VO9M$lambda$35$lambda$34(JLandroidx/compose/runtime/State;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroidx/compose/runtime/MutableState;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/WideNavigationRailKt;->Scrim_3J_VO9M$lambda$33$lambda$32$lambda$31(Landroidx/compose/runtime/MutableState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(JLnl3;ZILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p6}, Landroidx/compose/material3/WideNavigationRailKt;->Scrim_3J_VO9M$lambda$37(JLnl3;ZILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(ZLll3;Lbm3;Lbm3;ZLandroidx/compose/ui/Modifier;ZILandroidx/compose/material3/NavigationItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p13}, Landroidx/compose/material3/WideNavigationRailKt;->WideNavigationRailItem_pli_t6k$lambda$16(ZLll3;Lbm3;Lbm3;ZLandroidx/compose/ui/Modifier;ZILandroidx/compose/material3/NavigationItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(ZZLandroidx/compose/animation/core/Animatable;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;FLbm3;Landroidx/compose/foundation/layout/WindowInsets;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p18}, Landroidx/compose/material3/WideNavigationRailKt;->ModalWideNavigationRailContent_pU6N4AM$lambda$25(ZZLandroidx/compose/animation/core/Animatable;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;FLbm3;Landroidx/compose/foundation/layout/WindowInsets;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
