.class public final Landroidx/compose/material3/TabRowKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final PrimaryScrollableTabRow-cx2KkNY(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;FLbm3;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/ScrollState;",
            "JJF",
            "Ldm3<",
            "-",
            "Landroidx/compose/material3/TabIndicatorScope;",
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
            ">;F",
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

    move/from16 v1, p0

    move/from16 v14, p13

    move/from16 v15, p14

    const v0, 0x1adf69a0

    move-object/from16 v2, p12

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    and-int/lit8 v2, v15, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v14, 0x6

    if-nez v2, :cond_2

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

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
    and-int/lit8 v3, v15, 0x2

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x30

    :cond_3
    move-object/from16 v4, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v4, v14, 0x30

    if-nez v4, :cond_3

    move-object/from16 v4, p1

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x20

    goto :goto_2

    :cond_5
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    :goto_3
    and-int/lit16 v5, v14, 0x180

    if-nez v5, :cond_8

    and-int/lit8 v5, v15, 0x4

    if-nez v5, :cond_6

    move-object/from16 v5, p2

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v5, p2

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v2, v6

    goto :goto_5

    :cond_8
    move-object/from16 v5, p2

    :goto_5
    and-int/lit16 v6, v14, 0xc00

    if-nez v6, :cond_b

    and-int/lit8 v6, v15, 0x8

    if-nez v6, :cond_9

    move-wide/from16 v6, p3

    invoke-interface {v12, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v6, p3

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v2, v8

    goto :goto_7

    :cond_b
    move-wide/from16 v6, p3

    :goto_7
    and-int/lit16 v8, v14, 0x6000

    if-nez v8, :cond_e

    and-int/lit8 v8, v15, 0x10

    if-nez v8, :cond_c

    move-wide/from16 v8, p5

    invoke-interface {v12, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v10, 0x4000

    goto :goto_8

    :cond_c
    move-wide/from16 v8, p5

    :cond_d
    const/16 v10, 0x2000

    :goto_8
    or-int/2addr v2, v10

    goto :goto_9

    :cond_e
    move-wide/from16 v8, p5

    :goto_9
    and-int/lit8 v10, v15, 0x20

    const/high16 v11, 0x30000

    if-eqz v10, :cond_10

    or-int/2addr v2, v11

    :cond_f
    move/from16 v11, p7

    goto :goto_b

    :cond_10
    and-int/2addr v11, v14

    if-nez v11, :cond_f

    move/from16 v11, p7

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v13

    if-eqz v13, :cond_11

    const/high16 v13, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v13, 0x10000

    :goto_a
    or-int/2addr v2, v13

    :goto_b
    and-int/lit8 v13, v15, 0x40

    const/high16 v16, 0x180000

    if-eqz v13, :cond_12

    or-int v2, v2, v16

    move-object/from16 v0, p8

    goto :goto_d

    :cond_12
    and-int v16, v14, v16

    move-object/from16 v0, p8

    if-nez v16, :cond_14

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v17, 0x80000

    :goto_c
    or-int v2, v2, v17

    :cond_14
    :goto_d
    and-int/lit16 v0, v15, 0x80

    const/high16 v17, 0xc00000

    if-eqz v0, :cond_16

    or-int v2, v2, v17

    :cond_15
    move/from16 v17, v0

    move-object/from16 v0, p9

    goto :goto_f

    :cond_16
    and-int v17, v14, v17

    if-nez v17, :cond_15

    move/from16 v17, v0

    move-object/from16 v0, p9

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_17
    const/high16 v18, 0x400000

    :goto_e
    or-int v2, v2, v18

    :goto_f
    and-int/lit16 v0, v15, 0x100

    const/high16 v18, 0x6000000

    if-eqz v0, :cond_19

    or-int v2, v2, v18

    :cond_18
    move/from16 v18, v0

    move/from16 v0, p10

    goto :goto_11

    :cond_19
    and-int v18, v14, v18

    if-nez v18, :cond_18

    move/from16 v18, v0

    move/from16 v0, p10

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_1a

    const/high16 v19, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v19, 0x2000000

    :goto_10
    or-int v2, v2, v19

    :goto_11
    and-int/lit16 v0, v15, 0x200

    const/high16 v19, 0x30000000

    if-eqz v0, :cond_1c

    or-int v2, v2, v19

    :cond_1b
    move-object/from16 v0, p11

    goto :goto_13

    :cond_1c
    and-int v0, v14, v19

    if-nez v0, :cond_1b

    move-object/from16 v0, p11

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    const/high16 v19, 0x20000000

    goto :goto_12

    :cond_1d
    const/high16 v19, 0x10000000

    :goto_12
    or-int v2, v2, v19

    :goto_13
    const v19, 0x12492493

    and-int v0, v2, v19

    move/from16 p12, v3

    const v3, 0x12492492

    const/4 v4, 0x1

    if-eq v0, v3, :cond_1e

    move v0, v4

    goto :goto_14

    :cond_1e
    const/4 v0, 0x0

    :goto_14
    and-int/lit8 v3, v2, 0x1

    invoke-interface {v12, v0, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v14, 0x1

    const v3, -0xe001

    if-eqz v0, :cond_23

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_15

    :cond_1f
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v15, 0x4

    if-eqz v0, :cond_20

    and-int/lit16 v2, v2, -0x381

    :cond_20
    and-int/lit8 v0, v15, 0x8

    if-eqz v0, :cond_21

    and-int/lit16 v2, v2, -0x1c01

    :cond_21
    and-int/lit8 v0, v15, 0x10

    if-eqz v0, :cond_22

    and-int/2addr v2, v3

    :cond_22
    move-wide/from16 v21, v8

    move-object v8, v5

    move-wide/from16 v4, v21

    move v0, v11

    move v11, v2

    move-wide v2, v6

    move v6, v0

    move-object/from16 v0, p1

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v7, p10

    goto/16 :goto_1d

    :cond_23
    :goto_15
    if-eqz p12, :cond_24

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_16

    :cond_24
    move-object/from16 v0, p1

    :goto_16
    and-int/lit8 v20, v15, 0x4

    move/from16 p12, v3

    if-eqz v20, :cond_25

    const/4 v3, 0x0

    invoke-static {v3, v12, v3, v4}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v3

    and-int/lit16 v2, v2, -0x381

    goto :goto_17

    :cond_25
    move-object v3, v5

    :goto_17
    and-int/lit8 v5, v15, 0x8

    const/4 v4, 0x6

    if-eqz v5, :cond_26

    sget-object v5, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v5, v12, v4}, Landroidx/compose/material3/TabRowDefaults;->getPrimaryContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    and-int/lit16 v2, v2, -0x1c01

    goto :goto_18

    :cond_26
    move-wide v5, v6

    :goto_18
    and-int/lit8 v7, v15, 0x10

    if-eqz v7, :cond_27

    sget-object v7, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v7, v12, v4}, Landroidx/compose/material3/TabRowDefaults;->getPrimaryContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    and-int v2, v2, p12

    goto :goto_19

    :cond_27
    move-wide v7, v8

    :goto_19
    if-eqz v10, :cond_28

    sget-object v4, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v4}, Landroidx/compose/material3/TabRowDefaults;->getScrollableTabRowEdgeStartPadding-D9Ej5fM()F

    move-result v4

    goto :goto_1a

    :cond_28
    move v4, v11

    :goto_1a
    if-eqz v13, :cond_29

    new-instance v9, Landroidx/compose/material3/TabRowKt$PrimaryScrollableTabRow$1;

    invoke-direct {v9, v1}, Landroidx/compose/material3/TabRowKt$PrimaryScrollableTabRow$1;-><init>(I)V

    const/16 v10, 0x36

    const v11, 0x31c9af8f

    const/4 v13, 0x1

    invoke-static {v11, v13, v9, v12, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v9

    goto :goto_1b

    :cond_29
    move-object/from16 v9, p8

    :goto_1b
    if-eqz v17, :cond_2a

    sget-object v10, Landroidx/compose/material3/ComposableSingletons$TabRowKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$TabRowKt;

    invoke-virtual {v10}, Landroidx/compose/material3/ComposableSingletons$TabRowKt;->getLambda$-773954579$material3()Lbm3;

    move-result-object v10

    goto :goto_1c

    :cond_2a
    move-object/from16 v10, p9

    :goto_1c
    if-eqz v18, :cond_2b

    sget-object v11, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v11}, Landroidx/compose/material3/TabRowDefaults;->getScrollableTabRowMinTabWidth-D9Ej5fM()F

    move-result v11

    move/from16 v21, v11

    move v11, v2

    move-wide/from16 v22, v7

    move-object v8, v3

    move-wide v2, v5

    move/from16 v7, v21

    move v6, v4

    move-wide/from16 v4, v22

    goto :goto_1d

    :cond_2b
    move v11, v2

    move-wide/from16 v21, v7

    move/from16 v7, p10

    move-object v8, v3

    move-wide v2, v5

    move v6, v4

    move-wide/from16 v4, v21

    :goto_1d
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v13

    if-eqz v13, :cond_2c

    const/4 v13, -0x1

    move-object/from16 p1, v0

    const-string v0, "androidx.compose.material3.PrimaryScrollableTabRow (TabRow.kt:269)"

    const v1, 0x1adf69a0

    invoke-static {v1, v11, v13, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_1e

    :cond_2c
    move-object/from16 p1, v0

    :goto_1e
    and-int/lit8 v0, v11, 0x7e

    shr-int/lit8 v1, v11, 0x3

    and-int/lit16 v13, v1, 0x380

    or-int/2addr v0, v13

    and-int/lit16 v13, v1, 0x1c00

    or-int/2addr v0, v13

    const v13, 0xe000

    and-int/2addr v1, v13

    or-int/2addr v0, v1

    shr-int/lit8 v1, v11, 0x9

    const/high16 v13, 0x70000

    and-int/2addr v1, v13

    or-int/2addr v0, v1

    shl-int/lit8 v1, v11, 0xc

    const/high16 v13, 0x380000

    and-int/2addr v1, v13

    or-int/2addr v0, v1

    shl-int/lit8 v1, v11, 0x3

    const/high16 v13, 0x1c00000

    and-int/2addr v13, v1

    or-int/2addr v0, v13

    const/high16 v13, 0xe000000

    and-int/2addr v1, v13

    or-int/2addr v0, v1

    const/high16 v1, 0x70000000

    and-int/2addr v1, v11

    or-int v13, v0, v1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p11

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/TabRowKt;->ScrollableTabRowImpl-xam5sdo(ILandroidx/compose/ui/Modifier;JJFFLandroidx/compose/foundation/ScrollState;Ldm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2d
    move v11, v7

    move-wide/from16 v21, v2

    move-object v2, v1

    move-object v3, v8

    move v8, v6

    move-wide v6, v4

    move-wide/from16 v4, v21

    goto :goto_1f

    :cond_2e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-object/from16 v10, p9

    move-object v3, v5

    move-wide v4, v6

    move-wide v6, v8

    move v8, v11

    move-object/from16 v9, p8

    move/from16 v11, p10

    :goto_1f
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_2f

    move-object v1, v0

    new-instance v0, Lyi8;

    move-object/from16 v12, p11

    move v13, v14

    move v14, v15

    move-object v15, v1

    move/from16 v1, p0

    invoke-direct/range {v0 .. v14}, Lyi8;-><init>(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;FLbm3;II)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_2f
    return-void
.end method

.method public static final synthetic PrimaryScrollableTabRow-qhFBPw4(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .annotation runtime Lul2;
    .end annotation

    move/from16 v2, p0

    move/from16 v15, p12

    move/from16 v0, p13

    const v1, 0x597969ee

    move-object/from16 v3, p11

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v15, 0x6

    if-nez v3, :cond_2

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v15

    goto :goto_1

    :cond_2
    move v3, v15

    :goto_1
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v5, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v5, v15, 0x30

    if-nez v5, :cond_3

    move-object/from16 v5, p1

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto :goto_2

    :cond_5
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :goto_3
    and-int/lit16 v6, v15, 0x180

    if-nez v6, :cond_8

    and-int/lit8 v6, v0, 0x4

    if-nez v6, :cond_6

    move-object/from16 v6, p2

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v6, p2

    :cond_7
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v3, v7

    goto :goto_5

    :cond_8
    move-object/from16 v6, p2

    :goto_5
    and-int/lit16 v7, v15, 0xc00

    if-nez v7, :cond_b

    and-int/lit8 v7, v0, 0x8

    if-nez v7, :cond_9

    move-wide/from16 v7, p3

    invoke-interface {v12, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v7, p3

    :cond_a
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v3, v9

    goto :goto_7

    :cond_b
    move-wide/from16 v7, p3

    :goto_7
    and-int/lit16 v9, v15, 0x6000

    if-nez v9, :cond_e

    and-int/lit8 v9, v0, 0x10

    if-nez v9, :cond_c

    move-wide/from16 v9, p5

    invoke-interface {v12, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v11

    if-eqz v11, :cond_d

    const/16 v11, 0x4000

    goto :goto_8

    :cond_c
    move-wide/from16 v9, p5

    :cond_d
    const/16 v11, 0x2000

    :goto_8
    or-int/2addr v3, v11

    goto :goto_9

    :cond_e
    move-wide/from16 v9, p5

    :goto_9
    and-int/lit8 v11, v0, 0x20

    const/high16 v13, 0x30000

    if-eqz v11, :cond_10

    or-int/2addr v3, v13

    :cond_f
    move/from16 v13, p7

    goto :goto_b

    :cond_10
    and-int/2addr v13, v15

    if-nez v13, :cond_f

    move/from16 v13, p7

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v14

    if-eqz v14, :cond_11

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v3, v14

    :goto_b
    and-int/lit8 v14, v0, 0x40

    const/high16 v16, 0x180000

    if-eqz v14, :cond_12

    or-int v3, v3, v16

    move-object/from16 v1, p8

    goto :goto_d

    :cond_12
    and-int v16, v15, v16

    move-object/from16 v1, p8

    if-nez v16, :cond_14

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v17, 0x80000

    :goto_c
    or-int v3, v3, v17

    :cond_14
    :goto_d
    and-int/lit16 v1, v0, 0x80

    const/high16 v17, 0xc00000

    if-eqz v1, :cond_16

    or-int v3, v3, v17

    :cond_15
    move/from16 v17, v1

    move-object/from16 v1, p9

    goto :goto_f

    :cond_16
    and-int v17, v15, v17

    if-nez v17, :cond_15

    move/from16 v17, v1

    move-object/from16 v1, p9

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_17
    const/high16 v18, 0x400000

    :goto_e
    or-int v3, v3, v18

    :goto_f
    and-int/lit16 v1, v0, 0x100

    const/high16 v18, 0x6000000

    if-eqz v1, :cond_19

    or-int v3, v3, v18

    :cond_18
    move-object/from16 v1, p10

    goto :goto_11

    :cond_19
    and-int v1, v15, v18

    if-nez v1, :cond_18

    move-object/from16 v1, p10

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    const/high16 v19, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v19, 0x2000000

    :goto_10
    or-int v3, v3, v19

    :goto_11
    const v19, 0x2492493

    and-int v0, v3, v19

    const v1, 0x2492492

    move/from16 p11, v4

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1b

    move v0, v4

    goto :goto_12

    :cond_1b
    const/4 v0, 0x0

    :goto_12
    and-int/lit8 v1, v3, 0x1

    invoke-interface {v12, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v15, 0x1

    const v1, -0xe001

    if-eqz v0, :cond_20

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_14

    :cond_1c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p13, 0x4

    if-eqz v0, :cond_1d

    and-int/lit16 v3, v3, -0x381

    :cond_1d
    and-int/lit8 v0, p13, 0x8

    if-eqz v0, :cond_1e

    and-int/lit16 v3, v3, -0x1c01

    :cond_1e
    and-int/lit8 v0, p13, 0x10

    if-eqz v0, :cond_1f

    and-int/2addr v3, v1

    :cond_1f
    move v0, v3

    move-object v1, v5

    move-object v2, v6

    move-wide v3, v7

    move-wide v5, v9

    move v7, v13

    move-object/from16 v8, p8

    :goto_13
    move-object/from16 v9, p9

    goto/16 :goto_16

    :cond_20
    :goto_14
    if-eqz p11, :cond_21

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v5, v0

    :cond_21
    and-int/lit8 v0, p13, 0x4

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    invoke-static {v0, v12, v0, v4}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v0

    and-int/lit16 v3, v3, -0x381

    move-object v6, v0

    :cond_22
    and-int/lit8 v0, p13, 0x8

    move/from16 p11, v1

    const/4 v1, 0x6

    if-eqz v0, :cond_23

    sget-object v0, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v0, v12, v1}, Landroidx/compose/material3/TabRowDefaults;->getPrimaryContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    and-int/lit16 v3, v3, -0x1c01

    :cond_23
    and-int/lit8 v0, p13, 0x10

    if-eqz v0, :cond_24

    sget-object v0, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v0, v12, v1}, Landroidx/compose/material3/TabRowDefaults;->getPrimaryContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v0

    and-int v3, v3, p11

    move-wide v9, v0

    :cond_24
    if-eqz v11, :cond_25

    sget-object v0, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/TabRowDefaults;->getScrollableTabRowEdgeStartPadding-D9Ej5fM()F

    move-result v0

    move v13, v0

    :cond_25
    if-eqz v14, :cond_26

    new-instance v0, Landroidx/compose/material3/TabRowKt$PrimaryScrollableTabRow$3;

    invoke-direct {v0, v2}, Landroidx/compose/material3/TabRowKt$PrimaryScrollableTabRow$3;-><init>(I)V

    const/16 v1, 0x36

    const v11, -0x6f947da1

    invoke-static {v11, v4, v0, v12, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    goto :goto_15

    :cond_26
    move-object/from16 v0, p8

    :goto_15
    if-eqz v17, :cond_27

    sget-object v1, Landroidx/compose/material3/ComposableSingletons$TabRowKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$TabRowKt;

    invoke-virtual {v1}, Landroidx/compose/material3/ComposableSingletons$TabRowKt;->getLambda$-306947391$material3()Lbm3;

    move-result-object v1

    move-wide/from16 v20, v7

    move-object v8, v0

    move v0, v3

    move-wide/from16 v3, v20

    move-object v2, v6

    move v7, v13

    move-wide/from16 v20, v9

    move-object v9, v1

    move-object v1, v5

    move-wide/from16 v5, v20

    goto :goto_16

    :cond_27
    move-wide v1, v7

    move-object v8, v0

    move v0, v3

    move-wide v3, v1

    move-object v1, v5

    move-object v2, v6

    move-wide v5, v9

    move v7, v13

    goto :goto_13

    :goto_16
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_28

    const/4 v10, -0x1

    const-string v11, "androidx.compose.material3.PrimaryScrollableTabRow (TabRow.kt:1205)"

    const v13, 0x597969ee

    invoke-static {v13, v0, v10, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_28
    sget-object v10, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v10}, Landroidx/compose/material3/TabRowDefaults;->getScrollableTabRowMinTabWidth-D9Ej5fM()F

    move-result v10

    and-int/lit8 v11, v0, 0xe

    or-int v11, v11, v18

    and-int/lit8 v13, v0, 0x70

    or-int/2addr v11, v13

    and-int/lit16 v13, v0, 0x380

    or-int/2addr v11, v13

    and-int/lit16 v13, v0, 0x1c00

    or-int/2addr v11, v13

    const v13, 0xe000

    and-int/2addr v13, v0

    or-int/2addr v11, v13

    const/high16 v13, 0x70000

    and-int/2addr v13, v0

    or-int/2addr v11, v13

    const/high16 v13, 0x380000

    and-int/2addr v13, v0

    or-int/2addr v11, v13

    const/high16 v13, 0x1c00000

    and-int/2addr v13, v0

    or-int/2addr v11, v13

    shl-int/lit8 v0, v0, 0x3

    const/high16 v13, 0x70000000

    and-int/2addr v0, v13

    or-int v13, v11, v0

    const/4 v14, 0x0

    move/from16 v0, p0

    move-object/from16 v11, p10

    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/TabRowKt;->PrimaryScrollableTabRow-cx2KkNY(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;FLbm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_29
    move-object v13, v1

    move v1, v7

    move-object v11, v8

    move-object v0, v12

    move-object v12, v2

    move-wide v7, v5

    move-wide v5, v3

    goto :goto_17

    :cond_2a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v11, p8

    move-object v0, v12

    move v1, v13

    move-object v13, v5

    move-object v12, v6

    move-wide v5, v7

    move-wide v7, v9

    move-object/from16 v9, p9

    :goto_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_2b

    new-instance v0, Lcj8;

    move/from16 v2, p0

    move-object/from16 v10, p10

    move/from16 v4, p13

    move v3, v15

    invoke-direct/range {v0 .. v13}, Lcj8;-><init>(FIIIJJLbm3;Lbm3;Ldm3;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/Modifier;)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_2b
    return-void
.end method

.method private static final PrimaryScrollableTabRow_cx2KkNY$lambda$2(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;FLbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 16

    or-int/lit8 v0, p12, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v15, p13

    move-object/from16 v13, p14

    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/TabRowKt;->PrimaryScrollableTabRow-cx2KkNY(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;FLbm3;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final PrimaryScrollableTabRow_qhFBPw4$lambda$8(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 15

    or-int/lit8 v0, p11, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v13

    move v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v14, p12

    move-object/from16 v12, p13

    invoke-static/range {v1 .. v14}, Landroidx/compose/material3/TabRowKt;->PrimaryScrollableTabRow-qhFBPw4(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final PrimaryTabRow-pAZo6Ak(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Ldm3<",
            "-",
            "Landroidx/compose/material3/TabIndicatorScope;",
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

    move/from16 v1, p0

    move/from16 v10, p10

    const v0, -0x3c60c28d

    move-object/from16 v2, p9

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    and-int/lit8 v3, p11, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v10, 0x6

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v10

    goto :goto_1

    :cond_2
    move v3, v10

    :goto_1
    and-int/lit8 v4, p11, 0x2

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v5, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v5, v10, 0x30

    if-nez v5, :cond_3

    move-object/from16 v5, p1

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto :goto_2

    :cond_5
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :goto_3
    and-int/lit16 v6, v10, 0x180

    if-nez v6, :cond_8

    and-int/lit8 v6, p11, 0x4

    if-nez v6, :cond_6

    move-wide/from16 v6, p2

    invoke-interface {v2, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v6, p2

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v3, v8

    goto :goto_5

    :cond_8
    move-wide/from16 v6, p2

    :goto_5
    and-int/lit16 v8, v10, 0xc00

    if-nez v8, :cond_b

    and-int/lit8 v8, p11, 0x8

    if-nez v8, :cond_9

    move-wide/from16 v8, p4

    invoke-interface {v2, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v8, p4

    :cond_a
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v3, v11

    goto :goto_7

    :cond_b
    move-wide/from16 v8, p4

    :goto_7
    and-int/lit8 v11, p11, 0x10

    if-eqz v11, :cond_d

    or-int/lit16 v3, v3, 0x6000

    :cond_c
    move-object/from16 v12, p6

    goto :goto_9

    :cond_d
    and-int/lit16 v12, v10, 0x6000

    if-nez v12, :cond_c

    move-object/from16 v12, p6

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/16 v13, 0x4000

    goto :goto_8

    :cond_e
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v3, v13

    :goto_9
    and-int/lit8 v13, p11, 0x20

    const/high16 v14, 0x30000

    if-eqz v13, :cond_10

    or-int/2addr v3, v14

    :cond_f
    move-object/from16 v14, p7

    goto :goto_b

    :cond_10
    and-int/2addr v14, v10

    if-nez v14, :cond_f

    move-object/from16 v14, p7

    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v3, v15

    :goto_b
    and-int/lit8 v15, p11, 0x40

    const/high16 v16, 0x180000

    if-eqz v15, :cond_13

    or-int v3, v3, v16

    :cond_12
    move-object/from16 v15, p8

    goto :goto_d

    :cond_13
    and-int v15, v10, v16

    if-nez v15, :cond_12

    move-object/from16 v15, p8

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_14
    const/high16 v16, 0x80000

    :goto_c
    or-int v3, v3, v16

    :goto_d
    const v16, 0x92493

    and-int v0, v3, v16

    move/from16 p9, v4

    const v4, 0x92492

    if-eq v0, v4, :cond_15

    const/4 v0, 0x1

    goto :goto_e

    :cond_15
    const/4 v0, 0x0

    :goto_e
    and-int/lit8 v4, v3, 0x1

    invoke-interface {v2, v0, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_19

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_f

    :cond_16
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_17

    and-int/lit16 v3, v3, -0x381

    :cond_17
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_18

    and-int/lit16 v3, v3, -0x1c01

    :cond_18
    move-object/from16 v11, p1

    move-object/from16 v16, v12

    move-object/from16 v17, v14

    const v0, -0x3c60c28d

    move-wide v12, v6

    move-wide v14, v8

    goto :goto_13

    :cond_19
    :goto_f
    if-eqz p9, :cond_1a

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_10

    :cond_1a
    move-object/from16 v0, p1

    :goto_10
    and-int/lit8 v4, p11, 0x4

    const/4 v5, 0x6

    if-eqz v4, :cond_1b

    sget-object v4, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v4, v2, v5}, Landroidx/compose/material3/TabRowDefaults;->getPrimaryContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v6

    and-int/lit16 v3, v3, -0x381

    :cond_1b
    and-int/lit8 v4, p11, 0x8

    if-eqz v4, :cond_1c

    sget-object v4, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v4, v2, v5}, Landroidx/compose/material3/TabRowDefaults;->getPrimaryContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    and-int/lit16 v3, v3, -0x1c01

    goto :goto_11

    :cond_1c
    move-wide v4, v8

    :goto_11
    if-eqz v11, :cond_1d

    new-instance v8, Landroidx/compose/material3/TabRowKt$PrimaryTabRow$1;

    invoke-direct {v8, v1}, Landroidx/compose/material3/TabRowKt$PrimaryTabRow$1;-><init>(I)V

    const/16 v9, 0x36

    const v11, 0x4fc46fe2

    const/4 v12, 0x1

    invoke-static {v11, v12, v8, v2, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v8

    goto :goto_12

    :cond_1d
    move-object v8, v12

    :goto_12
    if-eqz v13, :cond_1e

    sget-object v9, Landroidx/compose/material3/ComposableSingletons$TabRowKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$TabRowKt;

    invoke-virtual {v9}, Landroidx/compose/material3/ComposableSingletons$TabRowKt;->getLambda$-1429684928$material3()Lbm3;

    move-result-object v9

    move-object v11, v0

    move-wide v14, v4

    move-wide v12, v6

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    const v0, -0x3c60c28d

    goto :goto_13

    :cond_1e
    move-object v11, v0

    move-wide v12, v6

    move-object/from16 v16, v8

    move-object/from16 v17, v14

    const v0, -0x3c60c28d

    move-wide v14, v4

    :goto_13
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, -0x1

    const-string v5, "androidx.compose.material3.PrimaryTabRow (TabRow.kt:162)"

    invoke-static {v0, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1f
    shr-int/lit8 v0, v3, 0x3

    const v3, 0x7fffe

    and-int v20, v0, v3

    move-object/from16 v18, p8

    move-object/from16 v19, v2

    invoke-static/range {v11 .. v20}, Landroidx/compose/material3/TabRowKt;->TabRowImpl-DTcfvLk(Landroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_20
    move-object v2, v11

    move-wide v3, v12

    move-wide v5, v14

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    goto :goto_14

    :cond_21
    move-object/from16 v19, v2

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-wide v3, v6

    move-wide v5, v8

    move-object v7, v12

    move-object v8, v14

    :goto_14
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_22

    new-instance v0, Lej8;

    move-object/from16 v9, p8

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lej8;-><init>(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;II)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_22
    return-void
.end method

.method private static final PrimaryTabRow_pAZo6Ak$lambda$0(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 13

    or-int/lit8 v0, p9, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    move v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v12, p10

    move-object/from16 v10, p11

    invoke-static/range {v1 .. v12}, Landroidx/compose/material3/TabRowKt;->PrimaryTabRow-pAZo6Ak(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final ScrollableTabRow-sKfQg0A(ILandroidx/compose/ui/Modifier;JJFLdm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "JJF",
            "Ldm3<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;-",
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

    .annotation runtime Lul2;
    .end annotation

    move/from16 v0, p0

    move/from16 v14, p11

    move/from16 v15, p12

    const v1, 0x327cf4bc

    move-object/from16 v2, p10

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    and-int/lit8 v2, v15, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v14, 0x6

    if-nez v2, :cond_2

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

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
    and-int/lit8 v3, v15, 0x2

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x30

    :cond_3
    move-object/from16 v4, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v4, v14, 0x30

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
    and-int/lit16 v5, v14, 0x180

    if-nez v5, :cond_8

    and-int/lit8 v5, v15, 0x4

    if-nez v5, :cond_6

    move-wide/from16 v5, p2

    invoke-interface {v11, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v5, p2

    :cond_7
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v2, v7

    goto :goto_5

    :cond_8
    move-wide/from16 v5, p2

    :goto_5
    and-int/lit16 v7, v14, 0xc00

    if-nez v7, :cond_b

    and-int/lit8 v7, v15, 0x8

    if-nez v7, :cond_9

    move-wide/from16 v7, p4

    invoke-interface {v11, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v7, p4

    :cond_a
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v2, v9

    goto :goto_7

    :cond_b
    move-wide/from16 v7, p4

    :goto_7
    and-int/lit8 v9, v15, 0x10

    if-eqz v9, :cond_d

    or-int/lit16 v2, v2, 0x6000

    :cond_c
    move/from16 v10, p6

    goto :goto_9

    :cond_d
    and-int/lit16 v10, v14, 0x6000

    if-nez v10, :cond_c

    move/from16 v10, p6

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v12

    if-eqz v12, :cond_e

    const/16 v12, 0x4000

    goto :goto_8

    :cond_e
    const/16 v12, 0x2000

    :goto_8
    or-int/2addr v2, v12

    :goto_9
    and-int/lit8 v12, v15, 0x20

    const/high16 v13, 0x30000

    if-eqz v12, :cond_10

    or-int/2addr v2, v13

    :cond_f
    move-object/from16 v13, p7

    goto :goto_b

    :cond_10
    and-int/2addr v13, v14

    if-nez v13, :cond_f

    move-object/from16 v13, p7

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v16, 0x10000

    :goto_a
    or-int v2, v2, v16

    :goto_b
    and-int/lit8 v16, v15, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_12

    or-int v2, v2, v17

    move-object/from16 v1, p8

    goto :goto_d

    :cond_12
    and-int v17, v14, v17

    move-object/from16 v1, p8

    if-nez v17, :cond_14

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v18, 0x80000

    :goto_c
    or-int v2, v2, v18

    :cond_14
    :goto_d
    and-int/lit16 v1, v15, 0x80

    const/high16 v18, 0xc00000

    if-eqz v1, :cond_16

    or-int v2, v2, v18

    :cond_15
    move-object/from16 v1, p9

    goto :goto_f

    :cond_16
    and-int v1, v14, v18

    if-nez v1, :cond_15

    move-object/from16 v1, p9

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_17
    const/high16 v18, 0x400000

    :goto_e
    or-int v2, v2, v18

    :goto_f
    const v18, 0x492493

    and-int v1, v2, v18

    move/from16 p10, v3

    const v3, 0x492492

    if-eq v1, v3, :cond_18

    const/4 v1, 0x1

    goto :goto_10

    :cond_18
    const/4 v1, 0x0

    :goto_10
    and-int/lit8 v3, v2, 0x1

    invoke-interface {v11, v1, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, v14, 0x1

    if-eqz v1, :cond_1c

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_12

    :cond_19
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, v15, 0x4

    if-eqz v1, :cond_1a

    and-int/lit16 v2, v2, -0x381

    :cond_1a
    and-int/lit8 v1, v15, 0x8

    if-eqz v1, :cond_1b

    and-int/lit16 v2, v2, -0x1c01

    :cond_1b
    move v9, v2

    move-wide v3, v5

    move-wide v5, v7

    move v7, v10

    move-object v1, v13

    move-object/from16 v2, p1

    :goto_11
    move-object/from16 v8, p8

    goto/16 :goto_17

    :cond_1c
    :goto_12
    if-eqz p10, :cond_1d

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_13

    :cond_1d
    move-object/from16 v1, p1

    :goto_13
    and-int/lit8 v3, v15, 0x4

    const/4 v4, 0x6

    if-eqz v3, :cond_1e

    sget-object v3, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v3, v11, v4}, Landroidx/compose/material3/TabRowDefaults;->getPrimaryContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    and-int/lit16 v2, v2, -0x381

    :cond_1e
    and-int/lit8 v3, v15, 0x8

    if-eqz v3, :cond_1f

    sget-object v3, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v3, v11, v4}, Landroidx/compose/material3/TabRowDefaults;->getPrimaryContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    and-int/lit16 v2, v2, -0x1c01

    goto :goto_14

    :cond_1f
    move-wide v3, v7

    :goto_14
    if-eqz v9, :cond_20

    sget-object v7, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v7}, Landroidx/compose/material3/TabRowDefaults;->getScrollableTabRowEdgeStartPadding-D9Ej5fM()F

    move-result v7

    goto :goto_15

    :cond_20
    move v7, v10

    :goto_15
    if-eqz v12, :cond_21

    new-instance v8, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$1;

    invoke-direct {v8, v0}, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$1;-><init>(I)V

    const/16 v9, 0x36

    const v10, -0x2af10f7f

    const/4 v12, 0x1

    invoke-static {v10, v12, v8, v11, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v8

    goto :goto_16

    :cond_21
    move-object v8, v13

    :goto_16
    if-eqz v16, :cond_22

    sget-object v9, Landroidx/compose/material3/ComposableSingletons$TabRowKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$TabRowKt;

    invoke-virtual {v9}, Landroidx/compose/material3/ComposableSingletons$TabRowKt;->getLambda$-358046007$material3()Lbm3;

    move-result-object v9

    move/from16 v19, v2

    move-object v2, v1

    move-object v1, v8

    move-object v8, v9

    move/from16 v9, v19

    move-wide/from16 v19, v5

    move-wide v5, v3

    move-wide/from16 v3, v19

    goto :goto_17

    :cond_22
    move-wide/from16 v19, v5

    move-wide v5, v3

    move-wide/from16 v3, v19

    move v9, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_11

    :goto_17
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_23

    const/4 v10, -0x1

    const-string v12, "androidx.compose.material3.ScrollableTabRow (TabRow.kt:1413)"

    const v13, 0x327cf4bc

    invoke-static {v13, v9, v10, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_23
    const/4 v10, 0x0

    const/4 v12, 0x1

    invoke-static {v10, v11, v10, v12}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v10

    and-int/lit8 v12, v9, 0xe

    shr-int/lit8 v13, v9, 0xc

    and-int/lit8 v13, v13, 0x70

    or-int/2addr v12, v13

    shl-int/lit8 v13, v9, 0x3

    and-int/lit16 v0, v13, 0x380

    or-int/2addr v0, v12

    and-int/lit16 v12, v13, 0x1c00

    or-int/2addr v0, v12

    const v12, 0xe000

    and-int/2addr v12, v13

    or-int/2addr v0, v12

    const/high16 v12, 0x70000

    and-int/2addr v12, v13

    or-int/2addr v0, v12

    const/high16 v12, 0x380000

    and-int/2addr v12, v9

    or-int/2addr v0, v12

    const/high16 v12, 0x1c00000

    and-int/2addr v9, v12

    or-int v12, v0, v9

    const/4 v13, 0x0

    move/from16 v0, p0

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/TabRowKt;->ScrollableTabRowWithSubcomposeImpl-qhFBPw4(ILdm3;Landroidx/compose/ui/Modifier;JJFLbm3;Lbm3;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_24
    move-object v9, v8

    move-object v8, v1

    goto :goto_18

    :cond_25
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-object/from16 v9, p8

    move-wide v3, v5

    move-wide v5, v7

    move v7, v10

    move-object v8, v13

    :goto_18
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_26

    new-instance v0, Lxi8;

    move/from16 v1, p0

    move-object/from16 v10, p9

    move v11, v14

    move v12, v15

    invoke-direct/range {v0 .. v12}, Lxi8;-><init>(ILandroidx/compose/ui/Modifier;JJFLdm3;Lbm3;Lbm3;II)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_26
    return-void
.end method

.method private static final ScrollableTabRowImpl-xam5sdo(ILandroidx/compose/ui/Modifier;JJFFLandroidx/compose/foundation/ScrollState;Ldm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;I)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "JJFF",
            "Landroidx/compose/foundation/ScrollState;",
            "Ldm3<",
            "-",
            "Landroidx/compose/material3/TabIndicatorScope;",
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

    move/from16 v13, p13

    const v0, 0x18ba463c

    move-object/from16 v1, p12

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    and-int/lit8 v2, v13, 0x6

    move/from16 v9, p0

    if-nez v2, :cond_1

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(I)Z

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
    and-int/lit8 v3, v13, 0x30

    move-object/from16 v14, p1

    if-nez v3, :cond_3

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_3
    and-int/lit16 v3, v13, 0x180

    move-wide/from16 v11, p2

    if-nez v3, :cond_5

    invoke-interface {v1, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x100

    goto :goto_3

    :cond_4
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v2, v3

    :cond_5
    and-int/lit16 v3, v13, 0xc00

    if-nez v3, :cond_7

    move-wide/from16 v3, p4

    invoke-interface {v1, v3, v4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x800

    goto :goto_4

    :cond_6
    const/16 v5, 0x400

    :goto_4
    or-int/2addr v2, v5

    goto :goto_5

    :cond_7
    move-wide/from16 v3, p4

    :goto_5
    and-int/lit16 v5, v13, 0x6000

    move/from16 v7, p6

    if-nez v5, :cond_9

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x4000

    goto :goto_6

    :cond_8
    const/16 v5, 0x2000

    :goto_6
    or-int/2addr v2, v5

    :cond_9
    const/high16 v5, 0x30000

    and-int/2addr v5, v13

    move/from16 v8, p7

    if-nez v5, :cond_b

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v5

    if-eqz v5, :cond_a

    const/high16 v5, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v5, 0x10000

    :goto_7
    or-int/2addr v2, v5

    :cond_b
    const/high16 v5, 0x180000

    and-int/2addr v5, v13

    if-nez v5, :cond_d

    move-object/from16 v5, p8

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/high16 v6, 0x100000

    goto :goto_8

    :cond_c
    const/high16 v6, 0x80000

    :goto_8
    or-int/2addr v2, v6

    goto :goto_9

    :cond_d
    move-object/from16 v5, p8

    :goto_9
    const/high16 v15, 0xc00000

    and-int v6, v13, v15

    move-object/from16 v10, p9

    if-nez v6, :cond_f

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/high16 v6, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v6, 0x400000

    :goto_a
    or-int/2addr v2, v6

    :cond_f
    const/high16 v6, 0x6000000

    and-int/2addr v6, v13

    if-nez v6, :cond_11

    move-object/from16 v6, p10

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v16, 0x2000000

    :goto_b
    or-int v2, v2, v16

    goto :goto_c

    :cond_11
    move-object/from16 v6, p10

    :goto_c
    const/high16 v16, 0x30000000

    and-int v16, v13, v16

    move/from16 p12, v15

    move-object/from16 v15, p11

    if-nez v16, :cond_13

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    const/high16 v16, 0x20000000

    goto :goto_d

    :cond_12
    const/high16 v16, 0x10000000

    :goto_d
    or-int v2, v2, v16

    :cond_13
    const v16, 0x12492493

    and-int v0, v2, v16

    const v3, 0x12492492

    if-eq v0, v3, :cond_14

    const/4 v0, 0x1

    goto :goto_e

    :cond_14
    const/4 v0, 0x0

    :goto_e
    and-int/lit8 v3, v2, 0x1

    invoke-interface {v1, v0, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, -0x1

    const-string v3, "androidx.compose.material3.ScrollableTabRowImpl (TabRow.kt:521)"

    const v4, 0x18ba463c

    invoke-static {v4, v2, v0, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_15
    new-instance v3, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1;

    move-object v4, v5

    move-object v5, v6

    move-object v6, v15

    const/4 v0, 0x1

    invoke-direct/range {v3 .. v10}, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1;-><init>(Landroidx/compose/foundation/ScrollState;Lbm3;Lbm3;FFILdm3;)V

    const/16 v4, 0x36

    const v5, 0x6ff5b981

    invoke-static {v5, v0, v3, v1, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v23

    shr-int/lit8 v0, v2, 0x3

    and-int/lit8 v0, v0, 0xe

    or-int v0, v0, p12

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0x1c00

    or-int v25, v0, v2

    const/16 v26, 0x72

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-wide/from16 v18, p4

    move-object/from16 v24, v1

    move-wide/from16 v16, v11

    invoke-static/range {v14 .. v26}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lbm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_f

    :cond_16
    move-object/from16 v24, v1

    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_17
    :goto_f
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_18

    new-instance v0, Ldj8;

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Ldj8;-><init>(ILandroidx/compose/ui/Modifier;JJFFLandroidx/compose/foundation/ScrollState;Ldm3;Lbm3;Lbm3;I)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_18
    return-void
.end method

.method private static final ScrollableTabRowImpl_xam5sdo$lambda$5(ILandroidx/compose/ui/Modifier;JJFFLandroidx/compose/foundation/ScrollState;Ldm3;Lbm3;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 15

    or-int/lit8 v0, p12, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    move v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p13

    invoke-static/range {v1 .. v14}, Landroidx/compose/material3/TabRowKt;->ScrollableTabRowImpl-xam5sdo(ILandroidx/compose/ui/Modifier;JJFFLandroidx/compose/foundation/ScrollState;Ldm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ScrollableTabRowWithSubcomposeImpl-qhFBPw4(ILdm3;Landroidx/compose/ui/Modifier;JJFLbm3;Lbm3;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;II)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ldm3<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "JJF",
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
            "Landroidx/compose/foundation/ScrollState;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move/from16 v3, p12

    move/from16 v4, p13

    const v0, 0x35c017ac

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    and-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v3, 0x6

    move/from16 v2, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v3, 0x6

    move/from16 v2, p0

    if-nez v1, :cond_2

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v11, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v3, 0x30

    move-object/from16 v11, p1

    if-nez v5, :cond_5

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    :cond_5
    :goto_3
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_7

    or-int/lit16 v1, v1, 0x180

    :cond_6
    move-object/from16 v6, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v6, v3, 0x180

    if-nez v6, :cond_6

    move-object/from16 v6, p2

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x100

    goto :goto_4

    :cond_8
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v1, v7

    :goto_5
    and-int/lit16 v7, v3, 0xc00

    if-nez v7, :cond_b

    and-int/lit8 v7, v4, 0x8

    if-nez v7, :cond_9

    move-wide/from16 v7, p3

    invoke-interface {v15, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v7, p3

    :cond_a
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v1, v9

    goto :goto_7

    :cond_b
    move-wide/from16 v7, p3

    :goto_7
    and-int/lit16 v9, v3, 0x6000

    if-nez v9, :cond_e

    and-int/lit8 v9, v4, 0x10

    if-nez v9, :cond_c

    move-wide/from16 v9, p5

    invoke-interface {v15, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v12

    if-eqz v12, :cond_d

    const/16 v12, 0x4000

    goto :goto_8

    :cond_c
    move-wide/from16 v9, p5

    :cond_d
    const/16 v12, 0x2000

    :goto_8
    or-int/2addr v1, v12

    goto :goto_9

    :cond_e
    move-wide/from16 v9, p5

    :goto_9
    and-int/lit8 v12, v4, 0x20

    const/high16 v13, 0x30000

    if-eqz v12, :cond_10

    or-int/2addr v1, v13

    :cond_f
    move/from16 v13, p7

    goto :goto_b

    :cond_10
    and-int/2addr v13, v3

    if-nez v13, :cond_f

    move/from16 v13, p7

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v14

    if-eqz v14, :cond_11

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v1, v14

    :goto_b
    and-int/lit8 v14, v4, 0x40

    const/high16 v16, 0x180000

    if-eqz v14, :cond_12

    or-int v1, v1, v16

    move-object/from16 v0, p8

    goto :goto_d

    :cond_12
    and-int v16, v3, v16

    move-object/from16 v0, p8

    if-nez v16, :cond_14

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v17, 0x80000

    :goto_c
    or-int v1, v1, v17

    :cond_14
    :goto_d
    and-int/lit16 v0, v4, 0x80

    const/high16 v17, 0xc00000

    if-eqz v0, :cond_16

    or-int v1, v1, v17

    :cond_15
    move-object/from16 v0, p9

    goto :goto_f

    :cond_16
    and-int v0, v3, v17

    if-nez v0, :cond_15

    move-object/from16 v0, p9

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_17
    const/high16 v18, 0x400000

    :goto_e
    or-int v1, v1, v18

    :goto_f
    and-int/lit16 v0, v4, 0x100

    const/high16 v18, 0x6000000

    if-eqz v0, :cond_19

    or-int v1, v1, v18

    :cond_18
    move-object/from16 v0, p10

    goto :goto_11

    :cond_19
    and-int v0, v3, v18

    if-nez v0, :cond_18

    move-object/from16 v0, p10

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    const/high16 v18, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v18, 0x2000000

    :goto_10
    or-int v1, v1, v18

    :goto_11
    const v18, 0x2492493

    and-int v0, v1, v18

    const v2, 0x2492492

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1b

    move v0, v3

    goto :goto_12

    :cond_1b
    const/4 v0, 0x0

    :goto_12
    and-int/lit8 v2, v1, 0x1

    invoke-interface {v15, v0, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, p12, 0x1

    const v2, -0xe001

    if-eqz v0, :cond_1f

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_14

    :cond_1c
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v4, 0x8

    if-eqz v0, :cond_1d

    and-int/lit16 v1, v1, -0x1c01

    :cond_1d
    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_1e

    and-int/2addr v1, v2

    :cond_1e
    move-object/from16 v0, p8

    :goto_13
    move-object v5, v6

    goto :goto_15

    :cond_1f
    :goto_14
    if-eqz v5, :cond_20

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v6, v0

    :cond_20
    and-int/lit8 v0, v4, 0x8

    const/4 v5, 0x6

    if-eqz v0, :cond_21

    sget-object v0, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v0, v15, v5}, Landroidx/compose/material3/TabRowDefaults;->getPrimaryContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    and-int/lit16 v1, v1, -0x1c01

    :cond_21
    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_22

    sget-object v0, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v0, v15, v5}, Landroidx/compose/material3/TabRowDefaults;->getPrimaryContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    and-int v0, v1, v2

    move v1, v0

    :cond_22
    if-eqz v12, :cond_23

    sget-object v0, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/TabRowDefaults;->getScrollableTabRowEdgeStartPadding-D9Ej5fM()F

    move-result v0

    move v13, v0

    :cond_23
    if-eqz v14, :cond_1e

    sget-object v0, Landroidx/compose/material3/ComposableSingletons$TabRowKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$TabRowKt;

    invoke-virtual {v0}, Landroidx/compose/material3/ComposableSingletons$TabRowKt;->getLambda$2075817209$material3()Lbm3;

    move-result-object v0

    goto :goto_13

    :goto_15
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, -0x1

    const-string v6, "androidx.compose.material3.ScrollableTabRowWithSubcomposeImpl (TabRow.kt:834)"

    const v12, 0x35c017ac

    invoke-static {v12, v1, v2, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_24
    new-instance v2, Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1;

    move/from16 p8, p0

    move-object/from16 p5, p9

    move-object/from16 p3, p10

    move-object/from16 p6, v0

    move-object/from16 p2, v2

    move-object/from16 p7, v11

    move/from16 p4, v13

    invoke-direct/range {p2 .. p8}, Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1;-><init>(Landroidx/compose/foundation/ScrollState;FLbm3;Lbm3;Ldm3;I)V

    move-object/from16 v6, p2

    move/from16 v0, p4

    move-object/from16 v2, p6

    const/16 v11, 0x36

    const v12, 0x7bd05747

    invoke-static {v12, v3, v6, v15, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v14

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0xe

    or-int v3, v3, v17

    shr-int/lit8 v1, v1, 0x3

    and-int/lit16 v6, v1, 0x380

    or-int/2addr v3, v6

    and-int/lit16 v1, v1, 0x1c00

    or-int v16, v3, v1

    const/16 v17, 0x72

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v5 .. v17}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lbm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_25
    move v1, v0

    move-object v13, v5

    move-wide v5, v7

    move-wide v7, v9

    move-object v9, v2

    goto :goto_16

    :cond_26
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v1, v13

    move-object v13, v6

    move-wide v5, v7

    move-wide v7, v9

    move-object/from16 v9, p8

    :goto_16
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_27

    new-instance v0, Laj8;

    move/from16 v2, p0

    move-object/from16 v11, p1

    move-object/from16 v10, p9

    move-object/from16 v12, p10

    move/from16 v3, p12

    invoke-direct/range {v0 .. v13}, Laj8;-><init>(FIIIJJLbm3;Lbm3;Ldm3;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/Modifier;)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_27
    return-void
.end method

.method private static final ScrollableTabRowWithSubcomposeImpl_qhFBPw4$lambda$7(ILdm3;Landroidx/compose/ui/Modifier;JJFLbm3;Lbm3;Landroidx/compose/foundation/ScrollState;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 15

    or-int/lit8 v0, p11, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v13

    move v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v14, p12

    move-object/from16 v12, p13

    invoke-static/range {v1 .. v14}, Landroidx/compose/material3/TabRowKt;->ScrollableTabRowWithSubcomposeImpl-qhFBPw4(ILdm3;Landroidx/compose/ui/Modifier;JJFLbm3;Lbm3;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ScrollableTabRow_sKfQg0A$lambda$11(ILandroidx/compose/ui/Modifier;JJFLdm3;Lbm3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 14

    or-int/lit8 v0, p10, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    move v1, p0

    move-object v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v13, p11

    move-object/from16 v11, p12

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/TabRowKt;->ScrollableTabRow-sKfQg0A(ILandroidx/compose/ui/Modifier;JJFLdm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final SecondaryScrollableTabRow-cx2KkNY(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;FLbm3;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/ScrollState;",
            "JJF",
            "Ldm3<",
            "-",
            "Landroidx/compose/material3/TabIndicatorScope;",
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
            ">;F",
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

    move/from16 v1, p0

    move/from16 v14, p13

    move/from16 v15, p14

    const v0, 0x1ef0c212

    move-object/from16 v2, p12

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    and-int/lit8 v2, v15, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v14, 0x6

    if-nez v2, :cond_2

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

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
    and-int/lit8 v3, v15, 0x2

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x30

    :cond_3
    move-object/from16 v4, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v4, v14, 0x30

    if-nez v4, :cond_3

    move-object/from16 v4, p1

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x20

    goto :goto_2

    :cond_5
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    :goto_3
    and-int/lit16 v5, v14, 0x180

    if-nez v5, :cond_8

    and-int/lit8 v5, v15, 0x4

    if-nez v5, :cond_6

    move-object/from16 v5, p2

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v5, p2

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v2, v6

    goto :goto_5

    :cond_8
    move-object/from16 v5, p2

    :goto_5
    and-int/lit16 v6, v14, 0xc00

    if-nez v6, :cond_b

    and-int/lit8 v6, v15, 0x8

    if-nez v6, :cond_9

    move-wide/from16 v6, p3

    invoke-interface {v12, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v6, p3

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v2, v8

    goto :goto_7

    :cond_b
    move-wide/from16 v6, p3

    :goto_7
    and-int/lit16 v8, v14, 0x6000

    if-nez v8, :cond_e

    and-int/lit8 v8, v15, 0x10

    if-nez v8, :cond_c

    move-wide/from16 v8, p5

    invoke-interface {v12, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v10, 0x4000

    goto :goto_8

    :cond_c
    move-wide/from16 v8, p5

    :cond_d
    const/16 v10, 0x2000

    :goto_8
    or-int/2addr v2, v10

    goto :goto_9

    :cond_e
    move-wide/from16 v8, p5

    :goto_9
    and-int/lit8 v10, v15, 0x20

    const/high16 v11, 0x30000

    if-eqz v10, :cond_10

    or-int/2addr v2, v11

    :cond_f
    move/from16 v11, p7

    goto :goto_b

    :cond_10
    and-int/2addr v11, v14

    if-nez v11, :cond_f

    move/from16 v11, p7

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v13

    if-eqz v13, :cond_11

    const/high16 v13, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v13, 0x10000

    :goto_a
    or-int/2addr v2, v13

    :goto_b
    and-int/lit8 v13, v15, 0x40

    const/high16 v16, 0x180000

    if-eqz v13, :cond_12

    or-int v2, v2, v16

    move-object/from16 v0, p8

    goto :goto_d

    :cond_12
    and-int v16, v14, v16

    move-object/from16 v0, p8

    if-nez v16, :cond_14

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v17, 0x80000

    :goto_c
    or-int v2, v2, v17

    :cond_14
    :goto_d
    and-int/lit16 v0, v15, 0x80

    const/high16 v17, 0xc00000

    if-eqz v0, :cond_16

    or-int v2, v2, v17

    :cond_15
    move/from16 v17, v0

    move-object/from16 v0, p9

    goto :goto_f

    :cond_16
    and-int v17, v14, v17

    if-nez v17, :cond_15

    move/from16 v17, v0

    move-object/from16 v0, p9

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_17
    const/high16 v18, 0x400000

    :goto_e
    or-int v2, v2, v18

    :goto_f
    and-int/lit16 v0, v15, 0x100

    const/high16 v18, 0x6000000

    if-eqz v0, :cond_19

    or-int v2, v2, v18

    :cond_18
    move/from16 v18, v0

    move/from16 v0, p10

    goto :goto_11

    :cond_19
    and-int v18, v14, v18

    if-nez v18, :cond_18

    move/from16 v18, v0

    move/from16 v0, p10

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_1a

    const/high16 v19, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v19, 0x2000000

    :goto_10
    or-int v2, v2, v19

    :goto_11
    and-int/lit16 v0, v15, 0x200

    const/high16 v19, 0x30000000

    if-eqz v0, :cond_1c

    or-int v2, v2, v19

    :cond_1b
    move-object/from16 v0, p11

    goto :goto_13

    :cond_1c
    and-int v0, v14, v19

    if-nez v0, :cond_1b

    move-object/from16 v0, p11

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    const/high16 v19, 0x20000000

    goto :goto_12

    :cond_1d
    const/high16 v19, 0x10000000

    :goto_12
    or-int v2, v2, v19

    :goto_13
    const v19, 0x12492493

    and-int v0, v2, v19

    move/from16 p12, v3

    const v3, 0x12492492

    const/4 v4, 0x1

    if-eq v0, v3, :cond_1e

    move v0, v4

    goto :goto_14

    :cond_1e
    const/4 v0, 0x0

    :goto_14
    and-int/lit8 v3, v2, 0x1

    invoke-interface {v12, v0, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v14, 0x1

    const v3, -0xe001

    if-eqz v0, :cond_23

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_15

    :cond_1f
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v15, 0x4

    if-eqz v0, :cond_20

    and-int/lit16 v2, v2, -0x381

    :cond_20
    and-int/lit8 v0, v15, 0x8

    if-eqz v0, :cond_21

    and-int/lit16 v2, v2, -0x1c01

    :cond_21
    and-int/lit8 v0, v15, 0x10

    if-eqz v0, :cond_22

    and-int/2addr v2, v3

    :cond_22
    move-wide/from16 v21, v8

    move-object v8, v5

    move-wide/from16 v4, v21

    move v0, v11

    move v11, v2

    move-wide v2, v6

    move v6, v0

    move-object/from16 v0, p1

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v7, p10

    goto/16 :goto_1d

    :cond_23
    :goto_15
    if-eqz p12, :cond_24

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_16

    :cond_24
    move-object/from16 v0, p1

    :goto_16
    and-int/lit8 v20, v15, 0x4

    move/from16 p12, v3

    if-eqz v20, :cond_25

    const/4 v3, 0x0

    invoke-static {v3, v12, v3, v4}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v3

    and-int/lit16 v2, v2, -0x381

    goto :goto_17

    :cond_25
    move-object v3, v5

    :goto_17
    and-int/lit8 v5, v15, 0x8

    const/4 v4, 0x6

    if-eqz v5, :cond_26

    sget-object v5, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v5, v12, v4}, Landroidx/compose/material3/TabRowDefaults;->getSecondaryContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    and-int/lit16 v2, v2, -0x1c01

    goto :goto_18

    :cond_26
    move-wide v5, v6

    :goto_18
    and-int/lit8 v7, v15, 0x10

    if-eqz v7, :cond_27

    sget-object v7, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v7, v12, v4}, Landroidx/compose/material3/TabRowDefaults;->getSecondaryContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    and-int v2, v2, p12

    goto :goto_19

    :cond_27
    move-wide v7, v8

    :goto_19
    if-eqz v10, :cond_28

    sget-object v4, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v4}, Landroidx/compose/material3/TabRowDefaults;->getScrollableTabRowEdgeStartPadding-D9Ej5fM()F

    move-result v4

    goto :goto_1a

    :cond_28
    move v4, v11

    :goto_1a
    if-eqz v13, :cond_29

    new-instance v9, Landroidx/compose/material3/TabRowKt$SecondaryScrollableTabRow$1;

    invoke-direct {v9, v1}, Landroidx/compose/material3/TabRowKt$SecondaryScrollableTabRow$1;-><init>(I)V

    const/16 v10, 0x36

    const v11, 0x24614841

    const/4 v13, 0x1

    invoke-static {v11, v13, v9, v12, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v9

    goto :goto_1b

    :cond_29
    move-object/from16 v9, p8

    :goto_1b
    if-eqz v17, :cond_2a

    sget-object v10, Landroidx/compose/material3/ComposableSingletons$TabRowKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$TabRowKt;

    invoke-virtual {v10}, Landroidx/compose/material3/ComposableSingletons$TabRowKt;->getLambda$303717663$material3()Lbm3;

    move-result-object v10

    goto :goto_1c

    :cond_2a
    move-object/from16 v10, p9

    :goto_1c
    if-eqz v18, :cond_2b

    sget-object v11, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v11}, Landroidx/compose/material3/TabRowDefaults;->getScrollableTabRowMinTabWidth-D9Ej5fM()F

    move-result v11

    move/from16 v21, v11

    move v11, v2

    move-wide/from16 v22, v7

    move-object v8, v3

    move-wide v2, v5

    move/from16 v7, v21

    move v6, v4

    move-wide/from16 v4, v22

    goto :goto_1d

    :cond_2b
    move v11, v2

    move-wide/from16 v21, v7

    move/from16 v7, p10

    move-object v8, v3

    move-wide v2, v5

    move v6, v4

    move-wide/from16 v4, v21

    :goto_1d
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v13

    if-eqz v13, :cond_2c

    const/4 v13, -0x1

    move-object/from16 p1, v0

    const-string v0, "androidx.compose.material3.SecondaryScrollableTabRow (TabRow.kt:339)"

    const v1, 0x1ef0c212

    invoke-static {v1, v11, v13, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_1e

    :cond_2c
    move-object/from16 p1, v0

    :goto_1e
    and-int/lit8 v0, v11, 0x7e

    shr-int/lit8 v1, v11, 0x3

    and-int/lit16 v13, v1, 0x380

    or-int/2addr v0, v13

    and-int/lit16 v13, v1, 0x1c00

    or-int/2addr v0, v13

    const v13, 0xe000

    and-int/2addr v1, v13

    or-int/2addr v0, v1

    shr-int/lit8 v1, v11, 0x9

    const/high16 v13, 0x70000

    and-int/2addr v1, v13

    or-int/2addr v0, v1

    shl-int/lit8 v1, v11, 0xc

    const/high16 v13, 0x380000

    and-int/2addr v1, v13

    or-int/2addr v0, v1

    shl-int/lit8 v1, v11, 0x3

    const/high16 v13, 0x1c00000

    and-int/2addr v13, v1

    or-int/2addr v0, v13

    const/high16 v13, 0xe000000

    and-int/2addr v1, v13

    or-int/2addr v0, v1

    const/high16 v1, 0x70000000

    and-int/2addr v1, v11

    or-int v13, v0, v1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p11

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/TabRowKt;->ScrollableTabRowImpl-xam5sdo(ILandroidx/compose/ui/Modifier;JJFFLandroidx/compose/foundation/ScrollState;Ldm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2d
    move v11, v7

    move-wide/from16 v21, v2

    move-object v2, v1

    move-object v3, v8

    move v8, v6

    move-wide v6, v4

    move-wide/from16 v4, v21

    goto :goto_1f

    :cond_2e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-object/from16 v10, p9

    move-object v3, v5

    move-wide v4, v6

    move-wide v6, v8

    move v8, v11

    move-object/from16 v9, p8

    move/from16 v11, p10

    :goto_1f
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_2f

    move-object v1, v0

    new-instance v0, Lzi8;

    move-object/from16 v12, p11

    move v13, v14

    move v14, v15

    move-object v15, v1

    move/from16 v1, p0

    invoke-direct/range {v0 .. v14}, Lzi8;-><init>(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;FLbm3;II)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_2f
    return-void
.end method

.method public static final synthetic SecondaryScrollableTabRow-qhFBPw4(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .annotation runtime Lul2;
    .end annotation

    move/from16 v2, p0

    move/from16 v15, p12

    move/from16 v0, p13

    const v1, -0x2a7dc944

    move-object/from16 v3, p11

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v15, 0x6

    if-nez v3, :cond_2

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v15

    goto :goto_1

    :cond_2
    move v3, v15

    :goto_1
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v5, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v5, v15, 0x30

    if-nez v5, :cond_3

    move-object/from16 v5, p1

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto :goto_2

    :cond_5
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :goto_3
    and-int/lit16 v6, v15, 0x180

    if-nez v6, :cond_8

    and-int/lit8 v6, v0, 0x4

    if-nez v6, :cond_6

    move-object/from16 v6, p2

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v6, p2

    :cond_7
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v3, v7

    goto :goto_5

    :cond_8
    move-object/from16 v6, p2

    :goto_5
    and-int/lit16 v7, v15, 0xc00

    if-nez v7, :cond_b

    and-int/lit8 v7, v0, 0x8

    if-nez v7, :cond_9

    move-wide/from16 v7, p3

    invoke-interface {v12, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v7, p3

    :cond_a
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v3, v9

    goto :goto_7

    :cond_b
    move-wide/from16 v7, p3

    :goto_7
    and-int/lit16 v9, v15, 0x6000

    if-nez v9, :cond_e

    and-int/lit8 v9, v0, 0x10

    if-nez v9, :cond_c

    move-wide/from16 v9, p5

    invoke-interface {v12, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v11

    if-eqz v11, :cond_d

    const/16 v11, 0x4000

    goto :goto_8

    :cond_c
    move-wide/from16 v9, p5

    :cond_d
    const/16 v11, 0x2000

    :goto_8
    or-int/2addr v3, v11

    goto :goto_9

    :cond_e
    move-wide/from16 v9, p5

    :goto_9
    and-int/lit8 v11, v0, 0x20

    const/high16 v13, 0x30000

    if-eqz v11, :cond_10

    or-int/2addr v3, v13

    :cond_f
    move/from16 v13, p7

    goto :goto_b

    :cond_10
    and-int/2addr v13, v15

    if-nez v13, :cond_f

    move/from16 v13, p7

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v14

    if-eqz v14, :cond_11

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v3, v14

    :goto_b
    and-int/lit8 v14, v0, 0x40

    const/high16 v16, 0x180000

    if-eqz v14, :cond_12

    or-int v3, v3, v16

    move-object/from16 v1, p8

    goto :goto_d

    :cond_12
    and-int v16, v15, v16

    move-object/from16 v1, p8

    if-nez v16, :cond_14

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v17, 0x80000

    :goto_c
    or-int v3, v3, v17

    :cond_14
    :goto_d
    and-int/lit16 v1, v0, 0x80

    const/high16 v17, 0xc00000

    if-eqz v1, :cond_16

    or-int v3, v3, v17

    :cond_15
    move/from16 v17, v1

    move-object/from16 v1, p9

    goto :goto_f

    :cond_16
    and-int v17, v15, v17

    if-nez v17, :cond_15

    move/from16 v17, v1

    move-object/from16 v1, p9

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_17
    const/high16 v18, 0x400000

    :goto_e
    or-int v3, v3, v18

    :goto_f
    and-int/lit16 v1, v0, 0x100

    const/high16 v18, 0x6000000

    if-eqz v1, :cond_19

    or-int v3, v3, v18

    :cond_18
    move-object/from16 v1, p10

    goto :goto_11

    :cond_19
    and-int v1, v15, v18

    if-nez v1, :cond_18

    move-object/from16 v1, p10

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    const/high16 v19, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v19, 0x2000000

    :goto_10
    or-int v3, v3, v19

    :goto_11
    const v19, 0x2492493

    and-int v0, v3, v19

    const v1, 0x2492492

    move/from16 p11, v4

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1b

    move v0, v4

    goto :goto_12

    :cond_1b
    const/4 v0, 0x0

    :goto_12
    and-int/lit8 v1, v3, 0x1

    invoke-interface {v12, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v15, 0x1

    const v1, -0xe001

    if-eqz v0, :cond_20

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_14

    :cond_1c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p13, 0x4

    if-eqz v0, :cond_1d

    and-int/lit16 v3, v3, -0x381

    :cond_1d
    and-int/lit8 v0, p13, 0x8

    if-eqz v0, :cond_1e

    and-int/lit16 v3, v3, -0x1c01

    :cond_1e
    and-int/lit8 v0, p13, 0x10

    if-eqz v0, :cond_1f

    and-int/2addr v3, v1

    :cond_1f
    move v0, v3

    move-object v1, v5

    move-object v2, v6

    move-wide v3, v7

    move-wide v5, v9

    move v7, v13

    move-object/from16 v8, p8

    :goto_13
    move-object/from16 v9, p9

    goto/16 :goto_16

    :cond_20
    :goto_14
    if-eqz p11, :cond_21

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v5, v0

    :cond_21
    and-int/lit8 v0, p13, 0x4

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    invoke-static {v0, v12, v0, v4}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v0

    and-int/lit16 v3, v3, -0x381

    move-object v6, v0

    :cond_22
    and-int/lit8 v0, p13, 0x8

    move/from16 p11, v1

    const/4 v1, 0x6

    if-eqz v0, :cond_23

    sget-object v0, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v0, v12, v1}, Landroidx/compose/material3/TabRowDefaults;->getSecondaryContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    and-int/lit16 v3, v3, -0x1c01

    :cond_23
    and-int/lit8 v0, p13, 0x10

    if-eqz v0, :cond_24

    sget-object v0, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v0, v12, v1}, Landroidx/compose/material3/TabRowDefaults;->getSecondaryContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v0

    and-int v3, v3, p11

    move-wide v9, v0

    :cond_24
    if-eqz v11, :cond_25

    sget-object v0, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/TabRowDefaults;->getScrollableTabRowEdgeStartPadding-D9Ej5fM()F

    move-result v0

    move v13, v0

    :cond_25
    if-eqz v14, :cond_26

    new-instance v0, Landroidx/compose/material3/TabRowKt$SecondaryScrollableTabRow$3;

    invoke-direct {v0, v2}, Landroidx/compose/material3/TabRowKt$SecondaryScrollableTabRow$3;-><init>(I)V

    const/16 v1, 0x36

    const v11, 0x184ff6ed

    invoke-static {v11, v4, v0, v12, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    goto :goto_15

    :cond_26
    move-object/from16 v0, p8

    :goto_15
    if-eqz v17, :cond_27

    sget-object v1, Landroidx/compose/material3/ComposableSingletons$TabRowKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$TabRowKt;

    invoke-virtual {v1}, Landroidx/compose/material3/ComposableSingletons$TabRowKt;->getLambda$1187266255$material3()Lbm3;

    move-result-object v1

    move-wide/from16 v20, v7

    move-object v8, v0

    move v0, v3

    move-wide/from16 v3, v20

    move-object v2, v6

    move v7, v13

    move-wide/from16 v20, v9

    move-object v9, v1

    move-object v1, v5

    move-wide/from16 v5, v20

    goto :goto_16

    :cond_27
    move-wide v1, v7

    move-object v8, v0

    move v0, v3

    move-wide v3, v1

    move-object v1, v5

    move-object v2, v6

    move-wide v5, v9

    move v7, v13

    goto :goto_13

    :goto_16
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_28

    const/4 v10, -0x1

    const-string v11, "androidx.compose.material3.SecondaryScrollableTabRow (TabRow.kt:1236)"

    const v13, -0x2a7dc944

    invoke-static {v13, v0, v10, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_28
    sget-object v10, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v10}, Landroidx/compose/material3/TabRowDefaults;->getScrollableTabRowMinTabWidth-D9Ej5fM()F

    move-result v10

    and-int/lit8 v11, v0, 0xe

    or-int v11, v11, v18

    and-int/lit8 v13, v0, 0x70

    or-int/2addr v11, v13

    and-int/lit16 v13, v0, 0x380

    or-int/2addr v11, v13

    and-int/lit16 v13, v0, 0x1c00

    or-int/2addr v11, v13

    const v13, 0xe000

    and-int/2addr v13, v0

    or-int/2addr v11, v13

    const/high16 v13, 0x70000

    and-int/2addr v13, v0

    or-int/2addr v11, v13

    const/high16 v13, 0x380000

    and-int/2addr v13, v0

    or-int/2addr v11, v13

    const/high16 v13, 0x1c00000

    and-int/2addr v13, v0

    or-int/2addr v11, v13

    shl-int/lit8 v0, v0, 0x3

    const/high16 v13, 0x70000000

    and-int/2addr v0, v13

    or-int v13, v11, v0

    const/4 v14, 0x0

    move/from16 v0, p0

    move-object/from16 v11, p10

    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/TabRowKt;->SecondaryScrollableTabRow-cx2KkNY(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;FLbm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_29
    move-object v13, v1

    move v1, v7

    move-object v11, v8

    move-object v0, v12

    move-object v12, v2

    move-wide v7, v5

    move-wide v5, v3

    goto :goto_17

    :cond_2a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v11, p8

    move-object v0, v12

    move v1, v13

    move-object v13, v5

    move-object v12, v6

    move-wide v5, v7

    move-wide v7, v9

    move-object/from16 v9, p9

    :goto_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_2b

    new-instance v0, Lvi8;

    move/from16 v2, p0

    move-object/from16 v10, p10

    move/from16 v4, p13

    move v3, v15

    invoke-direct/range {v0 .. v13}, Lvi8;-><init>(FIIIJJLbm3;Lbm3;Ldm3;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/Modifier;)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_2b
    return-void
.end method

.method private static final SecondaryScrollableTabRow_cx2KkNY$lambda$3(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;FLbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 16

    or-int/lit8 v0, p12, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v15, p13

    move-object/from16 v13, p14

    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/TabRowKt;->SecondaryScrollableTabRow-cx2KkNY(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;FLbm3;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final SecondaryScrollableTabRow_qhFBPw4$lambda$9(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 15

    or-int/lit8 v0, p11, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v13

    move v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v14, p12

    move-object/from16 v12, p13

    invoke-static/range {v1 .. v14}, Landroidx/compose/material3/TabRowKt;->SecondaryScrollableTabRow-qhFBPw4(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final SecondaryTabRow-pAZo6Ak(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Ldm3<",
            "-",
            "Landroidx/compose/material3/TabIndicatorScope;",
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

    move/from16 v1, p0

    move/from16 v10, p10

    const v0, 0x219554e5

    move-object/from16 v2, p9

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    and-int/lit8 v3, p11, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v10, 0x6

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v10

    goto :goto_1

    :cond_2
    move v3, v10

    :goto_1
    and-int/lit8 v4, p11, 0x2

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v5, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v5, v10, 0x30

    if-nez v5, :cond_3

    move-object/from16 v5, p1

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto :goto_2

    :cond_5
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :goto_3
    and-int/lit16 v6, v10, 0x180

    if-nez v6, :cond_8

    and-int/lit8 v6, p11, 0x4

    if-nez v6, :cond_6

    move-wide/from16 v6, p2

    invoke-interface {v2, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v6, p2

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v3, v8

    goto :goto_5

    :cond_8
    move-wide/from16 v6, p2

    :goto_5
    and-int/lit16 v8, v10, 0xc00

    if-nez v8, :cond_b

    and-int/lit8 v8, p11, 0x8

    if-nez v8, :cond_9

    move-wide/from16 v8, p4

    invoke-interface {v2, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v8, p4

    :cond_a
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v3, v11

    goto :goto_7

    :cond_b
    move-wide/from16 v8, p4

    :goto_7
    and-int/lit8 v11, p11, 0x10

    if-eqz v11, :cond_d

    or-int/lit16 v3, v3, 0x6000

    :cond_c
    move-object/from16 v12, p6

    goto :goto_9

    :cond_d
    and-int/lit16 v12, v10, 0x6000

    if-nez v12, :cond_c

    move-object/from16 v12, p6

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/16 v13, 0x4000

    goto :goto_8

    :cond_e
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v3, v13

    :goto_9
    and-int/lit8 v13, p11, 0x20

    const/high16 v14, 0x30000

    if-eqz v13, :cond_10

    or-int/2addr v3, v14

    :cond_f
    move-object/from16 v14, p7

    goto :goto_b

    :cond_10
    and-int/2addr v14, v10

    if-nez v14, :cond_f

    move-object/from16 v14, p7

    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v3, v15

    :goto_b
    and-int/lit8 v15, p11, 0x40

    const/high16 v16, 0x180000

    if-eqz v15, :cond_13

    or-int v3, v3, v16

    :cond_12
    move-object/from16 v15, p8

    goto :goto_d

    :cond_13
    and-int v15, v10, v16

    if-nez v15, :cond_12

    move-object/from16 v15, p8

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_14
    const/high16 v16, 0x80000

    :goto_c
    or-int v3, v3, v16

    :goto_d
    const v16, 0x92493

    and-int v0, v3, v16

    move/from16 p9, v4

    const v4, 0x92492

    if-eq v0, v4, :cond_15

    const/4 v0, 0x1

    goto :goto_e

    :cond_15
    const/4 v0, 0x0

    :goto_e
    and-int/lit8 v4, v3, 0x1

    invoke-interface {v2, v0, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_19

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_f

    :cond_16
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_17

    and-int/lit16 v3, v3, -0x381

    :cond_17
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_18

    and-int/lit16 v3, v3, -0x1c01

    :cond_18
    move-object/from16 v11, p1

    move-object/from16 v16, v12

    move-object/from16 v17, v14

    const v0, 0x219554e5

    move-wide v12, v6

    move-wide v14, v8

    goto :goto_13

    :cond_19
    :goto_f
    if-eqz p9, :cond_1a

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_10

    :cond_1a
    move-object/from16 v0, p1

    :goto_10
    and-int/lit8 v4, p11, 0x4

    const/4 v5, 0x6

    if-eqz v4, :cond_1b

    sget-object v4, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v4, v2, v5}, Landroidx/compose/material3/TabRowDefaults;->getSecondaryContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v6

    and-int/lit16 v3, v3, -0x381

    :cond_1b
    and-int/lit8 v4, p11, 0x8

    if-eqz v4, :cond_1c

    sget-object v4, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v4, v2, v5}, Landroidx/compose/material3/TabRowDefaults;->getSecondaryContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    and-int/lit16 v3, v3, -0x1c01

    goto :goto_11

    :cond_1c
    move-wide v4, v8

    :goto_11
    if-eqz v11, :cond_1d

    new-instance v8, Landroidx/compose/material3/TabRowKt$SecondaryTabRow$1;

    invoke-direct {v8, v1}, Landroidx/compose/material3/TabRowKt$SecondaryTabRow$1;-><init>(I)V

    const/16 v9, 0x36

    const v11, 0x3937a794

    const/4 v12, 0x1

    invoke-static {v11, v12, v8, v2, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v8

    goto :goto_12

    :cond_1d
    move-object v8, v12

    :goto_12
    if-eqz v13, :cond_1e

    sget-object v9, Landroidx/compose/material3/ComposableSingletons$TabRowKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$TabRowKt;

    invoke-virtual {v9}, Landroidx/compose/material3/ComposableSingletons$TabRowKt;->getLambda$-463596174$material3()Lbm3;

    move-result-object v9

    move-object v11, v0

    move-wide v14, v4

    move-wide v12, v6

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    const v0, 0x219554e5

    goto :goto_13

    :cond_1e
    move-object v11, v0

    move-wide v12, v6

    move-object/from16 v16, v8

    move-object/from16 v17, v14

    const v0, 0x219554e5

    move-wide v14, v4

    :goto_13
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, -0x1

    const-string v5, "androidx.compose.material3.SecondaryTabRow (TabRow.kt:213)"

    invoke-static {v0, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1f
    shr-int/lit8 v0, v3, 0x3

    const v3, 0x7fffe

    and-int v20, v0, v3

    move-object/from16 v18, p8

    move-object/from16 v19, v2

    invoke-static/range {v11 .. v20}, Landroidx/compose/material3/TabRowKt;->TabRowImpl-DTcfvLk(Landroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_20
    move-object v2, v11

    move-wide v3, v12

    move-wide v5, v14

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    goto :goto_14

    :cond_21
    move-object/from16 v19, v2

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-wide v3, v6

    move-wide v5, v8

    move-object v7, v12

    move-object v8, v14

    :goto_14
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_22

    new-instance v0, Lgj8;

    move-object/from16 v9, p8

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lgj8;-><init>(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;II)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_22
    return-void
.end method

.method private static final SecondaryTabRow_pAZo6Ak$lambda$1(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 13

    or-int/lit8 v0, p9, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    move v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v12, p10

    move-object/from16 v10, p11

    invoke-static/range {v1 .. v12}, Landroidx/compose/material3/TabRowKt;->SecondaryTabRow-pAZo6Ak(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final TabRow-pAZo6Ak(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Ldm3<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;-",
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

    .annotation runtime Lul2;
    .end annotation

    move/from16 v1, p0

    move/from16 v10, p10

    const v0, 0x5623daed

    move-object/from16 v2, p9

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    and-int/lit8 v3, p11, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v10, 0x6

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v10

    goto :goto_1

    :cond_2
    move v3, v10

    :goto_1
    and-int/lit8 v4, p11, 0x2

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v5, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v5, v10, 0x30

    if-nez v5, :cond_3

    move-object/from16 v5, p1

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto :goto_2

    :cond_5
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :goto_3
    and-int/lit16 v6, v10, 0x180

    if-nez v6, :cond_8

    and-int/lit8 v6, p11, 0x4

    if-nez v6, :cond_6

    move-wide/from16 v6, p2

    invoke-interface {v2, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v6, p2

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v3, v8

    goto :goto_5

    :cond_8
    move-wide/from16 v6, p2

    :goto_5
    and-int/lit16 v8, v10, 0xc00

    if-nez v8, :cond_b

    and-int/lit8 v8, p11, 0x8

    if-nez v8, :cond_9

    move-wide/from16 v8, p4

    invoke-interface {v2, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v8, p4

    :cond_a
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v3, v11

    goto :goto_7

    :cond_b
    move-wide/from16 v8, p4

    :goto_7
    and-int/lit8 v11, p11, 0x10

    if-eqz v11, :cond_d

    or-int/lit16 v3, v3, 0x6000

    :cond_c
    move-object/from16 v12, p6

    goto :goto_9

    :cond_d
    and-int/lit16 v12, v10, 0x6000

    if-nez v12, :cond_c

    move-object/from16 v12, p6

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/16 v13, 0x4000

    goto :goto_8

    :cond_e
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v3, v13

    :goto_9
    and-int/lit8 v13, p11, 0x20

    const/high16 v14, 0x30000

    if-eqz v13, :cond_10

    or-int/2addr v3, v14

    :cond_f
    move-object/from16 v14, p7

    goto :goto_b

    :cond_10
    and-int/2addr v14, v10

    if-nez v14, :cond_f

    move-object/from16 v14, p7

    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v3, v15

    :goto_b
    and-int/lit8 v15, p11, 0x40

    const/high16 v16, 0x180000

    if-eqz v15, :cond_13

    or-int v3, v3, v16

    :cond_12
    move-object/from16 v15, p8

    goto :goto_d

    :cond_13
    and-int v15, v10, v16

    if-nez v15, :cond_12

    move-object/from16 v15, p8

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_14
    const/high16 v16, 0x80000

    :goto_c
    or-int v3, v3, v16

    :goto_d
    const v16, 0x92493

    and-int v0, v3, v16

    move/from16 p9, v4

    const v4, 0x92492

    if-eq v0, v4, :cond_15

    const/4 v0, 0x1

    goto :goto_e

    :cond_15
    const/4 v0, 0x0

    :goto_e
    and-int/lit8 v4, v3, 0x1

    invoke-interface {v2, v0, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_19

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_f

    :cond_16
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_17

    and-int/lit16 v3, v3, -0x381

    :cond_17
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_18

    and-int/lit16 v3, v3, -0x1c01

    :cond_18
    move-object/from16 v11, p1

    move-object/from16 v16, v12

    move-object/from16 v17, v14

    const v0, 0x5623daed

    move-wide v12, v6

    move-wide v14, v8

    goto :goto_13

    :cond_19
    :goto_f
    if-eqz p9, :cond_1a

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_10

    :cond_1a
    move-object/from16 v0, p1

    :goto_10
    and-int/lit8 v4, p11, 0x4

    const/4 v5, 0x6

    if-eqz v4, :cond_1b

    sget-object v4, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v4, v2, v5}, Landroidx/compose/material3/TabRowDefaults;->getPrimaryContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v6

    and-int/lit16 v3, v3, -0x381

    :cond_1b
    and-int/lit8 v4, p11, 0x8

    if-eqz v4, :cond_1c

    sget-object v4, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    invoke-virtual {v4, v2, v5}, Landroidx/compose/material3/TabRowDefaults;->getPrimaryContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    and-int/lit16 v3, v3, -0x1c01

    goto :goto_11

    :cond_1c
    move-wide v4, v8

    :goto_11
    if-eqz v11, :cond_1d

    new-instance v8, Landroidx/compose/material3/TabRowKt$TabRow$1;

    invoke-direct {v8, v1}, Landroidx/compose/material3/TabRowKt$TabRow$1;-><init>(I)V

    const/16 v9, 0x36

    const v11, 0x360b2308

    const/4 v12, 0x1

    invoke-static {v11, v12, v8, v2, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v8

    goto :goto_12

    :cond_1d
    move-object v8, v12

    :goto_12
    if-eqz v13, :cond_1e

    sget-object v9, Landroidx/compose/material3/ComposableSingletons$TabRowKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$TabRowKt;

    invoke-virtual {v9}, Landroidx/compose/material3/ComposableSingletons$TabRowKt;->getLambda$-1132537920$material3()Lbm3;

    move-result-object v9

    move-object v11, v0

    move-wide v14, v4

    move-wide v12, v6

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    const v0, 0x5623daed

    goto :goto_13

    :cond_1e
    move-object v11, v0

    move-wide v12, v6

    move-object/from16 v16, v8

    move-object/from16 v17, v14

    const v0, 0x5623daed

    move-wide v14, v4

    :goto_13
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, -0x1

    const-string v5, "androidx.compose.material3.TabRow (TabRow.kt:1348)"

    invoke-static {v0, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1f
    shr-int/lit8 v0, v3, 0x3

    const v3, 0x7fffe

    and-int v20, v0, v3

    move-object/from16 v18, p8

    move-object/from16 v19, v2

    invoke-static/range {v11 .. v20}, Landroidx/compose/material3/TabRowKt;->TabRowWithSubcomposeImpl-DTcfvLk(Landroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_20
    move-object v2, v11

    move-wide v3, v12

    move-wide v5, v14

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    goto :goto_14

    :cond_21
    move-object/from16 v19, v2

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-wide v3, v6

    move-wide v5, v8

    move-object v7, v12

    move-object v8, v14

    :goto_14
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_22

    new-instance v0, Lfj8;

    move-object/from16 v9, p8

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lfj8;-><init>(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;II)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_22
    return-void
.end method

.method private static final TabRowImpl-DTcfvLk(Landroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Ldm3<",
            "-",
            "Landroidx/compose/material3/TabIndicatorScope;",
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

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    const v0, 0x748b4c8a

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    and-int/lit8 v2, v9, 0x6

    if-nez v2, :cond_1

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v9

    goto :goto_1

    :cond_1
    move-object/from16 v2, p0

    move v3, v9

    :goto_1
    and-int/lit8 v4, v9, 0x30

    move-wide/from16 v12, p1

    if-nez v4, :cond_3

    invoke-interface {v1, v12, v13}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v3, v4

    :cond_3
    and-int/lit16 v4, v9, 0x180

    move-wide/from16 v14, p3

    if-nez v4, :cond_5

    invoke-interface {v1, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v3, v4

    :cond_5
    and-int/lit16 v4, v9, 0xc00

    if-nez v4, :cond_7

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x800

    goto :goto_4

    :cond_6
    const/16 v4, 0x400

    :goto_4
    or-int/2addr v3, v4

    :cond_7
    and-int/lit16 v4, v9, 0x6000

    if-nez v4, :cond_9

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x4000

    goto :goto_5

    :cond_8
    const/16 v4, 0x2000

    :goto_5
    or-int/2addr v3, v4

    :cond_9
    const/high16 v4, 0x30000

    and-int/2addr v4, v9

    if-nez v4, :cond_b

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/high16 v4, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v4, 0x10000

    :goto_6
    or-int/2addr v3, v4

    :cond_b
    const v4, 0x12493

    and-int/2addr v4, v3

    const v5, 0x12492

    const/4 v10, 0x1

    if-eq v4, v5, :cond_c

    move v4, v10

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    :goto_7
    and-int/lit8 v5, v3, 0x1

    invoke-interface {v1, v4, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, -0x1

    const-string v5, "androidx.compose.material3.TabRowImpl (TabRow.kt:398)"

    invoke-static {v0, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_d
    invoke-static {v2}, Landroidx/compose/foundation/selection/SelectableGroupKt;->selectableGroup(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v4, Landroidx/compose/material3/TabRowKt$TabRowImpl$1;

    invoke-direct {v4, v8, v7, v6}, Landroidx/compose/material3/TabRowKt$TabRowImpl$1;-><init>(Lbm3;Lbm3;Ldm3;)V

    const/16 v5, 0x36

    const v11, 0x317d13cf

    invoke-static {v11, v10, v4, v1, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v19

    shl-int/lit8 v3, v3, 0x3

    and-int/lit16 v4, v3, 0x380

    const/high16 v5, 0xc00000

    or-int/2addr v4, v5

    and-int/lit16 v3, v3, 0x1c00

    or-int v21, v4, v3

    const/16 v22, 0x72

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v0

    move-object/from16 v20, v1

    invoke-static/range {v10 .. v22}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lbm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_8

    :cond_e
    move-object/from16 v20, v1

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_f
    :goto_8
    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_10

    new-instance v0, Lbj8;

    move-wide/from16 v4, p3

    move-object v1, v2

    move-wide/from16 v2, p1

    invoke-direct/range {v0 .. v9}, Lbj8;-><init>(Landroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;I)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_10
    return-void
.end method

.method private static final TabRowImpl_DTcfvLk$lambda$4(Landroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 11

    or-int/lit8 v0, p8, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/TabRowKt;->TabRowImpl-DTcfvLk(Landroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final TabRowWithSubcomposeImpl-DTcfvLk(Landroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Ldm3<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;-",
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

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    const v0, 0x8df2422

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    and-int/lit8 v2, v9, 0x6

    if-nez v2, :cond_1

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v9

    goto :goto_1

    :cond_1
    move-object/from16 v2, p0

    move v3, v9

    :goto_1
    and-int/lit8 v4, v9, 0x30

    move-wide/from16 v12, p1

    if-nez v4, :cond_3

    invoke-interface {v1, v12, v13}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v3, v4

    :cond_3
    and-int/lit16 v4, v9, 0x180

    move-wide/from16 v14, p3

    if-nez v4, :cond_5

    invoke-interface {v1, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v3, v4

    :cond_5
    and-int/lit16 v4, v9, 0xc00

    if-nez v4, :cond_7

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x800

    goto :goto_4

    :cond_6
    const/16 v4, 0x400

    :goto_4
    or-int/2addr v3, v4

    :cond_7
    and-int/lit16 v4, v9, 0x6000

    if-nez v4, :cond_9

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x4000

    goto :goto_5

    :cond_8
    const/16 v4, 0x2000

    :goto_5
    or-int/2addr v3, v4

    :cond_9
    const/high16 v4, 0x30000

    and-int/2addr v4, v9

    if-nez v4, :cond_b

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/high16 v4, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v4, 0x10000

    :goto_6
    or-int/2addr v3, v4

    :cond_b
    const v4, 0x12493

    and-int/2addr v4, v3

    const v5, 0x12492

    const/4 v10, 0x1

    if-eq v4, v5, :cond_c

    move v4, v10

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    :goto_7
    and-int/lit8 v5, v3, 0x1

    invoke-interface {v1, v4, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, -0x1

    const-string v5, "androidx.compose.material3.TabRowWithSubcomposeImpl (TabRow.kt:762)"

    invoke-static {v0, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_d
    invoke-static {v2}, Landroidx/compose/foundation/selection/SelectableGroupKt;->selectableGroup(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v4, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1;

    invoke-direct {v4, v8, v7, v6}, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1;-><init>(Lbm3;Lbm3;Ldm3;)V

    const/16 v5, 0x36

    const v11, -0x6c33b159

    invoke-static {v11, v10, v4, v1, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v19

    shl-int/lit8 v3, v3, 0x3

    and-int/lit16 v4, v3, 0x380

    const/high16 v5, 0xc00000

    or-int/2addr v4, v5

    and-int/lit16 v3, v3, 0x1c00

    or-int v21, v4, v3

    const/16 v22, 0x72

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v0

    move-object/from16 v20, v1

    invoke-static/range {v10 .. v22}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lbm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_8

    :cond_e
    move-object/from16 v20, v1

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_f
    :goto_8
    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_10

    new-instance v0, Lwi8;

    move-wide/from16 v4, p3

    move-object v1, v2

    move-wide/from16 v2, p1

    invoke-direct/range {v0 .. v9}, Lwi8;-><init>(Landroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;I)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_10
    return-void
.end method

.method private static final TabRowWithSubcomposeImpl_DTcfvLk$lambda$6(Landroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 11

    or-int/lit8 v0, p8, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/TabRowKt;->TabRowWithSubcomposeImpl-DTcfvLk(Landroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final TabRow_pAZo6Ak$lambda$10(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 13

    or-int/lit8 v0, p9, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    move v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v12, p10

    move-object/from16 v10, p11

    invoke-static/range {v1 .. v12}, Landroidx/compose/material3/TabRowKt;->TabRow-pAZo6Ak(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic a(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p12}, Landroidx/compose/material3/TabRowKt;->SecondaryTabRow_pAZo6Ak$lambda$1(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(ILdm3;Landroidx/compose/ui/Modifier;JJFLbm3;Lbm3;Landroidx/compose/foundation/ScrollState;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p14}, Landroidx/compose/material3/TabRowKt;->ScrollableTabRowWithSubcomposeImpl_qhFBPw4$lambda$7(ILdm3;Landroidx/compose/ui/Modifier;JJFLbm3;Lbm3;Landroidx/compose/foundation/ScrollState;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p12}, Landroidx/compose/material3/TabRowKt;->PrimaryTabRow_pAZo6Ak$lambda$0(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(ILandroidx/compose/ui/Modifier;JJFLdm3;Lbm3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p13}, Landroidx/compose/material3/TabRowKt;->ScrollableTabRow_sKfQg0A$lambda$11(ILandroidx/compose/ui/Modifier;JJFLdm3;Lbm3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;FLbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p15}, Landroidx/compose/material3/TabRowKt;->PrimaryScrollableTabRow_cx2KkNY$lambda$2(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;FLbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p10}, Landroidx/compose/material3/TabRowKt;->TabRowImpl_DTcfvLk$lambda$4(Landroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(ILdm3;Landroidx/compose/ui/Modifier;JJFLbm3;Lbm3;Landroidx/compose/foundation/ScrollState;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 1

    move-object v0, p8

    move-object p8, p1

    move-object p1, p2

    move-object p2, p10

    move-object p10, p9

    move-object p9, v0

    invoke-static/range {p0 .. p14}, Landroidx/compose/material3/TabRowKt;->SecondaryScrollableTabRow_qhFBPw4$lambda$9(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Landroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p10}, Landroidx/compose/material3/TabRowKt;->TabRowWithSubcomposeImpl_DTcfvLk$lambda$6(Landroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(ILdm3;Landroidx/compose/ui/Modifier;JJFLbm3;Lbm3;Landroidx/compose/foundation/ScrollState;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 1

    move-object v0, p8

    move-object p8, p1

    move-object p1, p2

    move-object p2, p10

    move-object p10, p9

    move-object p9, v0

    invoke-static/range {p0 .. p14}, Landroidx/compose/material3/TabRowKt;->PrimaryScrollableTabRow_qhFBPw4$lambda$8(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p12}, Landroidx/compose/material3/TabRowKt;->TabRow_pAZo6Ak$lambda$10(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(ILandroidx/compose/ui/Modifier;JJFFLandroidx/compose/foundation/ScrollState;Ldm3;Lbm3;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p14}, Landroidx/compose/material3/TabRowKt;->ScrollableTabRowImpl_xam5sdo$lambda$5(ILandroidx/compose/ui/Modifier;JJFFLandroidx/compose/foundation/ScrollState;Ldm3;Lbm3;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;FLbm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p15}, Landroidx/compose/material3/TabRowKt;->SecondaryScrollableTabRow_cx2KkNY$lambda$3(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;FLbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
