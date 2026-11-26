.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final LazyStaggeredGrid-w41Enmo(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;FFLnl3;Landroidx/compose/runtime/Composer;III)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Landroidx/compose/foundation/OverscrollEffect;",
            "FF",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v12, p11

    move/from16 v13, p13

    move/from16 v15, p15

    const v0, -0x71897a5e

    move-object/from16 v2, p12

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    and-int/lit8 v2, v13, 0x6

    if-nez v2, :cond_1

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v13

    goto :goto_1

    :cond_1
    move v2, v13

    :goto_1
    and-int/lit8 v7, v13, 0x30

    if-nez v7, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v2, v7

    :cond_3
    and-int/lit16 v7, v13, 0x180

    if-nez v7, :cond_6

    and-int/lit16 v7, v13, 0x200

    if-nez v7, :cond_4

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_3

    :cond_4
    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    :goto_3
    if-eqz v7, :cond_5

    const/16 v7, 0x100

    goto :goto_4

    :cond_5
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v2, v7

    :cond_6
    and-int/lit8 v7, v15, 0x8

    if-eqz v7, :cond_8

    or-int/lit16 v2, v2, 0xc00

    :cond_7
    move-object/from16 v10, p3

    goto :goto_6

    :cond_8
    and-int/lit16 v10, v13, 0xc00

    if-nez v10, :cond_7

    move-object/from16 v10, p3

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/16 v11, 0x800

    goto :goto_5

    :cond_9
    const/16 v11, 0x400

    :goto_5
    or-int/2addr v2, v11

    :goto_6
    and-int/lit8 v11, v15, 0x10

    if-eqz v11, :cond_b

    or-int/lit16 v2, v2, 0x6000

    :cond_a
    move-object/from16 v14, p4

    goto :goto_8

    :cond_b
    and-int/lit16 v14, v13, 0x6000

    if-nez v14, :cond_a

    move-object/from16 v14, p4

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/16 v16, 0x4000

    goto :goto_7

    :cond_c
    const/16 v16, 0x2000

    :goto_7
    or-int v2, v2, v16

    :goto_8
    and-int/lit8 v16, v15, 0x20

    const/high16 v17, 0x30000

    if-eqz v16, :cond_d

    or-int v2, v2, v17

    move/from16 v4, p5

    goto :goto_a

    :cond_d
    and-int v17, v13, v17

    move/from16 v4, p5

    if-nez v17, :cond_f

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_e

    const/high16 v17, 0x20000

    goto :goto_9

    :cond_e
    const/high16 v17, 0x10000

    :goto_9
    or-int v2, v2, v17

    :cond_f
    :goto_a
    const/high16 v17, 0x180000

    and-int v17, v13, v17

    if-nez v17, :cond_11

    and-int/lit8 v17, v15, 0x40

    move-object/from16 v6, p6

    if-nez v17, :cond_10

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x100000

    goto :goto_b

    :cond_10
    const/high16 v18, 0x80000

    :goto_b
    or-int v2, v2, v18

    goto :goto_c

    :cond_11
    move-object/from16 v6, p6

    :goto_c
    and-int/lit16 v8, v15, 0x80

    const/high16 v19, 0xc00000

    if-eqz v8, :cond_12

    or-int v2, v2, v19

    move/from16 v9, p7

    goto :goto_e

    :cond_12
    and-int v19, v13, v19

    move/from16 v9, p7

    if-nez v19, :cond_14

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v20

    if-eqz v20, :cond_13

    const/high16 v20, 0x800000

    goto :goto_d

    :cond_13
    const/high16 v20, 0x400000

    :goto_d
    or-int v2, v2, v20

    :cond_14
    :goto_e
    const/high16 v20, 0x6000000

    and-int v20, v13, v20

    move-object/from16 v0, p8

    if-nez v20, :cond_16

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    const/high16 v21, 0x4000000

    goto :goto_f

    :cond_15
    const/high16 v21, 0x2000000

    :goto_f
    or-int v2, v2, v21

    :cond_16
    and-int/lit16 v0, v15, 0x200

    const/high16 v21, 0x30000000

    if-eqz v0, :cond_18

    or-int v2, v2, v21

    :cond_17
    move/from16 v21, v0

    move/from16 v0, p9

    goto :goto_11

    :cond_18
    and-int v21, v13, v21

    if-nez v21, :cond_17

    move/from16 v21, v0

    move/from16 v0, p9

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v22

    if-eqz v22, :cond_19

    const/high16 v22, 0x20000000

    goto :goto_10

    :cond_19
    const/high16 v22, 0x10000000

    :goto_10
    or-int v2, v2, v22

    :goto_11
    and-int/lit16 v0, v15, 0x400

    if-eqz v0, :cond_1a

    or-int/lit8 v17, p14, 0x6

    move/from16 v22, v0

    move/from16 v0, p10

    goto :goto_13

    :cond_1a
    and-int/lit8 v22, p14, 0x6

    if-nez v22, :cond_1c

    move/from16 v22, v0

    move/from16 v0, p10

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v23

    if-eqz v23, :cond_1b

    const/16 v17, 0x4

    goto :goto_12

    :cond_1b
    const/16 v17, 0x2

    :goto_12
    or-int v17, p14, v17

    goto :goto_13

    :cond_1c
    move/from16 v22, v0

    move/from16 v0, p10

    move/from16 v17, p14

    :goto_13
    and-int/lit8 v23, p14, 0x30

    if-nez v23, :cond_1e

    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1d

    const/16 v18, 0x20

    goto :goto_14

    :cond_1d
    const/16 v18, 0x10

    :goto_14
    or-int v17, v17, v18

    :cond_1e
    move/from16 v0, v17

    const v17, 0x12492493

    move/from16 p12, v2

    and-int v2, p12, v17

    const v3, 0x12492492

    const/16 v17, 0x0

    const/16 v4, 0x12

    const/16 v18, 0x1

    if-ne v2, v3, :cond_20

    and-int/lit8 v2, v0, 0x13

    if-eq v2, v4, :cond_1f

    goto :goto_15

    :cond_1f
    move/from16 v2, v17

    goto :goto_16

    :cond_20
    :goto_15
    move/from16 v2, v18

    :goto_16
    and-int/lit8 v3, p12, 0x1

    invoke-interface {v5, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v13, 0x1

    const v3, -0x380001

    if-eqz v2, :cond_23

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_18

    :cond_21
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, v15, 0x40

    if-eqz v2, :cond_22

    and-int v2, p12, v3

    move/from16 v3, p5

    move/from16 v8, p9

    move v7, v2

    :goto_17
    move-object/from16 v16, v6

    move/from16 v18, v9

    move-object v2, v14

    move/from16 v6, p10

    move-object v14, v10

    goto/16 :goto_1f

    :cond_22
    move/from16 v3, p5

    move/from16 v8, p9

    move/from16 v7, p12

    goto :goto_17

    :cond_23
    :goto_18
    if-eqz v7, :cond_24

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_19

    :cond_24
    move-object v2, v10

    :goto_19
    const/4 v7, 0x0

    if-eqz v11, :cond_25

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    invoke-static {v10}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v10

    goto :goto_1a

    :cond_25
    move-object v10, v14

    :goto_1a
    if-eqz v16, :cond_26

    goto :goto_1b

    :cond_26
    move/from16 v17, p5

    :goto_1b
    and-int/lit8 v11, v15, 0x40

    if-eqz v11, :cond_27

    sget-object v6, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    const/4 v11, 0x6

    invoke-virtual {v6, v5, v11}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->flingBehavior(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    move-result-object v6

    and-int v3, p12, v3

    goto :goto_1c

    :cond_27
    move/from16 v3, p12

    :goto_1c
    if-eqz v8, :cond_28

    goto :goto_1d

    :cond_28
    move/from16 v18, v9

    :goto_1d
    if-eqz v21, :cond_29

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    goto :goto_1e

    :cond_29
    move/from16 v8, p9

    :goto_1e
    if-eqz v22, :cond_2a

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    move-object v14, v2

    move-object/from16 v16, v6

    move v6, v7

    move-object v2, v10

    move v7, v3

    move/from16 v3, v17

    goto :goto_1f

    :cond_2a
    move-object v14, v2

    move v7, v3

    move-object/from16 v16, v6

    move-object v2, v10

    move/from16 v3, v17

    move/from16 v6, p10

    :goto_1f
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_2b

    const-string v9, "androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGrid (LazyStaggeredGrid.kt:62)"

    const v10, -0x71897a5e

    invoke-static {v10, v7, v0, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2b
    and-int/lit8 v9, v7, 0xe

    and-int/lit8 v10, v0, 0x70

    or-int/2addr v10, v9

    invoke-static {v1, v12, v5, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderKt;->rememberStaggeredGridItemProviderLambda(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Lnl3;Landroidx/compose/runtime/Composer;I)Lll3;

    move-result-object v10

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p12, v4

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v11, v4, :cond_2c

    sget-object v4, Lgx2;->b:Lgx2;

    invoke-static {v4, v5}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lo22;Landroidx/compose/runtime/Composer;)Ly22;

    move-result-object v11

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2c
    check-cast v11, Ly22;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalGraphicsContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/GraphicsContext;

    move/from16 v17, v0

    shr-int/lit8 v0, v7, 0x6

    and-int/lit16 v1, v0, 0x380

    or-int/2addr v1, v9

    and-int/lit16 v0, v0, 0x1c00

    or-int/2addr v0, v1

    shl-int/lit8 v1, v7, 0x9

    const v19, 0xe000

    and-int v1, v1, v19

    or-int/2addr v0, v1

    shr-int/lit8 v20, v7, 0xc

    const/high16 v21, 0x70000

    and-int v1, v20, v21

    or-int/2addr v0, v1

    const/high16 v1, 0x380000

    shl-int/lit8 v17, v17, 0x12

    and-int v1, v17, v1

    or-int/2addr v0, v1

    shl-int/lit8 v1, v7, 0x12

    const/high16 v17, 0xe000000

    and-int v1, v1, v17

    or-int/2addr v0, v1

    move/from16 v17, v7

    move v12, v9

    move-object v1, v10

    move-object v7, v11

    move v11, v0

    move-object v9, v4

    move-object v10, v5

    move v5, v8

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt;->rememberStaggeredGridMeasurePolicy-qKj4JfE(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Lll3;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;FFLy22;Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    move-result-object v11

    move-object/from16 v22, v2

    move/from16 v23, v5

    move/from16 v24, v6

    move-object v5, v10

    and-int/lit8 v2, v20, 0x70

    or-int/2addr v2, v12

    invoke-static {v0, v3, v5, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSemanticsKt;->rememberLazyStaggeredGridSemanticState(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    move-result-object v2

    if-eqz v18, :cond_2d

    const v4, -0x6d59b7f6

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v0, v5, v12}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridBeyondBoundsModifierKt;->rememberLazyStaggeredGridBeyondBoundsState(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    move-result-object v6

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getBeyondBoundsInfo$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    move-result-object v7

    move-object/from16 v8, p1

    invoke-static {v4, v6, v7, v3, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocalKt;->lazyLayoutBeyondBoundsModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;ZLandroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_20
    move-object v9, v4

    goto :goto_21

    :cond_2d
    move-object/from16 v8, p1

    const v4, -0x6d551120

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_20

    :goto_21
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getRemeasurementModifier$foundation()Landroidx/compose/ui/layout/RemeasurementModifier;

    move-result-object v4

    invoke-interface {v14, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getAwaitLayoutModifier$foundation()Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    move-result-object v6

    invoke-interface {v4, v6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    shl-int/lit8 v6, v17, 0x6

    and-int/lit16 v6, v6, 0x1c00

    shr-int/lit8 v7, v17, 0x9

    and-int v7, v7, v19

    or-int/2addr v6, v7

    and-int v7, v17, v21

    or-int/2addr v6, v7

    move-object v7, v2

    move-object v2, v1

    move-object v1, v4

    move-object v4, v8

    move v8, v6

    move v6, v3

    move-object v3, v7

    move-object v7, v5

    move/from16 v5, v18

    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lll3;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v17, v2

    move v4, v5

    move v3, v6

    move-object v12, v7

    invoke-interface {v1, v9}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getItemAnimator$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getModifier()Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getMutableInteractionSource$foundation()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v7

    const/16 v9, 0x80

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    move-object/from16 v2, p1

    move v5, v3

    move-object/from16 v6, v16

    move-object/from16 v3, p8

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/ScrollableAreaKt;->scrollableArea$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move/from16 v18, v4

    move v8, v5

    move-object v9, v6

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getPrefetchState$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v1, v17

    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2e
    move-object v12, v5

    move v6, v8

    move-object v7, v9

    move-object v4, v14

    move/from16 v8, v18

    move-object/from16 v5, v22

    move/from16 v10, v23

    move/from16 v11, v24

    goto :goto_22

    :cond_2f
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v11, p10

    move-object v12, v5

    move-object v7, v6

    move v8, v9

    move-object v4, v10

    move-object v5, v14

    move/from16 v6, p5

    move/from16 v10, p9

    :goto_22
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_30

    move-object v1, v0

    new-instance v0, Lio4;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v9, p8

    move-object/from16 v12, p11

    move/from16 v14, p14

    move-object/from16 v25, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v15}, Lio4;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;FFLnl3;III)V

    move-object/from16 v1, v25

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_30
    return-void
.end method

.method private static final LazyStaggeredGrid_w41Enmo$lambda$0(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;FFLnl3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 17

    or-int/lit8 v0, p12, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    invoke-static/range {p13 .. p13}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v16, p14

    move-object/from16 v13, p15

    invoke-static/range {v1 .. v16}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridKt;->LazyStaggeredGrid-w41Enmo(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;FFLnl3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method public static synthetic a(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;FFLnl3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p16}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridKt;->LazyStaggeredGrid_w41Enmo$lambda$0(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;FFLnl3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
