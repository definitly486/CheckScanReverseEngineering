.class public final Landroidx/compose/material3/ModalBottomSheetKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/ModalBottomSheetKt$WhenMappings;
    }
.end annotation


# static fields
.field private static final PredictiveBackChildTransformOrigin:J

.field private static final PredictiveBackMaxScaleXDistance:F

.field private static final PredictiveBackMaxScaleYDistance:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/ModalBottomSheetKt;->PredictiveBackMaxScaleXDistance:F

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/ModalBottomSheetKt;->PredictiveBackMaxScaleYDistance:F

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/TransformOriginKt;->TransformOrigin(FF)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/material3/ModalBottomSheetKt;->PredictiveBackChildTransformOrigin:J

    return-void
.end method

.method public static final ModalBottomSheet-YbuCTN8(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Lbm3;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;Landroidx/compose/runtime/Composer;III)V
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/SheetState;",
            "FZ",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFJ",
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
            "+",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            ">;",
            "Landroidx/compose/material3/ModalBottomSheetProperties;",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
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

    move-object/from16 v1, p0

    move/from16 v0, p18

    move/from16 v2, p19

    move/from16 v3, p20

    const v4, 0x7188eb30

    move-object/from16 v5, p17

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_0

    or-int/lit8 v6, v0, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v0, 0x6

    if-nez v6, :cond_2

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v0

    goto :goto_1

    :cond_2
    move v6, v0

    :goto_1
    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_4

    or-int/lit8 v6, v6, 0x30

    :cond_3
    move-object/from16 v12, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v12, v0, 0x30

    if-nez v12, :cond_3

    move-object/from16 v12, p1

    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/16 v13, 0x20

    goto :goto_2

    :cond_5
    const/16 v13, 0x10

    :goto_2
    or-int/2addr v6, v13

    :goto_3
    and-int/lit16 v13, v0, 0x180

    if-nez v13, :cond_8

    and-int/lit8 v13, v3, 0x4

    if-nez v13, :cond_6

    move-object/from16 v13, p2

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v13, p2

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v6, v6, v16

    goto :goto_5

    :cond_8
    move-object/from16 v13, p2

    :goto_5
    and-int/lit8 v16, v3, 0x8

    const/16 v17, 0x400

    const/16 v18, 0x800

    if-eqz v16, :cond_a

    or-int/lit16 v6, v6, 0xc00

    :cond_9
    move/from16 v10, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v10, v0, 0xc00

    if-nez v10, :cond_9

    move/from16 v10, p3

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_b

    move/from16 v19, v18

    goto :goto_6

    :cond_b
    move/from16 v19, v17

    :goto_6
    or-int v6, v6, v19

    :goto_7
    and-int/lit8 v19, v3, 0x10

    if-eqz v19, :cond_d

    or-int/lit16 v6, v6, 0x6000

    :cond_c
    move/from16 v11, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v11, v0, 0x6000

    if-nez v11, :cond_c

    move/from16 v11, p4

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v21

    if-eqz v21, :cond_e

    const/16 v21, 0x4000

    goto :goto_8

    :cond_e
    const/16 v21, 0x2000

    :goto_8
    or-int v6, v6, v21

    :goto_9
    const/high16 v21, 0x30000

    and-int v21, v0, v21

    if-nez v21, :cond_10

    and-int/lit8 v21, v3, 0x20

    move-object/from16 v14, p5

    if-nez v21, :cond_f

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    const/high16 v22, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v22, 0x10000

    :goto_a
    or-int v6, v6, v22

    goto :goto_b

    :cond_10
    move-object/from16 v14, p5

    :goto_b
    const/high16 v22, 0x180000

    and-int v22, v0, v22

    if-nez v22, :cond_12

    and-int/lit8 v22, v3, 0x40

    move-wide/from16 v7, p6

    if-nez v22, :cond_11

    invoke-interface {v5, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v23

    if-eqz v23, :cond_11

    const/high16 v23, 0x100000

    goto :goto_c

    :cond_11
    const/high16 v23, 0x80000

    :goto_c
    or-int v6, v6, v23

    goto :goto_d

    :cond_12
    move-wide/from16 v7, p6

    :goto_d
    const/high16 v23, 0xc00000

    and-int v23, v0, v23

    if-nez v23, :cond_14

    and-int/lit16 v15, v3, 0x80

    move v8, v6

    move-wide/from16 v6, p8

    if-nez v15, :cond_13

    invoke-interface {v5, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v15

    if-eqz v15, :cond_13

    const/high16 v15, 0x800000

    goto :goto_e

    :cond_13
    const/high16 v15, 0x400000

    :goto_e
    or-int/2addr v8, v15

    goto :goto_f

    :cond_14
    move v8, v6

    move-wide/from16 v6, p8

    :goto_f
    and-int/lit16 v15, v3, 0x100

    const/high16 v24, 0x6000000

    if-eqz v15, :cond_15

    or-int v8, v8, v24

    move/from16 v4, p10

    goto :goto_11

    :cond_15
    and-int v24, v0, v24

    move/from16 v4, p10

    if-nez v24, :cond_17

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v25

    if-eqz v25, :cond_16

    const/high16 v25, 0x4000000

    goto :goto_10

    :cond_16
    const/high16 v25, 0x2000000

    :goto_10
    or-int v8, v8, v25

    :cond_17
    :goto_11
    const/high16 v25, 0x30000000

    and-int v25, v0, v25

    if-nez v25, :cond_19

    and-int/lit16 v0, v3, 0x200

    move-wide/from16 v6, p11

    if-nez v0, :cond_18

    invoke-interface {v5, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_18

    const/high16 v0, 0x20000000

    goto :goto_12

    :cond_18
    const/high16 v0, 0x10000000

    :goto_12
    or-int/2addr v8, v0

    goto :goto_13

    :cond_19
    move-wide/from16 v6, p11

    :goto_13
    and-int/lit16 v0, v3, 0x400

    if-eqz v0, :cond_1a

    or-int/lit8 v25, v2, 0x6

    move/from16 v26, v25

    move/from16 v25, v0

    move-object/from16 v0, p13

    goto :goto_15

    :cond_1a
    and-int/lit8 v25, v2, 0x6

    if-nez v25, :cond_1c

    move/from16 v25, v0

    move-object/from16 v0, p13

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1b

    const/16 v26, 0x4

    goto :goto_14

    :cond_1b
    const/16 v26, 0x2

    :goto_14
    or-int v26, v2, v26

    goto :goto_15

    :cond_1c
    move/from16 v25, v0

    move-object/from16 v0, p13

    move/from16 v26, v2

    :goto_15
    and-int/lit8 v27, v2, 0x30

    if-nez v27, :cond_1f

    and-int/lit16 v0, v3, 0x800

    if-nez v0, :cond_1d

    move-object/from16 v0, p14

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1e

    const/16 v20, 0x20

    goto :goto_16

    :cond_1d
    move-object/from16 v0, p14

    :cond_1e
    const/16 v20, 0x10

    :goto_16
    or-int v26, v26, v20

    :goto_17
    move/from16 v0, v26

    goto :goto_18

    :cond_1f
    move-object/from16 v0, p14

    goto :goto_17

    :goto_18
    and-int/lit16 v4, v3, 0x1000

    if-eqz v4, :cond_20

    or-int/lit16 v0, v0, 0x180

    goto :goto_1b

    :cond_20
    move/from16 v20, v0

    and-int/lit16 v0, v2, 0x180

    if-nez v0, :cond_22

    move-object/from16 v0, p15

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_21

    const/16 v21, 0x100

    goto :goto_19

    :cond_21
    const/16 v21, 0x80

    :goto_19
    or-int v20, v20, v21

    :goto_1a
    move/from16 v0, v20

    goto :goto_1b

    :cond_22
    move-object/from16 v0, p15

    goto :goto_1a

    :goto_1b
    move/from16 v20, v4

    and-int/lit16 v4, v3, 0x2000

    if-eqz v4, :cond_24

    or-int/lit16 v0, v0, 0xc00

    :cond_23
    move-object/from16 v4, p16

    goto :goto_1c

    :cond_24
    and-int/lit16 v4, v2, 0xc00

    if-nez v4, :cond_23

    move-object/from16 v4, p16

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_25

    move/from16 v17, v18

    :cond_25
    or-int v0, v0, v17

    :goto_1c
    const v17, 0x12492493

    and-int v2, v8, v17

    const v4, 0x12492492

    const/4 v6, 0x0

    if-ne v2, v4, :cond_27

    and-int/lit16 v2, v0, 0x493

    const/16 v4, 0x492

    if-eq v2, v4, :cond_26

    goto :goto_1d

    :cond_26
    move v2, v6

    goto :goto_1e

    :cond_27
    :goto_1d
    const/4 v2, 0x1

    :goto_1e
    and-int/lit8 v4, v8, 0x1

    invoke-interface {v5, v2, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, p18, 0x1

    const v17, -0x1c00001

    const v18, -0x380001

    const v21, -0x70001

    const p17, -0x70000001

    const/4 v7, 0x0

    const/16 v26, 0x0

    const/4 v4, 0x6

    if-eqz v2, :cond_2f

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_1f

    :cond_28
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, v3, 0x4

    if-eqz v2, :cond_29

    and-int/lit16 v8, v8, -0x381

    :cond_29
    and-int/lit8 v2, v3, 0x20

    if-eqz v2, :cond_2a

    and-int v8, v8, v21

    :cond_2a
    and-int/lit8 v2, v3, 0x40

    if-eqz v2, :cond_2b

    and-int v8, v8, v18

    :cond_2b
    and-int/lit16 v2, v3, 0x80

    if-eqz v2, :cond_2c

    and-int v8, v8, v17

    :cond_2c
    and-int/lit16 v2, v3, 0x200

    if-eqz v2, :cond_2d

    and-int v8, v8, p17

    :cond_2d
    and-int/lit16 v2, v3, 0x800

    if-eqz v2, :cond_2e

    and-int/lit8 v0, v0, -0x71

    :cond_2e
    move-wide/from16 v39, p6

    move-wide/from16 v41, p8

    move/from16 v43, p10

    move-wide/from16 v27, p11

    move-object/from16 v44, p13

    move-object/from16 v45, p14

    move-object/from16 v31, p15

    move/from16 v36, v10

    move/from16 v37, v11

    move-object/from16 v35, v12

    move-object/from16 v38, v14

    goto/16 :goto_27

    :cond_2f
    :goto_1f
    if-eqz v9, :cond_30

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v12, v2

    :cond_30
    and-int/lit8 v2, v3, 0x4

    const/4 v9, 0x3

    if-eqz v2, :cond_31

    invoke-static {v6, v7, v5, v6, v9}, Landroidx/compose/material3/ModalBottomSheetKt;->rememberModalBottomSheetState(ZLnl3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object v2

    and-int/lit16 v8, v8, -0x381

    move-object v13, v2

    :cond_31
    if-eqz v16, :cond_32

    sget-object v2, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/BottomSheetDefaults;->getSheetMaxWidth-D9Ej5fM()F

    move-result v2

    goto :goto_20

    :cond_32
    move v2, v10

    :goto_20
    if-eqz v19, :cond_33

    const/4 v11, 0x1

    :cond_33
    and-int/lit8 v10, v3, 0x20

    if-eqz v10, :cond_34

    sget-object v10, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v10, v5, v4}, Landroidx/compose/material3/BottomSheetDefaults;->getExpandedShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v10

    and-int v8, v8, v21

    move-object v14, v10

    :cond_34
    and-int/lit8 v10, v3, 0x40

    if-eqz v10, :cond_35

    sget-object v10, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v10, v5, v4}, Landroidx/compose/material3/BottomSheetDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v27

    and-int v8, v8, v18

    move-wide/from16 v6, v27

    goto :goto_21

    :cond_35
    move-wide/from16 v6, p6

    :goto_21
    and-int/lit16 v10, v3, 0x80

    if-eqz v10, :cond_36

    shr-int/lit8 v10, v8, 0x12

    and-int/lit8 v10, v10, 0xe

    invoke-static {v6, v7, v5, v10}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v27

    and-int v8, v8, v17

    goto :goto_22

    :cond_36
    move-wide/from16 v27, p8

    :goto_22
    if-eqz v15, :cond_37

    invoke-static/range {v26 .. v26}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    goto :goto_23

    :cond_37
    move/from16 v10, p10

    :goto_23
    and-int/lit16 v15, v3, 0x200

    if-eqz v15, :cond_38

    sget-object v15, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v15, v5, v4}, Landroidx/compose/material3/BottomSheetDefaults;->getScrimColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v29

    and-int v8, v8, p17

    goto :goto_24

    :cond_38
    move-wide/from16 v29, p11

    :goto_24
    if-eqz v25, :cond_39

    sget-object v15, Landroidx/compose/material3/ComposableSingletons$ModalBottomSheetKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ModalBottomSheetKt;

    invoke-virtual {v15}, Landroidx/compose/material3/ComposableSingletons$ModalBottomSheetKt;->getLambda$1121996006$material3()Lbm3;

    move-result-object v15

    goto :goto_25

    :cond_39
    move-object/from16 v15, p13

    :goto_25
    and-int/lit16 v4, v3, 0x800

    if-eqz v4, :cond_3a

    sget-object v4, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$1;->INSTANCE:Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$1;

    and-int/lit8 v0, v0, -0x71

    goto :goto_26

    :cond_3a
    move-object/from16 v4, p14

    :goto_26
    move/from16 p1, v0

    if-eqz v20, :cond_3b

    new-instance v0, Landroidx/compose/material3/ModalBottomSheetProperties;

    move/from16 p2, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v9, v2}, Landroidx/compose/material3/ModalBottomSheetProperties;-><init>(ZZILjh2;)V

    move/from16 v36, p2

    move-object/from16 v31, v0

    move-object/from16 v45, v4

    move-wide/from16 v39, v6

    move/from16 v43, v10

    move/from16 v37, v11

    move-object/from16 v35, v12

    move-object/from16 v38, v14

    move-object/from16 v44, v15

    move-wide/from16 v41, v27

    move-wide/from16 v27, v29

    move/from16 v0, p1

    goto :goto_27

    :cond_3b
    move/from16 p2, v2

    move/from16 v36, p2

    move-object/from16 v31, p15

    move-object/from16 v45, v4

    move-wide/from16 v39, v6

    move/from16 v43, v10

    move/from16 v37, v11

    move-object/from16 v35, v12

    move-object/from16 v38, v14

    move-object/from16 v44, v15

    move-wide/from16 v41, v27

    move-wide/from16 v27, v29

    :goto_27
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string v2, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:137)"

    const v3, 0x7188eb30

    invoke-static {v3, v8, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3c
    sget-object v2, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    const/4 v3, 0x6

    invoke-static {v2, v5, v3}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v4

    invoke-static {v2, v5, v3}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v2

    sget-object v6, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v6, v5, v3}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v6

    and-int/lit16 v3, v8, 0x380

    xor-int/lit16 v3, v3, 0x180

    const/16 v7, 0x100

    if-le v3, v7, :cond_3d

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3e

    :cond_3d
    and-int/lit16 v9, v8, 0x180

    if-ne v9, v7, :cond_3f

    :cond_3e
    const/4 v7, 0x1

    goto :goto_28

    :cond_3f
    const/4 v7, 0x0

    :goto_28
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_40

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v9, v7, :cond_41

    :cond_40
    new-instance v9, Lcc5;

    invoke-direct {v9, v13, v2, v6, v4}, Lcc5;-><init>(Landroidx/compose/material3/SheetState;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_41
    check-cast v9, Lll3;

    const/4 v2, 0x0

    invoke-static {v9, v5, v2}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lll3;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v4, v7, :cond_42

    sget-object v4, Lgx2;->b:Lgx2;

    invoke-static {v4, v5}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lo22;Landroidx/compose/runtime/Composer;)Ly22;

    move-result-object v4

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_42
    check-cast v4, Ly22;

    const/16 v7, 0x100

    if-le v3, v7, :cond_43

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_44

    :cond_43
    and-int/lit16 v9, v8, 0x180

    if-ne v9, v7, :cond_45

    :cond_44
    const/4 v7, 0x1

    goto :goto_29

    :cond_45
    move v7, v2

    :goto_29
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    and-int/lit8 v9, v8, 0xe

    const/4 v10, 0x4

    if-ne v9, v10, :cond_46

    const/4 v10, 0x1

    goto :goto_2a

    :cond_46
    move v10, v2

    :goto_2a
    or-int/2addr v7, v10

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v7, :cond_47

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v10, v7, :cond_48

    :cond_47
    new-instance v10, Ldc5;

    invoke-direct {v10, v13, v4, v1}, Ldc5;-><init>(Landroidx/compose/material3/SheetState;Ly22;Lll3;)V

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_48
    move-object/from16 v29, v10

    check-cast v29, Lll3;

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    const/16 v10, 0x100

    if-le v3, v10, :cond_49

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4a

    :cond_49
    and-int/lit16 v11, v8, 0x180

    if-ne v11, v10, :cond_4b

    :cond_4a
    const/4 v10, 0x1

    goto :goto_2b

    :cond_4b
    move v10, v2

    :goto_2b
    or-int/2addr v7, v10

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4c

    const/4 v10, 0x1

    goto :goto_2c

    :cond_4c
    move v10, v2

    :goto_2c
    or-int/2addr v7, v10

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v7, :cond_4d

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v10, v7, :cond_4e

    :cond_4d
    new-instance v10, Lrb5;

    invoke-direct {v10, v13, v4, v1}, Lrb5;-><init>(Landroidx/compose/material3/SheetState;Ly22;Lll3;)V

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4e
    move-object/from16 v34, v10

    check-cast v34, Lnl3;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v7, v10, :cond_4f

    move/from16 v10, v26

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v10, v10, v12, v11}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v7

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4f
    check-cast v7, Landroidx/compose/animation/core/Animatable;

    const/16 v10, 0x100

    if-le v3, v10, :cond_50

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_51

    :cond_50
    and-int/lit16 v11, v8, 0x180

    if-ne v11, v10, :cond_52

    :cond_51
    const/4 v10, 0x1

    goto :goto_2d

    :cond_52
    move v10, v2

    :goto_2d
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    const/4 v11, 0x4

    if-ne v9, v11, :cond_53

    const/4 v9, 0x1

    goto :goto_2e

    :cond_53
    move v9, v2

    :goto_2e
    or-int/2addr v9, v10

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_54

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v10, v9, :cond_55

    :cond_54
    new-instance v10, Lsb5;

    invoke-direct {v10, v13, v4, v7, v1}, Lsb5;-><init>(Landroidx/compose/material3/SheetState;Ly22;Landroidx/compose/animation/core/Animatable;Lll3;)V

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_55
    check-cast v10, Lll3;

    new-instance v26, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$4;

    move-object/from16 v46, p16

    move-object/from16 v33, v4

    move-object/from16 v32, v7

    move-object/from16 v30, v13

    invoke-direct/range {v26 .. v46}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$4;-><init>(JLll3;Landroidx/compose/material3/SheetState;Landroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Ly22;Lnl3;Landroidx/compose/ui/Modifier;FZLandroidx/compose/ui/graphics/Shape;JJFLbm3;Lbm3;Ldm3;)V

    move-object/from16 v4, v26

    const/16 v7, 0x36

    const v9, 0x3c33c970

    const/4 v11, 0x1

    invoke-static {v9, v11, v4, v5, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    shr-int/lit8 v7, v8, 0x12

    and-int/lit8 v7, v7, 0x70

    or-int/lit16 v7, v7, 0x6000

    and-int/lit16 v0, v0, 0x380

    or-int/2addr v0, v7

    sget v7, Landroidx/compose/animation/core/Animatable;->$stable:I

    shl-int/lit8 v7, v7, 0x9

    or-int/2addr v0, v7

    move/from16 p8, v0

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p1, v10

    move-object/from16 p4, v31

    move-object/from16 p5, v32

    move-wide/from16 p2, v41

    invoke-static/range {p1 .. p8}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheetDialog-sW7UJKQ(Lll3;JLandroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Lbm3;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v0, p7

    invoke-virtual {v13}, Landroidx/compose/material3/SheetState;->getHasExpandedState()Z

    move-result v4

    if-eqz v4, :cond_5b

    const v4, 0x2c9c96f2

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const/16 v7, 0x100

    if-le v3, v7, :cond_56

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    :cond_56
    and-int/lit16 v3, v8, 0x180

    if-ne v3, v7, :cond_57

    goto :goto_2f

    :cond_57
    move v11, v2

    :cond_58
    :goto_2f
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v11, :cond_59

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_5a

    :cond_59
    new-instance v2, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$5$1;

    const/4 v11, 0x0

    invoke-direct {v2, v13, v11}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$5$1;-><init>(Landroidx/compose/material3/SheetState;Le02;)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5a
    check-cast v2, Lbm3;

    const/4 v3, 0x6

    shr-int/lit8 v3, v8, 0x6

    and-int/lit8 v3, v3, 0xe

    invoke-static {v13, v2, v0, v3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_30

    :cond_5b
    const v2, 0x2c9d8732

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_30
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5c
    move-object v3, v13

    move-wide/from16 v12, v27

    move-object/from16 v16, v31

    move-object/from16 v2, v35

    move/from16 v4, v36

    move/from16 v5, v37

    move-object/from16 v6, v38

    move-wide/from16 v7, v39

    move-wide/from16 v9, v41

    move/from16 v11, v43

    move-object/from16 v14, v44

    move-object/from16 v15, v45

    goto :goto_31

    :cond_5d
    move-object v0, v5

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-wide/from16 v7, p6

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move v4, v10

    move v5, v11

    move-object v2, v12

    move-object v3, v13

    move-object v6, v14

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-wide/from16 v12, p11

    move-object/from16 v14, p13

    :goto_31
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_5e

    move-object/from16 v17, v0

    new-instance v0, Ltb5;

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v47, v17

    move-object/from16 v17, p16

    invoke-direct/range {v0 .. v20}, Ltb5;-><init>(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Lbm3;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;III)V

    move-object v1, v0

    move-object/from16 v0, v47

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_5e
    return-void
.end method

.method public static final synthetic ModalBottomSheet-dYc4hso(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Lbm3;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;Landroidx/compose/runtime/Composer;III)V
    .locals 30
    .annotation runtime Lul2;
    .end annotation

    move/from16 v0, p17

    move/from16 v1, p18

    move/from16 v2, p19

    const v3, 0x38db610c

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

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    move-object/from16 v18, p13

    move-object/from16 v19, p14

    move-object v9, v7

    move-object v5, v12

    move-object v6, v13

    move-wide v12, v14

    move/from16 v7, p3

    move/from16 v14, p9

    move-wide/from16 v15, p10

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

    sget-object v7, Landroidx/compose/material3/ComposableSingletons$ModalBottomSheetKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ModalBottomSheetKt;

    invoke-virtual {v7}, Landroidx/compose/material3/ComposableSingletons$ModalBottomSheetKt;->getLambda$-655173438$material3()Lbm3;

    move-result-object v7

    goto :goto_22

    :cond_36
    move-object/from16 v7, p12

    :goto_22
    and-int/lit16 v9, v2, 0x400

    if-eqz v9, :cond_37

    sget-object v9, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$7;->INSTANCE:Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$7;

    and-int/lit8 v0, v0, -0xf

    goto :goto_23

    :cond_37
    move-object/from16 v9, p13

    :goto_23
    if-eqz v24, :cond_38

    sget-object v18, Landroidx/compose/material3/ModalBottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/ModalBottomSheetDefaults;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/material3/ModalBottomSheetDefaults;->getProperties()Landroidx/compose/material3/ModalBottomSheetProperties;

    move-result-object v18

    move-object/from16 v19, v18

    :goto_24
    move-object/from16 v18, v9

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

    const-string v1, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:237)"

    move/from16 p16, v3

    const v3, 0x38db610c

    invoke-static {v3, v8, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_26

    :cond_39
    move/from16 p16, v3

    :goto_26
    and-int/lit8 v1, v8, 0xe

    or-int/lit16 v1, v1, 0x6000

    and-int/lit8 v3, v8, 0x70

    or-int/2addr v1, v3

    and-int/lit16 v3, v8, 0x380

    or-int/2addr v1, v3

    and-int/lit16 v3, v8, 0x1c00

    or-int/2addr v1, v3

    shl-int/lit8 v3, v8, 0x3

    const/high16 v20, 0x70000

    and-int v20, v3, v20

    or-int v1, v1, v20

    const/high16 v20, 0x380000

    and-int v20, v3, v20

    or-int v1, v1, v20

    const/high16 v20, 0x1c00000

    and-int v20, v3, v20

    or-int v1, v1, v20

    const/high16 v20, 0xe000000

    and-int v20, v3, v20

    or-int v1, v1, v20

    const/high16 v20, 0x70000000

    and-int v3, v3, v20

    or-int v22, v1, v3

    shr-int/lit8 v1, v8, 0x1b

    and-int/lit8 v1, v1, 0xe

    shl-int/lit8 v0, v0, 0x3

    and-int/lit8 v3, v0, 0x70

    or-int/2addr v1, v3

    and-int/lit16 v3, v0, 0x380

    or-int/2addr v1, v3

    and-int/lit16 v0, v0, 0x1c00

    or-int v23, v1, v0

    const/16 v24, 0x0

    const/4 v8, 0x1

    move-object/from16 v20, p15

    move-object/from16 v21, v4

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v24}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheet-YbuCTN8(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Lbm3;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3a
    move-wide v3, v12

    move-object v12, v5

    move-object v5, v9

    move-wide v8, v3

    move-object v3, v6

    move v4, v7

    move-wide v6, v10

    move v10, v14

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    goto :goto_27

    :cond_3b
    move-object/from16 v21, v4

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v4, p3

    move-object/from16 v19, p14

    move-object v5, v7

    move-wide v6, v10

    move-object v3, v13

    move-wide v8, v14

    move/from16 v10, p9

    move-wide/from16 v15, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    :goto_27
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_3c

    move-object v1, v0

    new-instance v0, Lyb5;

    move-object/from16 v17, v19

    move/from16 v19, v2

    move-object v2, v12

    move-wide v11, v15

    move-object/from16 v15, v17

    move-object/from16 v16, p15

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v26, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v19}, Lyb5;-><init>(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Lbm3;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;III)V

    move-object/from16 v1, v26

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_3c
    return-void
.end method

.method public static final ModalBottomSheetContent-7---e2Q(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/animation/core/Animatable;Ly22;Lll3;Lnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFLbm3;Lbm3;Ldm3;Landroidx/compose/runtime/Composer;III)V
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Ly22;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Ljava/lang/Float;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/SheetState;",
            "FZ",
            "Landroidx/compose/ui/graphics/Shape;",
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
            "+",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            ">;",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
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

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move/from16 v0, p19

    move/from16 v3, p20

    move/from16 v4, p21

    const v6, -0x23aaf70

    move-object/from16 v7, p18

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    const/high16 v8, -0x80000000

    and-int/2addr v8, v4

    if-eqz v8, :cond_0

    or-int/lit8 v8, v0, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v0, 0x6

    if-nez v8, :cond_2

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move v8, v0

    :goto_1
    and-int/lit8 v11, v4, 0x1

    if-eqz v11, :cond_3

    or-int/lit8 v8, v8, 0x30

    goto :goto_4

    :cond_3
    and-int/lit8 v11, v0, 0x30

    if-nez v11, :cond_6

    and-int/lit8 v11, v0, 0x40

    if-nez v11, :cond_4

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_2

    :cond_4
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    :goto_2
    if-eqz v11, :cond_5

    const/16 v11, 0x20

    goto :goto_3

    :cond_5
    const/16 v11, 0x10

    :goto_3
    or-int/2addr v8, v11

    :cond_6
    :goto_4
    and-int/lit8 v11, v4, 0x2

    if-eqz v11, :cond_8

    or-int/lit16 v8, v8, 0x180

    :cond_7
    move-object/from16 v11, p2

    goto :goto_6

    :cond_8
    and-int/lit16 v11, v0, 0x180

    if-nez v11, :cond_7

    move-object/from16 v11, p2

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    const/16 v16, 0x100

    goto :goto_5

    :cond_9
    const/16 v16, 0x80

    :goto_5
    or-int v8, v8, v16

    :goto_6
    and-int/lit8 v16, v4, 0x4

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_b

    or-int/lit16 v8, v8, 0xc00

    :cond_a
    move-object/from16 v9, p3

    goto :goto_8

    :cond_b
    and-int/lit16 v9, v0, 0xc00

    if-nez v9, :cond_a

    move-object/from16 v9, p3

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    move/from16 v16, v17

    goto :goto_7

    :cond_c
    move/from16 v16, v18

    :goto_7
    or-int v8, v8, v16

    :goto_8
    and-int/lit8 v16, v4, 0x8

    const/16 v20, 0x2000

    if-eqz v16, :cond_d

    or-int/lit16 v8, v8, 0x6000

    goto :goto_a

    :cond_d
    and-int/lit16 v14, v0, 0x6000

    if-nez v14, :cond_f

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/16 v14, 0x4000

    goto :goto_9

    :cond_e
    move/from16 v14, v20

    :goto_9
    or-int/2addr v8, v14

    :cond_f
    :goto_a
    and-int/lit8 v14, v4, 0x10

    const/high16 v21, 0x10000

    const/high16 v22, 0x20000

    const/high16 v23, 0x30000

    if-eqz v14, :cond_10

    or-int v8, v8, v23

    move-object/from16 v15, p5

    goto :goto_c

    :cond_10
    and-int v24, v0, v23

    move-object/from16 v15, p5

    if-nez v24, :cond_12

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    move/from16 v25, v22

    goto :goto_b

    :cond_11
    move/from16 v25, v21

    :goto_b
    or-int v8, v8, v25

    :cond_12
    :goto_c
    const/high16 v25, 0x180000

    and-int v26, v0, v25

    if-nez v26, :cond_14

    and-int/lit8 v26, v4, 0x20

    move-object/from16 v12, p6

    if-nez v26, :cond_13

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13

    const/high16 v27, 0x100000

    goto :goto_d

    :cond_13
    const/high16 v27, 0x80000

    :goto_d
    or-int v8, v8, v27

    goto :goto_e

    :cond_14
    move-object/from16 v12, p6

    :goto_e
    and-int/lit8 v27, v4, 0x40

    const/high16 v28, 0xc00000

    if-eqz v27, :cond_15

    or-int v8, v8, v28

    move/from16 v10, p7

    goto :goto_10

    :cond_15
    and-int v29, v0, v28

    move/from16 v10, p7

    if-nez v29, :cond_17

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v30

    if-eqz v30, :cond_16

    const/high16 v30, 0x800000

    goto :goto_f

    :cond_16
    const/high16 v30, 0x400000

    :goto_f
    or-int v8, v8, v30

    :cond_17
    :goto_10
    and-int/lit16 v13, v4, 0x80

    const/high16 v31, 0x6000000

    if-eqz v13, :cond_18

    or-int v8, v8, v31

    move/from16 v6, p8

    goto :goto_12

    :cond_18
    and-int v31, v0, v31

    move/from16 v6, p8

    if-nez v31, :cond_1a

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v32

    if-eqz v32, :cond_19

    const/high16 v32, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v32, 0x2000000

    :goto_11
    or-int v8, v8, v32

    :cond_1a
    :goto_12
    const/high16 v32, 0x30000000

    and-int v32, v0, v32

    if-nez v32, :cond_1d

    and-int/lit16 v0, v4, 0x100

    if-nez v0, :cond_1b

    move-object/from16 v0, p9

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1c

    const/high16 v32, 0x20000000

    goto :goto_13

    :cond_1b
    move-object/from16 v0, p9

    :cond_1c
    const/high16 v32, 0x10000000

    :goto_13
    or-int v8, v8, v32

    goto :goto_14

    :cond_1d
    move-object/from16 v0, p9

    :goto_14
    and-int/lit8 v32, v3, 0x6

    if-nez v32, :cond_20

    and-int/lit16 v0, v4, 0x200

    if-nez v0, :cond_1e

    move v0, v8

    move-wide/from16 v8, p10

    invoke-interface {v7, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v32

    if-eqz v32, :cond_1f

    const/16 v32, 0x4

    goto :goto_15

    :cond_1e
    move v0, v8

    move-wide/from16 v8, p10

    :cond_1f
    const/16 v32, 0x2

    :goto_15
    or-int v32, v3, v32

    goto :goto_16

    :cond_20
    move v0, v8

    move-wide/from16 v8, p10

    move/from16 v32, v3

    :goto_16
    and-int/lit8 v33, v3, 0x30

    if-nez v33, :cond_22

    move/from16 p18, v0

    and-int/lit16 v0, v4, 0x400

    move-wide/from16 v8, p12

    if-nez v0, :cond_21

    invoke-interface {v7, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v19, 0x20

    goto :goto_17

    :cond_21
    const/16 v19, 0x10

    :goto_17
    or-int v32, v32, v19

    :goto_18
    move/from16 v0, v32

    goto :goto_19

    :cond_22
    move-wide/from16 v8, p12

    move/from16 p18, v0

    goto :goto_18

    :goto_19
    and-int/lit16 v6, v4, 0x800

    if-eqz v6, :cond_23

    or-int/lit16 v0, v0, 0x180

    goto :goto_1b

    :cond_23
    move/from16 v19, v0

    and-int/lit16 v0, v3, 0x180

    if-nez v0, :cond_25

    move/from16 v0, p14

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v32

    if-eqz v32, :cond_24

    const/16 v16, 0x100

    goto :goto_1a

    :cond_24
    const/16 v16, 0x80

    :goto_1a
    or-int v16, v19, v16

    move/from16 v0, v16

    goto :goto_1b

    :cond_25
    move/from16 v0, p14

    move/from16 v0, v19

    :goto_1b
    move/from16 v16, v6

    and-int/lit16 v6, v4, 0x1000

    if-eqz v6, :cond_26

    or-int/lit16 v0, v0, 0xc00

    move/from16 v17, v0

    move-object/from16 v0, p15

    goto :goto_1d

    :cond_26
    move/from16 v19, v0

    and-int/lit16 v0, v3, 0xc00

    if-nez v0, :cond_28

    move-object/from16 v0, p15

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_27

    goto :goto_1c

    :cond_27
    move/from16 v17, v18

    :goto_1c
    or-int v17, v19, v17

    goto :goto_1d

    :cond_28
    move-object/from16 v0, p15

    move/from16 v17, v19

    :goto_1d
    and-int/lit16 v0, v3, 0x6000

    if-nez v0, :cond_2b

    and-int/lit16 v0, v4, 0x2000

    if-nez v0, :cond_29

    move-object/from16 v0, p16

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2a

    const/16 v20, 0x4000

    goto :goto_1e

    :cond_29
    move-object/from16 v0, p16

    :cond_2a
    :goto_1e
    or-int v17, v17, v20

    goto :goto_1f

    :cond_2b
    move-object/from16 v0, p16

    :goto_1f
    and-int/lit16 v0, v4, 0x4000

    if-eqz v0, :cond_2d

    or-int v17, v17, v23

    :cond_2c
    move-object/from16 v0, p17

    goto :goto_20

    :cond_2d
    and-int v0, v3, v23

    if-nez v0, :cond_2c

    move-object/from16 v0, p17

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2e

    move/from16 v21, v22

    :cond_2e
    or-int v17, v17, v21

    :goto_20
    const v18, 0x12492493

    and-int v0, p18, v18

    const v3, 0x12492492

    move/from16 v18, v6

    if-ne v0, v3, :cond_30

    const v0, 0x12493

    and-int v0, v17, v0

    const v3, 0x12492

    if-eq v0, v3, :cond_2f

    goto :goto_21

    :cond_2f
    const/4 v0, 0x0

    goto :goto_22

    :cond_30
    :goto_21
    const/4 v0, 0x1

    :goto_22
    and-int/lit8 v3, p18, 0x1

    invoke-interface {v7, v0, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, p19, 0x1

    const v20, -0x70000001

    const v21, -0x380001

    const v22, -0xe001

    const/4 v3, 0x6

    const/4 v6, 0x0

    if-eqz v0, :cond_37

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_24

    :cond_31
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_32

    and-int v0, p18, v21

    goto :goto_23

    :cond_32
    move/from16 v0, p18

    :goto_23
    and-int/lit16 v13, v4, 0x100

    if-eqz v13, :cond_33

    and-int v0, v0, v20

    :cond_33
    and-int/lit16 v13, v4, 0x200

    if-eqz v13, :cond_34

    and-int/lit8 v17, v17, -0xf

    :cond_34
    and-int/lit16 v13, v4, 0x400

    if-eqz v13, :cond_35

    and-int/lit8 v17, v17, -0x71

    :cond_35
    and-int/lit16 v13, v4, 0x2000

    if-eqz v13, :cond_36

    and-int v17, v17, v22

    :cond_36
    move-object v4, v15

    move v15, v0

    move-object v0, v4

    move/from16 v13, p8

    move/from16 v6, p14

    move-object/from16 v16, p15

    move-object/from16 v14, p16

    move/from16 v18, v3

    move-wide/from16 v20, v8

    move v3, v10

    move/from16 v4, v17

    move-object/from16 v8, p9

    move-wide/from16 v9, p10

    goto/16 :goto_2c

    :cond_37
    :goto_24
    if-eqz v14, :cond_38

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v15, v0

    :cond_38
    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_39

    const/4 v0, 0x3

    const/4 v12, 0x0

    invoke-static {v12, v6, v7, v12, v0}, Landroidx/compose/material3/ModalBottomSheetKt;->rememberModalBottomSheetState(ZLnl3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object v0

    and-int v12, p18, v21

    move/from16 v45, v12

    move-object v12, v0

    move/from16 v0, v45

    goto :goto_25

    :cond_39
    move/from16 v0, p18

    :goto_25
    if-eqz v27, :cond_3a

    sget-object v10, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v10}, Landroidx/compose/material3/BottomSheetDefaults;->getSheetMaxWidth-D9Ej5fM()F

    move-result v10

    :cond_3a
    if-eqz v13, :cond_3b

    const/4 v13, 0x1

    goto :goto_26

    :cond_3b
    move/from16 v13, p8

    :goto_26
    and-int/lit16 v14, v4, 0x100

    if-eqz v14, :cond_3c

    sget-object v14, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v14, v7, v3}, Landroidx/compose/material3/BottomSheetDefaults;->getExpandedShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v14

    and-int v0, v0, v20

    goto :goto_27

    :cond_3c
    move-object/from16 v14, p9

    :goto_27
    and-int/lit16 v6, v4, 0x200

    if-eqz v6, :cond_3d

    sget-object v6, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v6, v7, v3}, Landroidx/compose/material3/BottomSheetDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v20

    and-int/lit8 v17, v17, -0xf

    move-wide/from16 v8, v20

    goto :goto_28

    :cond_3d
    move-wide/from16 v8, p10

    :goto_28
    and-int/lit16 v6, v4, 0x400

    if-eqz v6, :cond_3e

    and-int/lit8 v6, v17, 0xe

    invoke-static {v8, v9, v7, v6}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v20

    and-int/lit8 v6, v17, -0x71

    move/from16 v17, v6

    goto :goto_29

    :cond_3e
    move-wide/from16 v20, p12

    :goto_29
    if-eqz v16, :cond_3f

    sget-object v6, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v6}, Landroidx/compose/material3/BottomSheetDefaults;->getElevation-D9Ej5fM()F

    move-result v6

    goto :goto_2a

    :cond_3f
    move/from16 v6, p14

    :goto_2a
    if-eqz v18, :cond_40

    sget-object v16, Landroidx/compose/material3/ComposableSingletons$ModalBottomSheetKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ModalBottomSheetKt;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/material3/ComposableSingletons$ModalBottomSheetKt;->getLambda$1716959002$material3()Lbm3;

    move-result-object v16

    goto :goto_2b

    :cond_40
    move-object/from16 v16, p15

    :goto_2b
    move/from16 v18, v3

    and-int/lit16 v3, v4, 0x2000

    if-eqz v3, :cond_41

    sget-object v3, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheetContent$1;->INSTANCE:Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheetContent$1;

    and-int v17, v17, v22

    move-object v4, v15

    move v15, v0

    move-object v0, v4

    move-object v4, v14

    move-object v14, v3

    move v3, v10

    move-wide v9, v8

    move-object v8, v4

    move/from16 v4, v17

    goto :goto_2c

    :cond_41
    move-object v3, v15

    move v15, v0

    move-object v0, v3

    move v3, v10

    move/from16 v4, v17

    move-wide v9, v8

    move-object v8, v14

    move-object/from16 v14, p16

    :goto_2c
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v17

    move/from16 p14, v6

    if-eqz v17, :cond_42

    const-string v6, "androidx.compose.material3.ModalBottomSheetContent (ModalBottomSheet.kt:272)"

    move-object/from16 p15, v8

    const v8, -0x23aaf70

    invoke-static {v8, v15, v4, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_2d

    :cond_42
    move-object/from16 p15, v8

    :goto_2d
    sget-object v6, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    sget v6, Landroidx/compose/material3/R$string;->m3c_bottom_sheet_pane_title:I

    invoke-static {v6}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v6

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/Alignment$Companion;->getTopCenter()Landroidx/compose/ui/Alignment;

    move-result-object v8

    invoke-interface {v1, v0, v8}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    move-object/from16 v22, v0

    const/4 v0, 0x0

    move/from16 v17, v4

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {v8, v0, v3, v4, v1}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v8, v0, v4, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/high16 v1, 0x380000

    if-eqz v13, :cond_48

    const v4, -0x5e4bf1b7

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    and-int v8, v15, v1

    xor-int v8, v8, v25

    move/from16 p5, v1

    const/high16 v1, 0x100000

    if-le v8, v1, :cond_43

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_44

    :cond_43
    and-int v8, v15, v25

    if-ne v8, v1, :cond_45

    :cond_44
    const/4 v1, 0x1

    goto :goto_2e

    :cond_45
    const/4 v1, 0x0

    :goto_2e
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_46

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v8, v1, :cond_47

    :cond_46
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    invoke-static {v12, v1, v5}, Landroidx/compose/material3/SheetDefaultsKt;->ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(Landroidx/compose/material3/SheetState;Landroidx/compose/foundation/gestures/Orientation;Lnl3;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v8

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_47
    check-cast v8, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move/from16 v24, v3

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {v4, v8, v3, v1, v3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_2f

    :cond_48
    move/from16 p5, v1

    move/from16 v24, v3

    const v1, -0x5e4bb908

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :goto_2f
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v12}, Landroidx/compose/material3/SheetState;->getAnchoredDraggableState$material3()Landroidx/compose/material3/internal/AnchoredDraggableState;

    move-result-object v1

    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    and-int v4, v15, p5

    xor-int v4, v4, v25

    const/high16 v8, 0x100000

    if-le v4, v8, :cond_49

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_4a

    :cond_49
    move-wide/from16 v42, v9

    goto :goto_30

    :cond_4a
    move-wide/from16 v42, v9

    goto :goto_31

    :goto_30
    and-int v9, v15, v25

    if-ne v9, v8, :cond_4b

    :goto_31
    const/4 v8, 0x1

    goto :goto_32

    :cond_4b
    const/4 v8, 0x0

    :goto_32
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_4c

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v9, v8, :cond_4d

    :cond_4c
    new-instance v9, Lub5;

    invoke-direct {v9, v12}, Lub5;-><init>(Landroidx/compose/material3/SheetState;)V

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4d
    check-cast v9, Lbm3;

    invoke-static {v0, v1, v3, v9}, Landroidx/compose/material3/internal/AnchoredDraggableKt;->draggableAnchors(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;Lbm3;)Landroidx/compose/ui/Modifier;

    move-result-object v31

    invoke-virtual {v12}, Landroidx/compose/material3/SheetState;->getAnchoredDraggableState$material3()Landroidx/compose/material3/internal/AnchoredDraggableState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getDraggableState$material3()Landroidx/compose/foundation/gestures/DraggableState;

    move-result-object v32

    if-eqz v13, :cond_4e

    invoke-virtual {v12}, Landroidx/compose/material3/SheetState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4e

    const/16 v34, 0x1

    goto :goto_33

    :cond_4e
    const/16 v34, 0x0

    :goto_33
    invoke-virtual {v12}, Landroidx/compose/material3/SheetState;->getAnchoredDraggableState$material3()Landroidx/compose/material3/internal/AnchoredDraggableState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->isAnimationRunning()Z

    move-result v36

    const v0, 0xe000

    and-int v1, v15, v0

    const/16 v8, 0x4000

    if-ne v1, v8, :cond_4f

    const/4 v1, 0x1

    goto :goto_34

    :cond_4f
    const/4 v1, 0x0

    :goto_34
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_50

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v8, v1, :cond_51

    :cond_50
    new-instance v8, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheetContent$4$1;

    const/4 v1, 0x0

    invoke-direct {v8, v5, v1}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheetContent$4$1;-><init>(Lnl3;Le02;)V

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_51
    move-object/from16 v38, v8

    check-cast v38, Ldm3;

    const/16 v40, 0xa8

    const/16 v41, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    move-object/from16 v33, v3

    invoke-static/range {v31 .. v41}, Landroidx/compose/foundation/gestures/DraggableKt;->draggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLdm3;Ldm3;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v3, :cond_53

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v8, v3, :cond_52

    goto :goto_35

    :cond_52
    const/4 v3, 0x0

    goto :goto_36

    :cond_53
    :goto_35
    new-instance v8, Lvb5;

    const/4 v3, 0x0

    invoke-direct {v8, v6, v3}, Lvb5;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_36
    check-cast v8, Lnl3;

    const/4 v6, 0x0

    const/4 v9, 0x1

    invoke-static {v1, v3, v8, v9, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLnl3;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v12}, Landroidx/compose/material3/SheetState;->getOffset$material3()F

    move-result v6

    float-to-int v6, v6

    if-gez v6, :cond_54

    move v6, v3

    :cond_54
    const/16 v8, 0xd

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v19, 0x0

    const/16 v26, 0x0

    move/from16 p6, v6

    move/from16 p9, v8

    move-object/from16 p10, v9

    move/from16 p5, v10

    move/from16 p7, v19

    move/from16 p8, v26

    invoke-static/range {p5 .. p10}, Landroidx/compose/foundation/layout/WindowInsetsKt;->WindowInsets$default(IIIIILjava/lang/Object;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v6

    invoke-static {v1, v6}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->consumeWindowInsets(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/high16 v8, 0x100000

    if-le v4, v8, :cond_55

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    :cond_55
    and-int v4, v15, v25

    if-ne v4, v8, :cond_57

    :cond_56
    const/4 v4, 0x1

    goto :goto_37

    :cond_57
    move v4, v3

    :goto_37
    and-int/lit8 v6, v15, 0x70

    const/16 v8, 0x20

    if-eq v6, v8, :cond_59

    and-int/lit8 v6, v15, 0x40

    if-eqz v6, :cond_58

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    goto :goto_38

    :cond_58
    move v6, v3

    goto :goto_39

    :cond_59
    :goto_38
    const/4 v6, 0x1

    :goto_39
    or-int v3, v4, v6

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_5b

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_5a

    goto :goto_3a

    :cond_5a
    const/4 v9, 0x1

    goto :goto_3b

    :cond_5b
    :goto_3a
    new-instance v4, Lam4;

    const/4 v9, 0x1

    invoke-direct {v4, v9, v12, v2}, Lam4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_3b
    check-cast v4, Lnl3;

    invoke-static {v1, v4}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v12}, Landroidx/compose/material3/BottomSheetScaffoldKt;->verticalScaleUp(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v3, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheetContent$7;

    move-object/from16 p11, p3

    move-object/from16 p10, p17

    move-object/from16 p7, v2

    move-object/from16 p5, v3

    move-object/from16 p12, v11

    move-object/from16 p8, v12

    move/from16 p13, v13

    move-object/from16 p6, v14

    move-object/from16 p9, v16

    invoke-direct/range {p5 .. p13}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheetContent$7;-><init>(Lbm3;Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/SheetState;Lbm3;Ldm3;Lll3;Ly22;Z)V

    move-object/from16 v8, p5

    move-object/from16 v6, p6

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move/from16 v2, p13

    const/16 v10, 0x36

    const v11, 0x2b6fbd6b

    invoke-static {v11, v9, v8, v7, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v16

    shr-int/lit8 v8, v15, 0x18

    and-int/lit8 v8, v8, 0x70

    or-int v8, v8, v28

    shl-int/lit8 v9, v17, 0x6

    and-int/lit16 v10, v9, 0x380

    or-int/2addr v8, v10

    and-int/lit16 v10, v9, 0x1c00

    or-int/2addr v8, v10

    and-int/2addr v0, v9

    or-int v18, v8, v0

    const/16 v19, 0x60

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v13, p14

    move-object/from16 v8, p15

    move-object/from16 v17, v7

    move-wide/from16 v11, v20

    move-wide/from16 v9, v42

    move-object v7, v1

    invoke-static/range {v7 .. v19}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lbm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5c
    move v9, v2

    move-object v7, v3

    move-object/from16 v16, v4

    move-object v10, v8

    move v15, v13

    move-object/from16 v0, v17

    move/from16 v8, v24

    move-object/from16 v17, v6

    move-wide v13, v11

    move-object/from16 v6, v22

    move-wide/from16 v11, v42

    goto :goto_3c

    :cond_5d
    move-object/from16 v17, v7

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v9, p8

    move-wide/from16 v13, p12

    move-object/from16 v16, p15

    move v8, v10

    move-object v7, v12

    move-object v6, v15

    move-object/from16 v0, v17

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    move/from16 v15, p14

    move-object/from16 v17, p16

    :goto_3c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_5e

    move-object v1, v0

    new-instance v0, Lwb5;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v18, p17

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move-object/from16 v44, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v21}, Lwb5;-><init>(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/animation/core/Animatable;Ly22;Lll3;Lnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFLbm3;Lbm3;Ldm3;III)V

    move-object/from16 v1, v44

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_5e
    return-void
.end method

.method private static final ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(Landroidx/compose/material3/SheetState;Landroidx/compose/ui/unit/IntSize;Landroidx/compose/ui/unit/Constraints;)Lb36;
    .locals 2

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p2

    int-to-float p2, p2

    new-instance v0, Lxb5;

    invoke-direct {v0, p2, p1, p0}, Lxb5;-><init>(FLandroidx/compose/ui/unit/IntSize;Landroidx/compose/material3/SheetState;)V

    invoke-static {v0}, Landroidx/compose/material3/internal/AnchoredDraggableKt;->DraggableAnchors(Lnl3;)Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/material3/SheetState;->getAnchoredDraggableState$material3()Landroidx/compose/material3/internal/AnchoredDraggableState;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getTargetValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/SheetValue;

    sget-object p2, Landroidx/compose/material3/ModalBottomSheetKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p2, p0

    const/4 p2, 0x1

    if-eq p0, p2, :cond_5

    const/4 p2, 0x2

    if-eq p0, p2, :cond_2

    const/4 p2, 0x3

    if-ne p0, p2, :cond_1

    sget-object p0, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    invoke-interface {p1, p0}, Landroidx/compose/material3/internal/DraggableAnchors;->hasAnchorFor(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    goto :goto_0

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    sget-object p0, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    invoke-interface {p1, p0}, Landroidx/compose/material3/internal/DraggableAnchors;->hasAnchorFor(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    invoke-interface {p1, p0}, Landroidx/compose/material3/internal/DraggableAnchors;->hasAnchorFor(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    goto :goto_0

    :cond_5
    sget-object p0, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    :goto_0
    new-instance p2, Lb36;

    invoke-direct {p2, p1, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method private static final ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17$lambda$16(FLandroidx/compose/ui/unit/IntSize;Landroidx/compose/material3/SheetState;Landroidx/compose/material3/internal/DraggableAnchorsConfig;)Lj59;
    .locals 5

    sget-object v0, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    invoke-virtual {p3, v0, p0}, Landroidx/compose/material3/internal/DraggableAnchorsConfig;->at(Ljava/lang/Object;F)V

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v4, p0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroidx/compose/material3/SheetState;->getSkipPartiallyExpanded$material3()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    div-float v0, p0, v1

    invoke-virtual {p3, p2, v0}, Landroidx/compose/material3/internal/DraggableAnchorsConfig;->at(Ljava/lang/Object;F)V

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    and-long/2addr v0, v2

    long-to-int p2, v0

    if-eqz p2, :cond_1

    sget-object p2, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    and-long/2addr v0, v2

    long-to-int p1, v0

    int-to-float p1, p1

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-virtual {p3, p2, p0}, Landroidx/compose/material3/internal/DraggableAnchorsConfig;->at(Ljava/lang/Object;F)V

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalBottomSheetContent_7___e2Q$lambda$21$lambda$20(Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 0

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setPaneTitle(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setTraversalIndex(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;F)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalBottomSheetContent_7___e2Q$lambda$23$lambda$22(Landroidx/compose/material3/SheetState;Landroidx/compose/animation/core/Animatable;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/material3/SheetState;->getAnchoredDraggableState$material3()Landroidx/compose/material3/internal/AnchoredDraggableState;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getOffset()F

    move-result p0

    invoke-interface {p2}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->getSize-NH-jbRc()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p2, p1}, Landroidx/compose/material3/ModalBottomSheetKt;->calculatePredictiveBackScaleX(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)F

    move-result v1

    invoke-interface {p2, v1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setScaleX(F)V

    invoke-static {p2, p1}, Landroidx/compose/material3/ModalBottomSheetKt;->calculatePredictiveBackScaleY(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)F

    move-result p1

    invoke-interface {p2, p1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setScaleY(F)V

    add-float/2addr p0, v0

    div-float/2addr p0, v0

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/TransformOriginKt;->TransformOrigin(FF)J

    move-result-wide p0

    invoke-interface {p2, p0, p1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    :cond_1
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalBottomSheetContent_7___e2Q$lambda$24(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/animation/core/Animatable;Ly22;Lll3;Lnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFLbm3;Lbm3;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
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

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v22, p20

    move-object/from16 v19, p21

    invoke-static/range {v1 .. v22}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheetContent-7---e2Q(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/animation/core/Animatable;Ly22;Lll3;Lnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFLbm3;Lbm3;Ldm3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(Landroidx/compose/material3/SheetState;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;)Lj59;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SheetState;->setShowMotionSpec$material3(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    invoke-virtual {p0, p2}, Landroidx/compose/material3/SheetState;->setHideMotionSpec$material3(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    invoke-virtual {p0, p3}, Landroidx/compose/material3/SheetState;->setAnchoredDraggableMotionSpec$material3(Landroidx/compose/animation/core/AnimationSpec;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(Landroidx/compose/material3/SheetState;Ly22;Landroidx/compose/animation/core/Animatable;Lll3;)Lj59;
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/material3/SheetState;->getCurrentValue()Landroidx/compose/material3/SheetValue;

    move-result-object v0

    sget-object v1, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/material3/SheetState;->getHasPartiallyExpandedState()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p3, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$3$1$1;

    invoke-direct {p3, p2, v3}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$3$1$1;-><init>(Landroidx/compose/animation/core/Animatable;Le02;)V

    invoke-static {p1, v3, v3, p3, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    new-instance p2, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$3$1$2;

    invoke-direct {p2, p0, v3}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$3$1$2;-><init>(Landroidx/compose/material3/SheetState;Le02;)V

    invoke-static {p1, v3, v3, p2, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    goto :goto_0

    :cond_0
    new-instance p2, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$3$1$3;

    invoke-direct {p2, p0, v3}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$3$1$3;-><init>(Landroidx/compose/material3/SheetState;Le02;)V

    invoke-static {p1, v3, v3, p2, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    new-instance p1, Lry2;

    const/4 p2, 0x1

    invoke-direct {p1, p3, p2}, Lry2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lsb4;->g(Lnl3;)Lhp2;

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalBottomSheet_YbuCTN8$lambda$11$lambda$10$lambda$9(Lll3;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalBottomSheet_YbuCTN8$lambda$13(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Lbm3;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 22

    or-int/lit8 v0, p17, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v19

    invoke-static/range {p18 .. p18}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-wide/from16 v12, p11

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v21, p19

    move-object/from16 v18, p20

    invoke-static/range {v1 .. v21}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheet-YbuCTN8(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Lbm3;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(Landroidx/compose/material3/SheetState;Ly22;Lll3;)Lj59;
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/material3/SheetState;->getAnchoredDraggableState$material3()Landroidx/compose/material3/internal/AnchoredDraggableState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getConfirmValueChange$material3()Lnl3;

    move-result-object v0

    sget-object v1, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    invoke-interface {v0, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$animateToDismiss$1$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$animateToDismiss$1$1$1;-><init>(Landroidx/compose/material3/SheetState;Le02;)V

    const/4 v2, 0x3

    invoke-static {p1, v1, v1, v0, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    new-instance v0, Lat0;

    invoke-direct {v0, p0, p2}, Lat0;-><init>(Landroidx/compose/material3/SheetState;Lll3;)V

    invoke-virtual {p1, v0}, Lsb4;->g(Lnl3;)Lhp2;

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalBottomSheet_YbuCTN8$lambda$4$lambda$3$lambda$2(Landroidx/compose/material3/SheetState;Lll3;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/material3/SheetState;->isVisible()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(Ly22;Landroidx/compose/material3/SheetState;Lll3;F)Lj59;
    .locals 2

    new-instance v0, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$settleToDismiss$1$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, v1}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$settleToDismiss$1$1$1;-><init>(Landroidx/compose/material3/SheetState;FLe02;)V

    const/4 p3, 0x3

    invoke-static {p0, v1, v1, v0, p3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    new-instance p3, Lzh2;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p1, p2}, Lzh2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lsb4;->g(Lnl3;)Lhp2;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalBottomSheet_YbuCTN8$lambda$7$lambda$6$lambda$5(Landroidx/compose/material3/SheetState;Lll3;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/material3/SheetState;->isVisible()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalBottomSheet_dYc4hso$lambda$14(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Lbm3;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
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

    invoke-static/range {v1 .. v20}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheet-dYc4hso(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Lbm3;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final Scrim-KTwxG1Y(JLll3;ZZLandroidx/compose/runtime/Composer;I)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lll3<",
            "Lj59;",
            ">;ZZ",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-wide/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    const v0, -0x17578dd7

    move-object/from16 v7, p5

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    and-int/lit8 v7, v6, 0x6

    if-nez v7, :cond_1

    invoke-interface {v12, v1, v2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v6

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    and-int/lit8 v8, v6, 0x30

    const/16 v9, 0x20

    if-nez v8, :cond_3

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v9

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v7, v8

    :cond_3
    and-int/lit16 v8, v6, 0x180

    if-nez v8, :cond_5

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_3

    :cond_4
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v7, v8

    :cond_5
    and-int/lit16 v8, v6, 0xc00

    if-nez v8, :cond_7

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x800

    goto :goto_4

    :cond_6
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v7, v8

    :cond_7
    and-int/lit16 v8, v7, 0x493

    const/16 v10, 0x492

    const/4 v11, 0x0

    const/4 v13, 0x1

    if-eq v8, v10, :cond_8

    move v8, v13

    goto :goto_5

    :cond_8
    move v8, v11

    :goto_5
    and-int/lit8 v10, v7, 0x1

    invoke-interface {v12, v8, v10}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, -0x1

    const-string v10, "androidx.compose.material3.Scrim (ModalBottomSheet.kt:514)"

    invoke-static {v0, v7, v8, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_9
    const-wide/16 v16, 0x10

    cmp-long v0, v1, v16

    if-eqz v0, :cond_15

    const v0, -0x55bf0636

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-eqz v4, :cond_a

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    :goto_6
    sget-object v10, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    const/4 v14, 0x6

    invoke-static {v10, v12, v14}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v10

    move v14, v13

    const/4 v13, 0x0

    move/from16 v16, v14

    const/16 v14, 0x1c

    move/from16 v17, v9

    const/4 v9, 0x0

    move/from16 v18, v7

    move v7, v8

    move-object v8, v10

    const/4 v10, 0x0

    move/from16 v19, v11

    const/4 v11, 0x0

    move/from16 v0, v17

    move/from16 v15, v19

    invoke-static/range {v7 .. v14}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lnl3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v7

    sget-object v8, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    sget v8, Landroidx/compose/ui/R$string;->close_sheet:I

    invoke-static {v8}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v8

    invoke-static {v8, v12, v15}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_11

    const v9, -0x55ba773b

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    and-int/lit8 v10, v18, 0x70

    if-ne v10, v0, :cond_b

    const/4 v11, 0x1

    goto :goto_7

    :cond_b
    move v11, v15

    :goto_7
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_c

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v13, v11, :cond_d

    :cond_c
    new-instance v13, Landroidx/compose/material3/ModalBottomSheetKt$Scrim$dismissSheet$1$1;

    invoke-direct {v13, v3}, Landroidx/compose/material3/ModalBottomSheetKt$Scrim$dismissSheet$1$1;-><init>(Lll3;)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_d
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v9, v3, v13}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-ne v10, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_8

    :cond_e
    move v0, v15

    :goto_8
    or-int/2addr v0, v13

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v0, :cond_f

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v10, v0, :cond_10

    :cond_f
    new-instance v10, Lzb5;

    invoke-direct {v10, v15, v8, v3}, Lzb5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_10
    check-cast v10, Lnl3;

    const/4 v14, 0x1

    invoke-static {v11, v14, v10}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLnl3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_9

    :cond_11
    const/4 v14, 0x1

    const v0, -0x55b3f66f

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v0, v9

    :goto_9
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10, v14, v8}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-interface {v8, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit8 v8, v18, 0xe

    const/4 v9, 0x4

    if-ne v8, v9, :cond_12

    move v11, v14

    goto :goto_a

    :cond_12
    move v11, v15

    :goto_a
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v8, v11

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_13

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v9, v8, :cond_14

    :cond_13
    new-instance v9, Lac5;

    invoke-direct {v9, v1, v2, v7}, Lac5;-><init>(JLandroidx/compose/runtime/State;)V

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_14
    check-cast v9, Lnl3;

    invoke-static {v0, v9, v12, v15}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lnl3;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_b

    :cond_15
    const v0, -0x55b13247

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_c

    :cond_16
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_17
    :goto_c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_18

    new-instance v0, Lbc5;

    invoke-direct/range {v0 .. v6}, Lbc5;-><init>(JLll3;ZZI)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_18
    return-void
.end method

.method private static final Scrim_KTwxG1Y$lambda$27(Landroidx/compose/runtime/State;)F
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

.method private static final Scrim_KTwxG1Y$lambda$31$lambda$30(Ljava/lang/String;Lll3;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setTraversalIndex(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;F)V

    invoke-static {p2, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    new-instance p0, Le84;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Le84;-><init>(Ljava/lang/Object;I)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p2, v0, p0, p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->onClick$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lll3;ILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Scrim_KTwxG1Y$lambda$31$lambda$30$lambda$29(Lll3;)Z
    .locals 0

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method private static final Scrim_KTwxG1Y$lambda$33$lambda$32(JLandroidx/compose/runtime/State;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 16

    invoke-static/range {p2 .. p2}, Landroidx/compose/material3/ModalBottomSheetKt;->Scrim_KTwxG1Y$lambda$27(Landroidx/compose/runtime/State;)F

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

.method private static final Scrim_KTwxG1Y$lambda$34(JLll3;ZZILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 7

    or-int/lit8 p5, p5, 0x1

    invoke-static {p5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/ModalBottomSheetKt;->Scrim-KTwxG1Y(JLll3;ZZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic a(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/animation/core/Animatable;Ly22;Lll3;Lnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFLbm3;Lbm3;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p22}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheetContent_7___e2Q$lambda$24(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/animation/core/Animatable;Ly22;Lll3;Lnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFLbm3;Lbm3;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$Scrim-KTwxG1Y(JLll3;ZZLandroidx/compose/runtime/Composer;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroidx/compose/material3/ModalBottomSheetKt;->Scrim-KTwxG1Y(JLll3;ZZLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$calculatePredictiveBackScaleX(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)F
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/ModalBottomSheetKt;->calculatePredictiveBackScaleX(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$calculatePredictiveBackScaleY(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)F
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/ModalBottomSheetKt;->calculatePredictiveBackScaleY(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getPredictiveBackChildTransformOrigin$p()J
    .locals 2

    sget-wide v0, Landroidx/compose/material3/ModalBottomSheetKt;->PredictiveBackChildTransformOrigin:J

    return-wide v0
.end method

.method public static synthetic b(Landroidx/compose/material3/SheetState;Ly22;Landroidx/compose/animation/core/Animatable;Lll3;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(Landroidx/compose/material3/SheetState;Ly22;Landroidx/compose/animation/core/Animatable;Lll3;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Lbm3;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p21}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheet_YbuCTN8$lambda$13(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Lbm3;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final calculatePredictiveBackScaleX(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)F
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

    if-nez v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v3, v0, v1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    sget v3, Landroidx/compose/material3/ModalBottomSheetKt;->PredictiveBackMaxScaleXDistance:F

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
    sget v3, Landroidx/compose/material3/ModalBottomSheetKt;->PredictiveBackMaxScaleYDistance:F

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

.method public static synthetic d(Landroidx/compose/material3/SheetState;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(Landroidx/compose/material3/SheetState;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(JLandroidx/compose/runtime/State;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/ModalBottomSheetKt;->Scrim_KTwxG1Y$lambda$33$lambda$32(JLandroidx/compose/runtime/State;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Lbm3;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p20}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheet_dYc4hso$lambda$14(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Lbm3;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroidx/compose/material3/SheetValue;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/ModalBottomSheetKt;->rememberModalBottomSheetState$lambda$26$lambda$25(Landroidx/compose/material3/SheetValue;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Ly22;Landroidx/compose/material3/SheetState;Lll3;F)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(Ly22;Landroidx/compose/material3/SheetState;Lll3;F)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroidx/compose/material3/SheetState;Ly22;Lll3;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(Landroidx/compose/material3/SheetState;Ly22;Lll3;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Landroidx/compose/material3/SheetState;Landroidx/compose/ui/unit/IntSize;Landroidx/compose/ui/unit/Constraints;)Lb36;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(Landroidx/compose/material3/SheetState;Landroidx/compose/ui/unit/IntSize;Landroidx/compose/ui/unit/Constraints;)Lb36;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroidx/compose/material3/SheetState;Lll3;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheet_YbuCTN8$lambda$7$lambda$6$lambda$5(Landroidx/compose/material3/SheetState;Lll3;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheetContent_7___e2Q$lambda$21$lambda$20(Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Ljava/lang/String;Lll3;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ModalBottomSheetKt;->Scrim_KTwxG1Y$lambda$31$lambda$30(Ljava/lang/String;Lll3;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(JLll3;ZZILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p7}, Landroidx/compose/material3/ModalBottomSheetKt;->Scrim_KTwxG1Y$lambda$34(JLll3;ZZILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lll3;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheet_YbuCTN8$lambda$11$lambda$10$lambda$9(Lll3;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(FLandroidx/compose/ui/unit/IntSize;Landroidx/compose/material3/SheetState;Landroidx/compose/material3/internal/DraggableAnchorsConfig;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17$lambda$16(FLandroidx/compose/ui/unit/IntSize;Landroidx/compose/material3/SheetState;Landroidx/compose/material3/internal/DraggableAnchorsConfig;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Landroidx/compose/material3/SheetState;Lll3;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheet_YbuCTN8$lambda$4$lambda$3$lambda$2(Landroidx/compose/material3/SheetState;Lll3;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Landroidx/compose/material3/SheetState;Landroidx/compose/animation/core/Animatable;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheetContent_7___e2Q$lambda$23$lambda$22(Landroidx/compose/material3/SheetState;Landroidx/compose/animation/core/Animatable;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final rememberModalBottomSheetState(ZLnl3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lnl3<",
            "-",
            "Landroidx/compose/material3/SheetValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material3/SheetState;"
        }
    .end annotation

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    move v0, p0

    and-int/lit8 p0, p4, 0x2

    if-eqz p0, :cond_2

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    new-instance p0, Lxy2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lxy2;-><init>(I)V

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    move-object p1, p0

    check-cast p1, Lnl3;

    :cond_2
    move-object v1, p1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, -0x1

    const-string p1, "androidx.compose.material3.rememberModalBottomSheetState (ModalBottomSheet.kt:502)"

    const p4, -0x2e63272e

    invoke-static {p4, p3, p0, p1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    sget-object v2, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    and-int/lit8 p0, p3, 0xe

    or-int/lit16 p0, p0, 0x180

    and-int/lit8 p1, p3, 0x70

    or-int v7, p0, p1

    const/16 v8, 0x38

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/SheetDefaultsKt;->rememberSheetState-AGcomas(ZLnl3;Landroidx/compose/material3/SheetValue;ZFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    return-object p0
.end method

.method private static final rememberModalBottomSheetState$lambda$26$lambda$25(Landroidx/compose/material3/SheetValue;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic s(Lll3;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/ModalBottomSheetKt;->Scrim_KTwxG1Y$lambda$31$lambda$30$lambda$29(Lll3;)Z

    move-result p0

    return p0
.end method
