.class public final Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final BasicEdgeToEdgeDialog(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;ZZLdm3;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/window/DialogProperties;",
            "ZZ",
            "Ldm3<",
            "-",
            "Landroidx/compose/material3/internal/PredictiveBackState;",
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

    move-object/from16 v1, p0

    move-object/from16 v9, p5

    move/from16 v10, p7

    const v0, 0x308d86a1

    move-object/from16 v2, p6

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v10, 0x6

    if-nez v2, :cond_2

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v10

    goto :goto_1

    :cond_2
    move v2, v10

    :goto_1
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x30

    :cond_3
    move-object/from16 v4, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v4, v10, 0x30

    if-nez v4, :cond_3

    move-object/from16 v4, p1

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x20

    goto :goto_2

    :cond_5
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    :goto_3
    and-int/lit8 v5, p8, 0x4

    if-eqz v5, :cond_7

    or-int/lit16 v2, v2, 0x180

    :cond_6
    move-object/from16 v6, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v6, v10, 0x180

    if-nez v6, :cond_6

    move-object/from16 v6, p2

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x100

    goto :goto_4

    :cond_8
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v2, v7

    :goto_5
    and-int/lit16 v7, v10, 0xc00

    if-nez v7, :cond_b

    and-int/lit8 v7, p8, 0x8

    if-nez v7, :cond_9

    move/from16 v7, p3

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_6

    :cond_9
    move/from16 v7, p3

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v2, v8

    goto :goto_7

    :cond_b
    move/from16 v7, p3

    :goto_7
    and-int/lit16 v8, v10, 0x6000

    if-nez v8, :cond_e

    and-int/lit8 v8, p8, 0x10

    if-nez v8, :cond_c

    move/from16 v8, p4

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_c
    move/from16 v8, p4

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v2, v2, v16

    goto :goto_9

    :cond_e
    move/from16 v8, p4

    :goto_9
    and-int/lit8 v16, p8, 0x20

    const/high16 v17, 0x30000

    if-eqz v16, :cond_f

    or-int v2, v2, v17

    goto :goto_b

    :cond_f
    and-int v16, v10, v17

    if-nez v16, :cond_11

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v2, v2, v16

    :cond_11
    :goto_b
    const v16, 0x12493

    and-int v15, v2, v16

    const v14, 0x12492

    const/4 v13, 0x0

    if-eq v15, v14, :cond_12

    const/4 v14, 0x1

    goto :goto_c

    :cond_12
    move v14, v13

    :goto_c
    and-int/lit8 v15, v2, 0x1

    invoke-interface {v11, v14, v15}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v14

    if-eqz v14, :cond_2e

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v14, v10, 0x1

    const v15, -0xe001

    if-eqz v14, :cond_16

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v14

    if-eqz v14, :cond_13

    goto :goto_d

    :cond_13
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_14

    and-int/lit16 v2, v2, -0x1c01

    :cond_14
    and-int/lit8 v3, p8, 0x10

    if-eqz v3, :cond_15

    and-int/2addr v2, v15

    :cond_15
    move v15, v2

    move-object v14, v4

    move-object v2, v6

    goto/16 :goto_13

    :cond_16
    :goto_d
    if-eqz v3, :cond_17

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_e

    :cond_17
    move-object v3, v4

    :goto_e
    if-eqz v5, :cond_18

    new-instance v18, Landroidx/compose/ui/window/DialogProperties;

    const/16 v22, 0x7

    const/16 v23, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v23}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZZILjh2;)V

    goto :goto_f

    :cond_18
    move-object/from16 v18, v6

    :goto_f
    and-int/lit8 v4, p8, 0x8

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_1a

    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/ColorKt;->luminance-8_81llA(J)F

    move-result v4

    cmpg-float v4, v4, v5

    if-gez v4, :cond_19

    const/4 v4, 0x1

    goto :goto_10

    :cond_19
    move v4, v13

    :goto_10
    and-int/lit16 v2, v2, -0x1c01

    move v7, v4

    :cond_1a
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_1c

    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/graphics/ColorKt;->luminance-8_81llA(J)F

    move-result v4

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_11

    :cond_1b
    move v4, v13

    :goto_11
    and-int/2addr v2, v15

    move v15, v2

    move-object v14, v3

    move v8, v4

    :goto_12
    move-object/from16 v2, v18

    goto :goto_13

    :cond_1c
    move v15, v2

    move-object v14, v3

    goto :goto_12

    :goto_13
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, -0x1

    const-string v4, "androidx.compose.material3.internal.BasicEdgeToEdgeDialog (BasicEdgeToEdgeDialog.android.kt:90)"

    invoke-static {v0, v15, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1d
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/unit/Density;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {v11, v13}, Landroidx/compose/runtime/ComposablesKt;->rememberCompositionContext(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;

    move-result-object v0

    new-array v6, v13, [Ljava/lang/Object;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v12, v13, :cond_1e

    new-instance v12, Lre0;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lre0;-><init>(I)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1e
    check-cast v12, Lll3;

    const/16 v13, 0x30

    invoke-static {v6, v12, v11, v13}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Lll3;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/UUID;

    shr-int/lit8 v12, v15, 0xf

    and-int/lit8 v12, v12, 0xe

    invoke-static {v9, v11, v12}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v12

    and-int/lit8 v13, v15, 0xe

    invoke-static {v1, v11, v13}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v9

    invoke-virtual {v2}, Landroidx/compose/ui/window/DialogProperties;->getDismissOnBackPress()Z

    move-result v21

    move-object/from16 p1, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v11, v1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    or-int v1, v1, v21

    move-object/from16 p2, v0

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_20

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    goto :goto_14

    :cond_1f
    move/from16 v21, v15

    const/4 v5, 0x1

    goto :goto_15

    :cond_20
    :goto_14
    new-instance v0, Landroidx/compose/material3/internal/DialogWrapper;

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move/from16 v21, v15

    move-object/from16 v15, p2

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/internal/DialogWrapper;-><init>(Lll3;Landroidx/compose/ui/window/DialogProperties;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;ZZ)V

    new-instance v1, Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt$BasicEdgeToEdgeDialog$dialog$1$1$1;

    invoke-direct {v1, v14, v15, v9, v12}, Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt$BasicEdgeToEdgeDialog$dialog$1$1$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    const v3, -0x25e7a69e

    const/4 v5, 0x1

    invoke-static {v3, v5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroidx/compose/material3/internal/DialogWrapper;->setContent(Landroidx/compose/runtime/CompositionContext;Lbm3;)V

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_15
    move-object v1, v0

    check-cast v1, Landroidx/compose/material3/internal/DialogWrapper;

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_21

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_22

    :cond_21
    new-instance v3, Landroidx/compose/material3/internal/f;

    invoke-direct {v3, v1}, Landroidx/compose/material3/internal/f;-><init>(Landroidx/compose/material3/internal/DialogWrapper;)V

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_22
    check-cast v3, Lnl3;

    const/4 v0, 0x0

    invoke-static {v1, v3, v11, v0}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lnl3;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x4

    if-ne v13, v3, :cond_23

    move v13, v5

    goto :goto_16

    :cond_23
    const/4 v13, 0x0

    :goto_16
    or-int/2addr v0, v13

    move/from16 v3, v21

    and-int/lit16 v6, v3, 0x380

    const/16 v9, 0x100

    if-ne v6, v9, :cond_24

    move v13, v5

    goto :goto_17

    :cond_24
    const/4 v13, 0x0

    :goto_17
    or-int/2addr v0, v13

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    or-int/2addr v0, v6

    and-int/lit16 v6, v3, 0x1c00

    xor-int/lit16 v6, v6, 0xc00

    const/16 v9, 0x800

    if-le v6, v9, :cond_25

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-nez v6, :cond_26

    :cond_25
    and-int/lit16 v6, v3, 0xc00

    if-ne v6, v9, :cond_27

    :cond_26
    move v13, v5

    goto :goto_18

    :cond_27
    const/4 v13, 0x0

    :goto_18
    or-int/2addr v0, v13

    const v6, 0xe000

    and-int/2addr v6, v3

    xor-int/lit16 v6, v6, 0x6000

    const/16 v9, 0x4000

    if-le v6, v9, :cond_28

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-nez v6, :cond_29

    :cond_28
    and-int/lit16 v3, v3, 0x6000

    if-ne v3, v9, :cond_2a

    :cond_29
    move v12, v5

    goto :goto_19

    :cond_2a
    const/4 v12, 0x0

    :goto_19
    or-int/2addr v0, v12

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_2b

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_2c

    :cond_2b
    new-instance v0, Landroidx/compose/material3/internal/g;

    move-object v3, v2

    move v5, v7

    move v6, v8

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/internal/g;-><init>(Landroidx/compose/material3/internal/DialogWrapper;Lll3;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;ZZ)V

    move-object v2, v3

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v3, v0

    :cond_2c
    check-cast v3, Lll3;

    const/4 v13, 0x0

    invoke-static {v3, v11, v13}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lll3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2d
    move-object v3, v2

    move-object v2, v14

    :goto_1a
    move v4, v7

    move v5, v8

    goto :goto_1b

    :cond_2e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v4

    move-object v3, v6

    goto :goto_1a

    :goto_1b
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_2f

    new-instance v0, Lse0;

    move-object/from16 v1, p0

    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lse0;-><init>(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;ZZLdm3;II)V

    invoke-interface {v9, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_2f
    return-void
.end method

.method private static final BasicEdgeToEdgeDialog$lambda$1$lambda$0()Ljava/util/UUID;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method private static final BasicEdgeToEdgeDialog$lambda$11$lambda$10(Landroidx/compose/material3/internal/DialogWrapper;Lll3;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;ZZ)Lj59;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroidx/compose/material3/internal/DialogWrapper;->updateParameters(Lll3;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;ZZ)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final BasicEdgeToEdgeDialog$lambda$12(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;ZZLdm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 10

    or-int/lit8 v0, p6, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v9, p7

    move-object/from16 v7, p8

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt;->BasicEdgeToEdgeDialog(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;ZZLdm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final BasicEdgeToEdgeDialog$lambda$2(Landroidx/compose/runtime/State;)Ldm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ldm3<",
            "-",
            "Landroidx/compose/material3/internal/PredictiveBackState;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;>;)",
            "Ldm3<",
            "Landroidx/compose/material3/internal/PredictiveBackState;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldm3;

    return-object p0
.end method

.method private static final BasicEdgeToEdgeDialog$lambda$3(Landroidx/compose/runtime/State;)Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lll3<",
            "Lj59;",
            ">;>;)",
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lll3;

    return-object p0
.end method

.method private static final BasicEdgeToEdgeDialog$lambda$4(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
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

.method private static final BasicEdgeToEdgeDialog$lambda$9$lambda$8(Landroidx/compose/material3/internal/DialogWrapper;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    new-instance p1, Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt$BasicEdgeToEdgeDialog$lambda$9$lambda$8$$inlined$onDispose$1;

    invoke-direct {p1, p0}, Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt$BasicEdgeToEdgeDialog$lambda$9$lambda$8$$inlined$onDispose$1;-><init>(Landroidx/compose/material3/internal/DialogWrapper;)V

    return-object p1
.end method

.method public static synthetic a()Ljava/util/UUID;
    .locals 1

    invoke-static {}, Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt;->BasicEdgeToEdgeDialog$lambda$1$lambda$0()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$BasicEdgeToEdgeDialog$lambda$2(Landroidx/compose/runtime/State;)Ldm3;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt;->BasicEdgeToEdgeDialog$lambda$2(Landroidx/compose/runtime/State;)Ldm3;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$BasicEdgeToEdgeDialog$lambda$3(Landroidx/compose/runtime/State;)Lll3;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt;->BasicEdgeToEdgeDialog$lambda$3(Landroidx/compose/runtime/State;)Lll3;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$BasicEdgeToEdgeDialog$lambda$4(Landroidx/compose/runtime/State;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt;->BasicEdgeToEdgeDialog$lambda$4(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroidx/compose/material3/internal/DialogWrapper;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt;->BasicEdgeToEdgeDialog$lambda$9$lambda$8(Landroidx/compose/material3/internal/DialogWrapper;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;ZZLdm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p9}, Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt;->BasicEdgeToEdgeDialog$lambda$12(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;ZZLdm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/material3/internal/DialogWrapper;Lll3;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;ZZ)Lj59;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt;->BasicEdgeToEdgeDialog$lambda$11$lambda$10(Landroidx/compose/material3/internal/DialogWrapper;Lll3;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;ZZ)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final shouldApplySecureFlag(Landroidx/compose/ui/window/SecureFlagPolicy;Z)Z
    .locals 2

    sget-object v0, Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
