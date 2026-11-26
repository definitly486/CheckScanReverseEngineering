.class public final Landroidx/compose/material3/ModalBottomSheet_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic ModalBottomSheet-dYc4hso(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;Landroidx/compose/runtime/Composer;III)V
    .locals 30
    .annotation runtime Lul2;
    .end annotation

    move/from16 v0, p17

    move/from16 v1, p18

    move/from16 v2, p19

    const v3, 0x4ffe1f38

    move-object/from16 v4, p16

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
    move-object/from16 v12, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v12, v0, 0x30

    if-nez v12, :cond_3

    move-object/from16 v12, p1

    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/16 v13, 0x20

    goto :goto_2

    :cond_5
    const/16 v13, 0x10

    :goto_2
    or-int/2addr v8, v13

    :goto_3
    and-int/lit16 v13, v0, 0x180

    if-nez v13, :cond_8

    and-int/lit8 v13, v2, 0x4

    if-nez v13, :cond_6

    move-object/from16 v13, p2

    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v13, p2

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v8, v8, v16

    goto :goto_5

    :cond_8
    move-object/from16 v13, p2

    :goto_5
    and-int/lit8 v16, v2, 0x8

    if-eqz v16, :cond_a

    or-int/lit16 v8, v8, 0xc00

    :cond_9
    move/from16 v6, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v6, v0, 0xc00

    if-nez v6, :cond_9

    move/from16 v6, p3

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x800

    goto :goto_6

    :cond_b
    const/16 v17, 0x400

    :goto_6
    or-int v8, v8, v17

    :goto_7
    and-int/lit16 v7, v0, 0x6000

    if-nez v7, :cond_e

    and-int/lit8 v7, v2, 0x10

    if-nez v7, :cond_c

    move-object/from16 v7, p4

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const/16 v18, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v7, p4

    :cond_d
    const/16 v18, 0x2000

    :goto_8
    or-int v8, v8, v18

    goto :goto_9

    :cond_e
    move-object/from16 v7, p4

    :goto_9
    const/high16 v18, 0x30000

    and-int v18, v0, v18

    if-nez v18, :cond_10

    and-int/lit8 v18, v2, 0x20

    move-wide/from16 v10, p5

    if-nez v18, :cond_f

    invoke-interface {v4, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v20

    if-eqz v20, :cond_f

    const/high16 v20, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v20, 0x10000

    :goto_a
    or-int v8, v8, v20

    goto :goto_b

    :cond_10
    move-wide/from16 v10, p5

    :goto_b
    const/high16 v20, 0x180000

    and-int v20, v0, v20

    if-nez v20, :cond_12

    and-int/lit8 v20, v2, 0x40

    move-wide/from16 v14, p7

    if-nez v20, :cond_11

    invoke-interface {v4, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v22

    if-eqz v22, :cond_11

    const/high16 v22, 0x100000

    goto :goto_c

    :cond_11
    const/high16 v22, 0x80000

    :goto_c
    or-int v8, v8, v22

    goto :goto_d

    :cond_12
    move-wide/from16 v14, p7

    :goto_d
    and-int/lit16 v3, v2, 0x80

    const/high16 v23, 0xc00000

    if-eqz v3, :cond_13

    or-int v8, v8, v23

    move/from16 v0, p9

    goto :goto_f

    :cond_13
    and-int v23, v0, v23

    move/from16 v0, p9

    if-nez v23, :cond_15

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v23

    if-eqz v23, :cond_14

    const/high16 v23, 0x800000

    goto :goto_e

    :cond_14
    const/high16 v23, 0x400000

    :goto_e
    or-int v8, v8, v23

    :cond_15
    :goto_f
    const/high16 v23, 0x6000000

    and-int v23, p17, v23

    if-nez v23, :cond_17

    and-int/lit16 v0, v2, 0x100

    move-wide/from16 v5, p10

    if-nez v0, :cond_16

    invoke-interface {v4, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_16

    const/high16 v0, 0x4000000

    goto :goto_10

    :cond_16
    const/high16 v0, 0x2000000

    :goto_10
    or-int/2addr v8, v0

    goto :goto_11

    :cond_17
    move-wide/from16 v5, p10

    :goto_11
    and-int/lit16 v0, v2, 0x200

    const/high16 v23, 0x30000000

    if-eqz v0, :cond_19

    or-int v8, v8, v23

    :cond_18
    move/from16 v23, v0

    move-object/from16 v0, p12

    goto :goto_13

    :cond_19
    and-int v23, p17, v23

    if-nez v23, :cond_18

    move/from16 v23, v0

    move-object/from16 v0, p12

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1a

    const/high16 v24, 0x20000000

    goto :goto_12

    :cond_1a
    const/high16 v24, 0x10000000

    :goto_12
    or-int v8, v8, v24

    :goto_13
    and-int/lit8 v24, v1, 0x6

    if-nez v24, :cond_1d

    and-int/lit16 v0, v2, 0x400

    if-nez v0, :cond_1b

    move-object/from16 v0, p13

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1c

    const/16 v17, 0x4

    goto :goto_14

    :cond_1b
    move-object/from16 v0, p13

    :cond_1c
    const/16 v17, 0x2

    :goto_14
    or-int v17, v1, v17

    goto :goto_15

    :cond_1d
    move-object/from16 v0, p13

    move/from16 v17, v1

    :goto_15
    and-int/lit16 v0, v2, 0x800

    if-eqz v0, :cond_1e

    or-int/lit8 v17, v17, 0x30

    move/from16 v24, v0

    :goto_16
    move/from16 v0, v17

    goto :goto_18

    :cond_1e
    and-int/lit8 v24, v1, 0x30

    if-nez v24, :cond_20

    move/from16 v24, v0

    move-object/from16 v0, p14

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1f

    const/16 v18, 0x20

    goto :goto_17

    :cond_1f
    const/16 v18, 0x10

    :goto_17
    or-int v17, v17, v18

    goto :goto_16

    :cond_20
    move/from16 v24, v0

    move-object/from16 v0, p14

    goto :goto_16

    :goto_18
    move/from16 v17, v3

    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_22

    or-int/lit16 v0, v0, 0x180

    :cond_21
    move-object/from16 v3, p15

    goto :goto_1a

    :cond_22
    and-int/lit16 v3, v1, 0x180

    if-nez v3, :cond_21

    move-object/from16 v3, p15

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_23

    const/16 v20, 0x100

    goto :goto_19

    :cond_23
    const/16 v20, 0x80

    :goto_19
    or-int v0, v0, v20

    :goto_1a
    const v18, 0x12492493

    and-int v1, v8, v18

    const v3, 0x12492492

    const/4 v5, 0x0

    if-ne v1, v3, :cond_25

    and-int/lit16 v1, v0, 0x93

    const/16 v3, 0x92

    if-eq v1, v3, :cond_24

    goto :goto_1b

    :cond_24
    move v1, v5

    goto :goto_1c

    :cond_25
    :goto_1b
    const/4 v1, 0x1

    :goto_1c
    and-int/lit8 v3, v8, 0x1

    invoke-interface {v4, v1, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, p17, 0x1

    const v6, -0x380001

    const v18, -0x70001

    const v19, -0xe001

    const p16, -0xe000001

    const/4 v3, 0x3

    if-eqz v1, :cond_2d

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_1d

    :cond_26
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, v2, 0x4

    if-eqz v1, :cond_27

    and-int/lit16 v8, v8, -0x381

    :cond_27
    and-int/lit8 v1, v2, 0x10

    if-eqz v1, :cond_28

    and-int v8, v8, v19

    :cond_28
    and-int/lit8 v1, v2, 0x20

    if-eqz v1, :cond_29

    and-int v8, v8, v18

    :cond_29
    and-int/lit8 v1, v2, 0x40

    if-eqz v1, :cond_2a

    and-int/2addr v8, v6

    :cond_2a
    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_2b

    and-int v8, v8, p16

    :cond_2b
    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_2c

    and-int/lit8 v0, v0, -0xf

    :cond_2c
    move-object/from16 v17, p12

    move-object/from16 v19, p14

    move/from16 p16, v3

    move-object v9, v7

    move-object v5, v12

    move-object v6, v13

    move-wide v12, v14

    move/from16 v7, p3

    move/from16 v14, p9

    move-wide/from16 v15, p10

    move-object/from16 v3, p13

    goto/16 :goto_25

    :cond_2d
    :goto_1d
    if-eqz v9, :cond_2e

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v12, v1

    :cond_2e
    and-int/lit8 v1, v2, 0x4

    if-eqz v1, :cond_2f

    const/4 v1, 0x0

    invoke-static {v5, v1, v4, v5, v3}, Landroidx/compose/material3/ModalBottomSheetKt;->rememberModalBottomSheetState(ZLnl3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object v1

    and-int/lit16 v8, v8, -0x381

    move-object v13, v1

    :cond_2f
    if-eqz v16, :cond_30

    sget-object v1, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v1}, Landroidx/compose/material3/BottomSheetDefaults;->getSheetMaxWidth-D9Ej5fM()F

    move-result v1

    goto :goto_1e

    :cond_30
    move/from16 v1, p3

    :goto_1e
    and-int/lit8 v5, v2, 0x10

    const/4 v9, 0x6

    if-eqz v5, :cond_31

    sget-object v5, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v5, v4, v9}, Landroidx/compose/material3/BottomSheetDefaults;->getExpandedShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v5

    and-int v8, v8, v19

    goto :goto_1f

    :cond_31
    move-object v5, v7

    :goto_1f
    and-int/lit8 v7, v2, 0x20

    if-eqz v7, :cond_32

    sget-object v7, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v7, v4, v9}, Landroidx/compose/material3/BottomSheetDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v10

    and-int v8, v8, v18

    :cond_32
    and-int/lit8 v7, v2, 0x40

    if-eqz v7, :cond_33

    shr-int/lit8 v7, v8, 0xf

    and-int/lit8 v7, v7, 0xe

    invoke-static {v10, v11, v4, v7}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v14

    and-int/2addr v8, v6

    :cond_33
    if-eqz v17, :cond_34

    const/4 v6, 0x0

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    goto :goto_20

    :cond_34
    move/from16 v6, p9

    :goto_20
    and-int/lit16 v7, v2, 0x100

    if-eqz v7, :cond_35

    sget-object v7, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v7, v4, v9}, Landroidx/compose/material3/BottomSheetDefaults;->getScrimColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v16

    and-int v7, v8, p16

    move v8, v7

    goto :goto_21

    :cond_35
    move-wide/from16 v16, p10

    :goto_21
    if-eqz v23, :cond_36

    sget-object v7, Landroidx/compose/material3/ComposableSingletons$ModalBottomSheet_androidKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ModalBottomSheet_androidKt;

    invoke-virtual {v7}, Landroidx/compose/material3/ComposableSingletons$ModalBottomSheet_androidKt;->getLambda$-1294623166$material3()Lbm3;

    move-result-object v7

    goto :goto_22

    :cond_36
    move-object/from16 v7, p12

    :goto_22
    move/from16 p16, v3

    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_37

    sget-object v3, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v3, v4, v9}, Landroidx/compose/material3/BottomSheetDefaults;->getWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v3

    and-int/lit8 v0, v0, -0xf

    goto :goto_23

    :cond_37
    move-object/from16 v3, p13

    :goto_23
    if-eqz v24, :cond_38

    sget-object v9, Landroidx/compose/material3/ModalBottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/ModalBottomSheetDefaults;

    invoke-virtual {v9}, Landroidx/compose/material3/ModalBottomSheetDefaults;->getProperties()Landroidx/compose/material3/ModalBottomSheetProperties;

    move-result-object v9

    move-object/from16 v19, v9

    :goto_24
    move-object v9, v5

    move-object v5, v12

    move-object/from16 v27, v7

    move v7, v1

    move-wide/from16 v28, v14

    move v14, v6

    move-object v6, v13

    move-wide/from16 v12, v28

    move-wide/from16 v15, v16

    move-object/from16 v17, v27

    goto :goto_25

    :cond_38
    move-object/from16 v19, p14

    goto :goto_24

    :goto_25
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.android.kt:343)"

    const v2, 0x4ffe1f38

    invoke-static {v2, v8, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_39
    new-instance v1, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1;

    invoke-direct {v1, v3}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1;-><init>(Landroidx/compose/foundation/layout/WindowInsets;)V

    and-int/lit16 v2, v8, 0x1ffe

    shl-int/lit8 v18, v8, 0x3

    const/high16 v20, 0x70000

    and-int v20, v18, v20

    or-int v2, v2, v20

    const/high16 v20, 0x380000

    and-int v20, v18, v20

    or-int v2, v2, v20

    const/high16 v20, 0x1c00000

    and-int v20, v18, v20

    or-int v2, v2, v20

    const/high16 v20, 0xe000000

    and-int v20, v18, v20

    or-int v2, v2, v20

    const/high16 v20, 0x70000000

    and-int v18, v18, v20

    or-int v22, v2, v18

    shr-int/lit8 v2, v8, 0x1b

    and-int/lit8 v2, v2, 0xe

    shl-int/lit8 v0, v0, 0x3

    and-int/lit16 v8, v0, 0x380

    or-int/2addr v2, v8

    and-int/lit16 v0, v0, 0x1c00

    or-int v23, v2, v0

    const/16 v24, 0x10

    const/4 v8, 0x0

    move-object/from16 v20, p15

    move-object/from16 v18, v1

    move-object/from16 v21, v4

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v24}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheet-YbuCTN8(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Lbm3;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3a
    move-object v2, v5

    move v4, v7

    move-object v5, v9

    move-wide v8, v12

    move-object/from16 v13, v17

    move/from16 v27, v14

    move-object v14, v3

    move-object v3, v6

    move-wide v6, v10

    move/from16 v10, v27

    move-wide v11, v15

    move-object/from16 v15, v19

    goto :goto_26

    :cond_3b
    move-object/from16 v21, v4

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v4, p3

    move-object v5, v7

    move-wide v6, v10

    move-object v2, v12

    move-object v3, v13

    move-wide v8, v14

    move/from16 v10, p9

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    :goto_26
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_3c

    move-object v1, v0

    new-instance v0, Lfc5;

    move-object/from16 v16, p15

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v26, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v19}, Lfc5;-><init>(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;III)V

    move-object/from16 v1, v26

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_3c
    return-void
.end method

.method public static final ModalBottomSheetDialog-sW7UJKQ(Lll3;JLandroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Lbm3;Landroidx/compose/runtime/Composer;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;J",
            "Landroidx/compose/material3/ModalBottomSheetProperties;",
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
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

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    move/from16 v13, p7

    const v0, 0x2db43478

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    and-int/lit8 v1, v13, 0x6

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v1, p0

    move v2, v13

    :goto_1
    and-int/lit8 v3, v13, 0x30

    move-wide/from16 v6, p1

    if-nez v3, :cond_3

    invoke-interface {v14, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

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

    if-nez v3, :cond_5

    move-object/from16 v3, p3

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_3

    :cond_4
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v2, v8

    goto :goto_4

    :cond_5
    move-object/from16 v3, p3

    :goto_4
    and-int/lit16 v8, v13, 0xc00

    if-nez v8, :cond_8

    and-int/lit16 v8, v13, 0x1000

    if-nez v8, :cond_6

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_5

    :cond_6
    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    :goto_5
    if-eqz v8, :cond_7

    const/16 v8, 0x800

    goto :goto_6

    :cond_7
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v2, v8

    :cond_8
    and-int/lit16 v8, v13, 0x6000

    if-nez v8, :cond_a

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0x4000

    goto :goto_7

    :cond_9
    const/16 v8, 0x2000

    :goto_7
    or-int/2addr v2, v8

    :cond_a
    and-int/lit16 v8, v2, 0x2493

    const/16 v10, 0x2492

    const/4 v15, 0x0

    if-eq v8, v10, :cond_b

    const/4 v8, 0x1

    goto :goto_8

    :cond_b
    move v8, v15

    :goto_8
    and-int/lit8 v10, v2, 0x1

    invoke-interface {v14, v8, v10}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, -0x1

    const-string v10, "androidx.compose.material3.ModalBottomSheetDialog (ModalBottomSheet.android.kt:369)"

    invoke-static {v0, v2, v8, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_c
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v8

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/unit/Density;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v10

    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {v14, v15}, Landroidx/compose/runtime/ComposablesKt;->rememberCompositionContext(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;

    move-result-object v11

    shr-int/lit8 v16, v2, 0xc

    and-int/lit8 v4, v16, 0xe

    invoke-static {v12, v14, v4}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Object;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v15, v1, :cond_d

    new-instance v15, Leg4;

    const/4 v1, 0x1

    invoke-direct {v15, v1}, Leg4;-><init>(I)V

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_9

    :cond_d
    const/4 v1, 0x1

    :goto_9
    check-cast v15, Lll3;

    const/16 v1, 0x30

    invoke-static {v5, v15, v14, v1}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Lll3;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v5, v15, :cond_e

    sget-object v5, Lgx2;->b:Lgx2;

    invoke-static {v5, v14}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lo22;Landroidx/compose/runtime/Composer;)Ly22;

    move-result-object v5

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_e
    check-cast v5, Ly22;

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    or-int v15, v15, v18

    move-object/from16 v18, v0

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v15, :cond_10

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v0, v15, :cond_f

    goto :goto_a

    :cond_f
    move/from16 v19, v2

    move-object v8, v10

    const/4 v3, 0x1

    const/16 v12, 0x100

    goto :goto_b

    :cond_10
    :goto_a
    new-instance v0, Landroidx/compose/material3/ModalBottomSheetDialogWrapper;

    move-object v15, v11

    const/4 v11, 0x0

    move/from16 v19, v2

    move-object v2, v3

    move-object/from16 v20, v15

    const/16 v12, 0x100

    move-object v15, v4

    move-wide v3, v6

    move-object v7, v8

    move-object v6, v10

    move-object v8, v1

    move-object v10, v5

    move-object/from16 v5, v18

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/ModalBottomSheetDialogWrapper;-><init>(Lll3;Landroidx/compose/material3/ModalBottomSheetProperties;JLandroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;Landroidx/compose/animation/core/Animatable;Ly22;Ljh2;)V

    move-object v8, v6

    new-instance v1, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetDialog$dialog$1$1$1;

    invoke-direct {v1, v15}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetDialog$dialog$1$1$1;-><init>(Landroidx/compose/runtime/State;)V

    const v2, -0x3eaaaf9b

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object/from16 v15, v20

    invoke-virtual {v0, v15, v1}, Landroidx/compose/material3/ModalBottomSheetDialogWrapper;->setContent(Landroidx/compose/runtime/CompositionContext;Lbm3;)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_b
    check-cast v0, Landroidx/compose/material3/ModalBottomSheetDialogWrapper;

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_11

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_12

    :cond_11
    new-instance v2, Landroidx/compose/material3/l2;

    invoke-direct {v2, v0}, Landroidx/compose/material3/l2;-><init>(Landroidx/compose/material3/ModalBottomSheetDialogWrapper;)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_12
    check-cast v2, Lnl3;

    const/4 v1, 0x0

    invoke-static {v0, v2, v14, v1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lnl3;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v2, v19

    and-int/lit8 v4, v2, 0xe

    const/4 v5, 0x4

    if-ne v4, v5, :cond_13

    move v11, v3

    goto :goto_c

    :cond_13
    const/4 v11, 0x0

    :goto_c
    or-int/2addr v1, v11

    and-int/lit16 v4, v2, 0x380

    if-ne v4, v12, :cond_14

    move v11, v3

    goto :goto_d

    :cond_14
    const/4 v11, 0x0

    :goto_d
    or-int/2addr v1, v11

    and-int/lit8 v2, v2, 0x70

    const/16 v4, 0x20

    if-ne v2, v4, :cond_15

    move v11, v3

    goto :goto_e

    :cond_15
    const/4 v11, 0x0

    :goto_e
    or-int/2addr v1, v11

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_16

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_17

    :cond_16
    new-instance v2, Landroidx/compose/material3/m2;

    move-object/from16 v4, p0

    move-wide/from16 v6, p1

    move-object/from16 v5, p3

    move-object v3, v0

    invoke-direct/range {v2 .. v8}, Landroidx/compose/material3/m2;-><init>(Landroidx/compose/material3/ModalBottomSheetDialogWrapper;Lll3;Landroidx/compose/material3/ModalBottomSheetProperties;JLandroidx/compose/ui/unit/LayoutDirection;)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_17
    check-cast v2, Lll3;

    const/4 v1, 0x0

    invoke-static {v2, v14, v1}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lll3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_f

    :cond_18
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_19
    :goto_f
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_1a

    new-instance v0, Lec5;

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lec5;-><init>(Lll3;JLandroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Lbm3;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_1a
    return-void
.end method

.method private static final ModalBottomSheetDialog_sW7UJKQ$lambda$1(Landroidx/compose/runtime/State;)Lbm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;>;)",
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbm3;

    return-object p0
.end method

.method private static final ModalBottomSheetDialog_sW7UJKQ$lambda$10$lambda$9(Landroidx/compose/material3/ModalBottomSheetDialogWrapper;Lll3;Landroidx/compose/material3/ModalBottomSheetProperties;JLandroidx/compose/ui/unit/LayoutDirection;)Lj59;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroidx/compose/material3/ModalBottomSheetDialogWrapper;->updateParameters-9LQNqLg(Lll3;Landroidx/compose/material3/ModalBottomSheetProperties;JLandroidx/compose/ui/unit/LayoutDirection;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalBottomSheetDialog_sW7UJKQ$lambda$11(Lll3;JLandroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 8

    or-int/lit8 p6, p6, 0x1

    invoke-static {p6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheetDialog-sW7UJKQ(Lll3;JLandroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Lbm3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalBottomSheetDialog_sW7UJKQ$lambda$3$lambda$2()Ljava/util/UUID;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method private static final ModalBottomSheetDialog_sW7UJKQ$lambda$8$lambda$7(Landroidx/compose/material3/ModalBottomSheetDialogWrapper;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    new-instance p1, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetDialog_sW7UJKQ$lambda$8$lambda$7$$inlined$onDispose$1;

    invoke-direct {p1, p0}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetDialog_sW7UJKQ$lambda$8$lambda$7$$inlined$onDispose$1;-><init>(Landroidx/compose/material3/ModalBottomSheetDialogWrapper;)V

    return-object p1
.end method

.method private static final ModalBottomSheet_dYc4hso$lambda$0(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 21

    or-int/lit8 v0, p16, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v18

    invoke-static/range {p17 .. p17}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v20, p18

    move-object/from16 v17, p19

    invoke-static/range {v1 .. v20}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheet-dYc4hso(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method public static synthetic a()Ljava/util/UUID;
    .locals 1

    invoke-static {}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheetDialog_sW7UJKQ$lambda$3$lambda$2()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$ModalBottomSheetDialog_sW7UJKQ$lambda$1(Landroidx/compose/runtime/State;)Lbm3;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheetDialog_sW7UJKQ$lambda$1(Landroidx/compose/runtime/State;)Lbm3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p20}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheet_dYc4hso$lambda$0(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/material3/ModalBottomSheetDialogWrapper;Lll3;Landroidx/compose/material3/ModalBottomSheetProperties;JLandroidx/compose/ui/unit/LayoutDirection;)Lj59;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheetDialog_sW7UJKQ$lambda$10$lambda$9(Landroidx/compose/material3/ModalBottomSheetDialogWrapper;Lll3;Landroidx/compose/material3/ModalBottomSheetProperties;JLandroidx/compose/ui/unit/LayoutDirection;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lll3;JLandroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p8}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheetDialog_sW7UJKQ$lambda$11(Lll3;JLandroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/compose/material3/ModalBottomSheetDialogWrapper;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheetDialog_sW7UJKQ$lambda$8$lambda$7(Landroidx/compose/material3/ModalBottomSheetDialogWrapper;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method

.method public static final isDark-8_81llA(J)Z
    .locals 2

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->luminance-8_81llA(J)F

    move-result p0

    float-to-double p0, p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isFlagSecureEnabled(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
