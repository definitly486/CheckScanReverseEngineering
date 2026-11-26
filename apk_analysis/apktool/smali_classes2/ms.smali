.class public final Lms;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lts;Landroidx/compose/ui/Modifier;Lnl3;Lnl3;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;II)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move/from16 v0, p8

    const v3, 0x49b4d5f6    # 1481406.8f

    move-object/from16 v4, p7

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    and-int/lit8 v4, v0, 0x6

    const/4 v5, 0x4

    const/4 v7, 0x2

    if-nez v4, :cond_1

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    or-int/2addr v4, v0

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    and-int/lit8 v8, v0, 0x30

    const/4 v9, 0x0

    if-nez v8, :cond_3

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v4, v8

    :cond_3
    and-int/lit16 v8, v0, 0x180

    if-nez v8, :cond_5

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_3

    :cond_4
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v4, v8

    :cond_5
    and-int/lit16 v8, v0, 0xc00

    if-nez v8, :cond_7

    move-object/from16 v8, p2

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x800

    goto :goto_4

    :cond_6
    const/16 v10, 0x400

    :goto_4
    or-int/2addr v4, v10

    goto :goto_5

    :cond_7
    move-object/from16 v8, p2

    :goto_5
    and-int/lit16 v10, v0, 0x6000

    if-nez v10, :cond_9

    move-object/from16 v10, p3

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x4000

    goto :goto_6

    :cond_8
    const/16 v11, 0x2000

    :goto_6
    or-int/2addr v4, v11

    goto :goto_7

    :cond_9
    move-object/from16 v10, p3

    :goto_7
    const/high16 v11, 0x30000

    and-int/2addr v11, v0

    if-nez v11, :cond_b

    move-object/from16 v11, p4

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/high16 v12, 0x20000

    goto :goto_8

    :cond_a
    const/high16 v12, 0x10000

    :goto_8
    or-int/2addr v4, v12

    goto :goto_9

    :cond_b
    move-object/from16 v11, p4

    :goto_9
    const/high16 v12, 0x180000

    and-int/2addr v12, v0

    if-nez v12, :cond_d

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/high16 v12, 0x100000

    goto :goto_a

    :cond_c
    const/high16 v12, 0x80000

    :goto_a
    or-int/2addr v4, v12

    :cond_d
    const/high16 v12, 0xc00000

    and-int/2addr v12, v0

    if-nez v12, :cond_f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v12

    if-eqz v12, :cond_e

    const/high16 v12, 0x800000

    goto :goto_b

    :cond_e
    const/high16 v12, 0x400000

    :goto_b
    or-int/2addr v4, v12

    :cond_f
    const/high16 v12, 0x6000000

    and-int/2addr v12, v0

    if-nez v12, :cond_11

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/high16 v12, 0x4000000

    goto :goto_c

    :cond_10
    const/high16 v12, 0x2000000

    :goto_c
    or-int/2addr v4, v12

    :cond_11
    const/high16 v12, 0x30000000

    and-int/2addr v12, v0

    if-nez v12, :cond_13

    move/from16 v12, p6

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v14

    if-eqz v14, :cond_12

    const/high16 v14, 0x20000000

    goto :goto_d

    :cond_12
    const/high16 v14, 0x10000000

    :goto_d
    or-int/2addr v4, v14

    goto :goto_e

    :cond_13
    move/from16 v12, p6

    :goto_e
    and-int/lit8 v14, p9, 0x6

    const/4 v15, 0x1

    if-nez v14, :cond_15

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v14

    if-eqz v14, :cond_14

    goto :goto_f

    :cond_14
    move v5, v7

    :goto_f
    or-int v5, p9, v5

    goto :goto_10

    :cond_15
    move/from16 v5, p9

    :goto_10
    const v14, 0x12492493

    and-int/2addr v14, v4

    move-object/from16 p7, v9

    const v9, 0x12492492

    const/4 v15, 0x0

    if-ne v14, v9, :cond_17

    and-int/lit8 v9, v5, 0x3

    if-eq v9, v7, :cond_16

    goto :goto_11

    :cond_16
    move v7, v15

    goto :goto_12

    :cond_17
    :goto_11
    const/4 v7, 0x1

    :goto_12
    and-int/lit8 v9, v4, 0x1

    invoke-interface {v13, v7, v9}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_18

    const-string v7, "coil3.compose.AsyncImage (AsyncImage.kt:152)"

    invoke-static {v3, v4, v5, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_18
    iget-object v3, v1, Lts;->a:Ljava/lang/Object;

    shr-int/lit8 v4, v4, 0xf

    and-int/lit8 v4, v4, 0x70

    sget v5, Lnb9;->b:I

    const v5, -0x13a0feae

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    const/4 v9, -0x1

    if-eqz v7, :cond_19

    const-string v7, "coil3.compose.internal.requestOfWithSizeResolver (utils.kt:61)"

    invoke-static {v5, v4, v9, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_19
    instance-of v5, v3, Lb24;

    if-eqz v5, :cond_1e

    const v5, -0x3c233d08

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    move-object v5, v3

    check-cast v5, Lb24;

    iget-object v7, v5, Lb24;->s:Lb24$c;

    iget-object v7, v7, Lb24$c;->d:Lw18;

    if-eqz v7, :cond_1b

    const v3, -0x3c22a094

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1a
    :goto_13
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object v4, v5

    goto/16 :goto_14

    :cond_1b
    const v7, -0x3c21e466

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    shr-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0xe

    invoke-static {v6, v13, v4}, Lnb9;->a(Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;I)Lw18;

    move-result-object v4

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v3, v7

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_1c

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v7, v3, :cond_1d

    :cond_1c
    invoke-static {v5}, Lb24;->a(Lb24;)Lb24$a;

    move-result-object v3

    iput-object v4, v3, Lb24$a;->i:Lw18;

    invoke-virtual {v3}, Lb24$a;->a()Lb24;

    move-result-object v7

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1d
    move-object v5, v7

    check-cast v5, Lb24;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_13

    :cond_1e
    const v5, -0x3c1df3ee

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    shr-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0xe

    invoke-static {v6, v13, v4}, Lnb9;->a(Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;I)Lw18;

    move-result-object v4

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v7, v14

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v7, v14

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v7, :cond_1f

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v14, v7, :cond_20

    :cond_1f
    new-instance v7, Lb24$a;

    invoke-direct {v7, v5}, Lb24$a;-><init>(Landroid/content/Context;)V

    iput-object v3, v7, Lb24$a;->c:Ljava/lang/Object;

    iput-object v4, v7, Lb24$a;->i:Lw18;

    invoke-virtual {v7}, Lb24$a;->a()Lb24;

    move-result-object v14

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_20
    move-object v5, v14

    check-cast v5, Lb24;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto/16 :goto_13

    :goto_14
    iget-object v3, v4, Lb24;->b:Ljava/lang/Object;

    instance-of v5, v3, Lb24$a;

    if-nez v5, :cond_2d

    instance-of v5, v3, Landroidx/compose/ui/graphics/ImageBitmap;

    if-nez v5, :cond_2c

    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/ImageVector;

    if-nez v5, :cond_2b

    instance-of v3, v3, Landroidx/compose/ui/graphics/painter/Painter;

    if-nez v3, :cond_2a

    iget-object v3, v4, Lb24;->c:Lxk8;

    if-nez v3, :cond_29

    sget-object v3, Lf24;->e:Lb53$b;

    invoke-static {v4, v3}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/Lifecycle;

    if-nez v3, :cond_28

    iget-object v5, v1, Lts;->c:Lr14;

    iget-object v6, v1, Lts;->b:Lns;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_21

    const v3, -0x7ba28997

    const-string v7, "coil3.compose.internal.previewHandler (utils.kt:218)"

    invoke-static {v3, v15, v9, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_21
    invoke-static {}, Landroidx/compose/ui/platform/InspectionModeKt;->getLocalInspectionMode()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_22

    const v3, 0x7857f7a4

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget-object v3, Lbt4;->a:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lss;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_15

    :cond_22
    const v3, 0x7858d845

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 v9, p7

    :goto_15
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_23
    new-instance v3, Lfy1;

    move v7, v12

    move-object v12, v9

    move v9, v7

    move-object v7, v8

    move-object v8, v10

    move-object v10, v11

    move-object/from16 v11, p5

    invoke-direct/range {v3 .. v12}, Lfy1;-><init>(Lb24;Lr14;Lns;Lnl3;Lnl3;ILandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Lss;)V

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v13, v15}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-static {v13, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lll3;

    move-result-object v7

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v8

    if-nez v8, :cond_24

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    :cond_24
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v8

    if-eqz v8, :cond_25

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->createNode(Lll3;)V

    goto :goto_16

    :cond_25
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->useNode()V

    :goto_16
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v7

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lbm3;

    move-result-object v8

    sget-object v9, Lnb9$a;->a:Lnb9$a;

    invoke-static {v7, v9, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lbm3;)V

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lbm3;

    move-result-object v8

    invoke-static {v7, v5, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lbm3;)V

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lbm3;

    move-result-object v5

    invoke-static {v7, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lbm3;)V

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lbm3;

    move-result-object v3

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v5

    if-nez v5, :cond_26

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    :cond_26
    invoke-static {v3, v4, v7, v4}, Ldc;->b(Lbm3;ILandroidx/compose/runtime/Composer;I)V

    :cond_27
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endNode()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_17

    :cond_28
    const-string v0, "request.lifecycle must be null."

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_29
    const-string v0, "request.target must be null."

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_2a
    const-string v0, "Painter"

    invoke-static {v0}, Lnb9;->c(Ljava/lang/String;)V

    throw p7

    :cond_2b
    const-string v0, "ImageVector"

    invoke-static {v0}, Lnb9;->c(Ljava/lang/String;)V

    throw p7

    :cond_2c
    const-string v0, "ImageBitmap"

    invoke-static {v0}, Lnb9;->c(Ljava/lang/String;)V

    throw p7

    :cond_2d
    const-string v0, "Unsupported type: ImageRequest.Builder. Did you forget to call ImageRequest.Builder.build()?"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_2e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_2f
    :goto_17
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_30

    new-instance v0, Lls;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lls;-><init>(Lts;Landroidx/compose/ui/Modifier;Lnl3;Lnl3;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;III)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_30
    return-void
.end method
