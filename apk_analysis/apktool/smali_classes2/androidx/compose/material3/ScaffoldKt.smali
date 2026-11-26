.class public final Landroidx/compose/material3/ScaffoldKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FabSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/ScaffoldKt;->FabSpacing:F

    return-void
.end method

.method public static final Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Lbm3;Lbm3;IJJLandroidx/compose/foundation/layout/WindowInsets;Ldm3;Landroidx/compose/runtime/Composer;II)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
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
            ">;IJJ",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/PaddingValues;",
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

    move/from16 v13, p13

    move/from16 v14, p14

    const v0, -0x4835c278

    move-object/from16 v1, p12

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    and-int/lit8 v2, v14, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v3, v13, 0x6

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v13, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v3, p0

    move v4, v13

    :goto_1
    and-int/lit8 v5, v14, 0x2

    if-eqz v5, :cond_4

    or-int/lit8 v4, v4, 0x30

    :cond_3
    move-object/from16 v6, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v6, v13, 0x30

    if-nez v6, :cond_3

    move-object/from16 v6, p1

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x20

    goto :goto_2

    :cond_5
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    :goto_3
    and-int/lit8 v7, v14, 0x4

    if-eqz v7, :cond_7

    or-int/lit16 v4, v4, 0x180

    :cond_6
    move-object/from16 v8, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v13, 0x180

    if-nez v8, :cond_6

    move-object/from16 v8, p2

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x100

    goto :goto_4

    :cond_8
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v4, v9

    :goto_5
    and-int/lit8 v9, v14, 0x8

    if-eqz v9, :cond_a

    or-int/lit16 v4, v4, 0xc00

    :cond_9
    move-object/from16 v10, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v10, v13, 0xc00

    if-nez v10, :cond_9

    move-object/from16 v10, p3

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x800

    goto :goto_6

    :cond_b
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v4, v11

    :goto_7
    and-int/lit8 v11, v14, 0x10

    if-eqz v11, :cond_d

    or-int/lit16 v4, v4, 0x6000

    :cond_c
    move-object/from16 v12, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v12, v13, 0x6000

    if-nez v12, :cond_c

    move-object/from16 v12, p4

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    const/16 v15, 0x4000

    goto :goto_8

    :cond_e
    const/16 v15, 0x2000

    :goto_8
    or-int/2addr v4, v15

    :goto_9
    and-int/lit8 v15, v14, 0x20

    const/high16 v16, 0x30000

    if-eqz v15, :cond_f

    or-int v4, v4, v16

    move/from16 v0, p5

    goto :goto_b

    :cond_f
    and-int v16, v13, v16

    move/from16 v0, p5

    if-nez v16, :cond_11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v17, 0x10000

    :goto_a
    or-int v4, v4, v17

    :cond_11
    :goto_b
    const/high16 v17, 0x180000

    and-int v17, v13, v17

    if-nez v17, :cond_13

    and-int/lit8 v17, v14, 0x40

    move/from16 p12, v2

    move-wide/from16 v2, p6

    if-nez v17, :cond_12

    invoke-interface {v1, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v17, 0x80000

    :goto_c
    or-int v4, v4, v17

    goto :goto_d

    :cond_13
    move/from16 p12, v2

    move-wide/from16 v2, p6

    :goto_d
    const/high16 v17, 0xc00000

    and-int v18, v13, v17

    if-nez v18, :cond_15

    and-int/lit16 v0, v14, 0x80

    move-wide/from16 v2, p8

    if-nez v0, :cond_14

    invoke-interface {v1, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_14

    const/high16 v0, 0x800000

    goto :goto_e

    :cond_14
    const/high16 v0, 0x400000

    :goto_e
    or-int/2addr v4, v0

    goto :goto_f

    :cond_15
    move-wide/from16 v2, p8

    :goto_f
    const/high16 v0, 0x6000000

    and-int v18, v13, v0

    move/from16 v19, v0

    if-nez v18, :cond_18

    and-int/lit16 v0, v14, 0x100

    if-nez v0, :cond_16

    move-object/from16 v0, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    const/high16 v20, 0x4000000

    goto :goto_10

    :cond_16
    move-object/from16 v0, p10

    :cond_17
    const/high16 v20, 0x2000000

    :goto_10
    or-int v4, v4, v20

    goto :goto_11

    :cond_18
    move-object/from16 v0, p10

    :goto_11
    and-int/lit16 v0, v14, 0x200

    const/high16 v20, 0x30000000

    if-eqz v0, :cond_1a

    or-int v4, v4, v20

    :cond_19
    move-object/from16 v0, p11

    goto :goto_13

    :cond_1a
    and-int v0, v13, v20

    if-nez v0, :cond_19

    move-object/from16 v0, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1b

    const/high16 v20, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v20, 0x10000000

    :goto_12
    or-int v4, v4, v20

    :goto_13
    const v20, 0x12492493

    and-int v0, v4, v20

    const v2, 0x12492492

    if-eq v0, v2, :cond_1c

    const/4 v0, 0x1

    goto :goto_14

    :cond_1c
    const/4 v0, 0x0

    :goto_14
    and-int/lit8 v2, v4, 0x1

    invoke-interface {v1, v0, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v13, 0x1

    const v2, -0xe000001

    const v21, -0x1c00001

    const v22, -0x380001

    if-eqz v0, :cond_21

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_15

    :cond_1d
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v14, 0x40

    if-eqz v0, :cond_1e

    and-int v4, v4, v22

    :cond_1e
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_1f

    and-int v4, v4, v21

    :cond_1f
    and-int/lit16 v0, v14, 0x100

    if-eqz v0, :cond_20

    and-int/2addr v4, v2

    :cond_20
    move-object/from16 v0, p0

    move/from16 v9, p5

    move-wide/from16 v2, p6

    move-object v5, v6

    move-object v6, v8

    move-object v7, v10

    move-object v8, v12

    move/from16 v12, v19

    const/4 v11, 0x0

    move-wide/from16 v19, p8

    move-object/from16 v10, p10

    goto/16 :goto_1f

    :cond_21
    :goto_15
    if-eqz p12, :cond_22

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_16

    :cond_22
    move-object/from16 v0, p0

    :goto_16
    if-eqz v5, :cond_23

    sget-object v5, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v5}, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->getLambda$-39202156$material3()Lbm3;

    move-result-object v5

    goto :goto_17

    :cond_23
    move-object v5, v6

    :goto_17
    if-eqz v7, :cond_24

    sget-object v6, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v6}, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->getLambda$1582488484$material3()Lbm3;

    move-result-object v6

    goto :goto_18

    :cond_24
    move-object v6, v8

    :goto_18
    if-eqz v9, :cond_25

    sget-object v7, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v7}, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->getLambda$414328099$material3()Lbm3;

    move-result-object v7

    goto :goto_19

    :cond_25
    move-object v7, v10

    :goto_19
    if-eqz v11, :cond_26

    sget-object v8, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v8}, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->getLambda$-1514016380$material3()Lbm3;

    move-result-object v8

    goto :goto_1a

    :cond_26
    move-object v8, v12

    :goto_1a
    if-eqz v15, :cond_27

    sget-object v9, Landroidx/compose/material3/FabPosition;->Companion:Landroidx/compose/material3/FabPosition$Companion;

    invoke-virtual {v9}, Landroidx/compose/material3/FabPosition$Companion;->getEnd-ERTFSPs()I

    move-result v9

    goto :goto_1b

    :cond_27
    move/from16 v9, p5

    :goto_1b
    and-int/lit8 v10, v14, 0x40

    const/4 v11, 0x6

    if-eqz v10, :cond_28

    sget-object v10, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v10, v1, v11}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/material3/ColorScheme;->getBackground-0d7_KjU()J

    move-result-wide v23

    and-int v4, v4, v22

    move v15, v2

    move-wide/from16 v2, v23

    goto :goto_1c

    :cond_28
    move v15, v2

    move-wide/from16 v2, p6

    :goto_1c
    and-int/lit16 v10, v14, 0x80

    if-eqz v10, :cond_29

    shr-int/lit8 v10, v4, 0x12

    and-int/lit8 v10, v10, 0xe

    invoke-static {v2, v3, v1, v10}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v22

    and-int v4, v4, v21

    goto :goto_1d

    :cond_29
    move-wide/from16 v22, p8

    :goto_1d
    and-int/lit16 v10, v14, 0x100

    if-eqz v10, :cond_2a

    sget-object v10, Landroidx/compose/material3/ScaffoldDefaults;->INSTANCE:Landroidx/compose/material3/ScaffoldDefaults;

    invoke-virtual {v10, v1, v11}, Landroidx/compose/material3/ScaffoldDefaults;->getContentWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v10

    and-int/2addr v4, v15

    :goto_1e
    move/from16 v12, v19

    move-wide/from16 v19, v22

    const/4 v11, 0x0

    goto :goto_1f

    :cond_2a
    move-object/from16 v10, p10

    goto :goto_1e

    :goto_1f
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v15

    if-eqz v15, :cond_2b

    const/4 v15, -0x1

    const-string v11, "androidx.compose.material3.Scaffold (Scaffold.kt:93)"

    move/from16 p1, v12

    const v12, -0x4835c278

    invoke-static {v12, v4, v15, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_20

    :cond_2b
    move/from16 p1, v12

    :goto_20
    const/high16 v11, 0xe000000

    and-int/2addr v11, v4

    xor-int v11, v11, p1

    const/high16 v12, 0x4000000

    if-le v11, v12, :cond_2c

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2d

    :cond_2c
    and-int v15, v4, p1

    if-ne v15, v12, :cond_2e

    :cond_2d
    const/4 v12, 0x1

    goto :goto_21

    :cond_2e
    const/4 v12, 0x0

    :goto_21
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v12, :cond_2f

    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v15, v12, :cond_30

    :cond_2f
    new-instance v15, Landroidx/compose/material3/internal/MutableWindowInsets;

    invoke-direct {v15, v10}, Landroidx/compose/material3/internal/MutableWindowInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;)V

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_30
    check-cast v15, Landroidx/compose/material3/internal/MutableWindowInsets;

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    move-wide/from16 p8, v2

    const/high16 v2, 0x4000000

    if-le v11, v2, :cond_31

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    :cond_31
    and-int v3, v4, p1

    if-ne v3, v2, :cond_33

    :cond_32
    const/4 v3, 0x1

    goto :goto_22

    :cond_33
    const/4 v3, 0x0

    :goto_22
    or-int v2, v12, v3

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_35

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_34

    goto :goto_23

    :cond_34
    const/4 v2, 0x1

    goto :goto_24

    :cond_35
    :goto_23
    new-instance v3, Lbg1;

    const/4 v2, 0x1

    invoke-direct {v3, v2, v15, v10}, Lbg1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_24
    check-cast v3, Lnl3;

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->onConsumedWindowInsetsChanged(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    new-instance v11, Landroidx/compose/material3/ScaffoldKt$Scaffold$2;

    move-object/from16 p3, p11

    move-object/from16 p2, v5

    move-object/from16 p7, v6

    move-object/from16 p4, v7

    move-object/from16 p5, v8

    move/from16 p1, v9

    move-object/from16 p0, v11

    move-object/from16 p6, v15

    invoke-direct/range {p0 .. p7}, Landroidx/compose/material3/ScaffoldKt$Scaffold$2;-><init>(ILbm3;Ldm3;Lbm3;Lbm3;Landroidx/compose/material3/internal/MutableWindowInsets;Lbm3;)V

    const/16 v12, 0x36

    const v15, 0x329906e3

    invoke-static {v15, v2, v11, v1, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v24

    shr-int/lit8 v2, v4, 0xc

    and-int/lit16 v4, v2, 0x380

    or-int v4, v4, v17

    and-int/lit16 v2, v2, 0x1c00

    or-int v26, v4, v2

    const/16 v27, 0x72

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide/from16 v17, p8

    move-object/from16 v25, v1

    move-object v15, v3

    invoke-static/range {v15 .. v27}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lbm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_36
    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move v6, v9

    move-object v11, v10

    move-wide/from16 v7, v17

    move-wide/from16 v9, v19

    goto :goto_25

    :cond_37
    move-object/from16 v25, v1

    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v1, p0

    move-object/from16 v11, p10

    move-object v2, v6

    move-object v3, v8

    move-object v4, v10

    move-object v5, v12

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    :goto_25
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_38

    new-instance v0, Lhd7;

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v14}, Lhd7;-><init>(Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Lbm3;Lbm3;IJJLandroidx/compose/foundation/layout/WindowInsets;Ldm3;II)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_38
    return-void
.end method

.method private static final ScaffoldLayout-FMILGgc(ILbm3;Ldm3;Lbm3;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Lbm3;Landroidx/compose/runtime/Composer;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/PaddingValues;",
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
            "Landroidx/compose/foundation/layout/WindowInsets;",
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

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p8

    const v0, -0x10b4d90d

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    and-int/lit8 v6, v8, 0x6

    move/from16 v15, p0

    if-nez v6, :cond_1

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v8

    goto :goto_1

    :cond_1
    move v6, v8

    :goto_1
    and-int/lit8 v10, v8, 0x30

    const/16 v11, 0x20

    if-nez v10, :cond_3

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v11

    goto :goto_2

    :cond_2
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v6, v10

    :cond_3
    and-int/lit16 v10, v8, 0x180

    if-nez v10, :cond_5

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x100

    goto :goto_3

    :cond_4
    const/16 v10, 0x80

    :goto_3
    or-int/2addr v6, v10

    :cond_5
    and-int/lit16 v10, v8, 0xc00

    if-nez v10, :cond_7

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x800

    goto :goto_4

    :cond_6
    const/16 v10, 0x400

    :goto_4
    or-int/2addr v6, v10

    :cond_7
    and-int/lit16 v10, v8, 0x6000

    if-nez v10, :cond_9

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x4000

    goto :goto_5

    :cond_8
    const/16 v10, 0x2000

    :goto_5
    or-int/2addr v6, v10

    :cond_9
    const/high16 v10, 0x30000

    and-int/2addr v10, v8

    if-nez v10, :cond_b

    move-object/from16 v10, p5

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/high16 v16, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v16, 0x10000

    :goto_6
    or-int v6, v6, v16

    goto :goto_7

    :cond_b
    move-object/from16 v10, p5

    :goto_7
    const/high16 v16, 0x180000

    and-int v16, v8, v16

    if-nez v16, :cond_d

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/high16 v16, 0x100000

    goto :goto_8

    :cond_c
    const/high16 v16, 0x80000

    :goto_8
    or-int v6, v6, v16

    :cond_d
    const v16, 0x92493

    and-int v9, v6, v16

    const v12, 0x92492

    const/4 v13, 0x1

    if-eq v9, v12, :cond_e

    move v9, v13

    goto :goto_9

    :cond_e
    const/4 v9, 0x0

    :goto_9
    and-int/lit8 v12, v6, 0x1

    invoke-interface {v1, v9, v12}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v9

    if-eqz v9, :cond_24

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_f

    const/4 v9, -0x1

    const-string v12, "androidx.compose.material3.ScaffoldLayout (Scaffold.kt:137)"

    invoke-static {v0, v6, v9, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_f
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v0, v12, :cond_10

    new-instance v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;

    invoke-direct {v0}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;-><init>()V

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_10
    check-cast v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;

    and-int/lit8 v12, v6, 0x70

    if-ne v12, v11, :cond_11

    move v11, v13

    goto :goto_a

    :cond_11
    const/4 v11, 0x0

    :goto_a
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_12

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v12, v11, :cond_13

    :cond_12
    new-instance v11, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$topBarContent$1$1;

    invoke-direct {v11, v2}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$topBarContent$1$1;-><init>(Lbm3;)V

    const v12, 0x24128b30

    invoke-static {v12, v13, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v12

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_13
    check-cast v12, Lbm3;

    and-int/lit16 v11, v6, 0x1c00

    const/16 v14, 0x800

    if-ne v11, v14, :cond_14

    move v11, v13

    goto :goto_b

    :cond_14
    const/4 v11, 0x0

    :goto_b
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v11, :cond_15

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v14, v11, :cond_16

    :cond_15
    new-instance v11, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$snackbarContent$1$1;

    invoke-direct {v11, v4}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$snackbarContent$1$1;-><init>(Lbm3;)V

    const v14, 0x18f7e4f7

    invoke-static {v14, v13, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v14

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_16
    check-cast v14, Lbm3;

    const v11, 0xe000

    and-int/2addr v11, v6

    const/16 v13, 0x4000

    if-ne v11, v13, :cond_17

    const/4 v11, 0x1

    goto :goto_c

    :cond_17
    const/4 v11, 0x0

    :goto_c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_18

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v13, v11, :cond_19

    :cond_18
    new-instance v11, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$fabContent$1$1;

    invoke-direct {v11, v5}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$fabContent$1$1;-><init>(Lbm3;)V

    const v13, 0x142ea147

    const/4 v2, 0x1

    invoke-static {v13, v2, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v13

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_19
    check-cast v13, Lbm3;

    and-int/lit16 v2, v6, 0x380

    const/16 v11, 0x100

    if-ne v2, v11, :cond_1a

    const/4 v2, 0x1

    goto :goto_d

    :cond_1a
    const/4 v2, 0x0

    :goto_d
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v2, :cond_1c

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v11, v2, :cond_1b

    goto :goto_e

    :cond_1b
    move-object/from16 v16, v0

    goto :goto_f

    :cond_1c
    :goto_e
    new-instance v2, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$bodyContent$1$1;

    invoke-direct {v2, v3, v0}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$bodyContent$1$1;-><init>(Ldm3;Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;)V

    const v11, -0x69e1890d

    move-object/from16 v16, v0

    const/4 v0, 0x1

    invoke-static {v11, v0, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_f
    check-cast v11, Lbm3;

    const/high16 v0, 0x380000

    and-int/2addr v0, v6

    const/high16 v2, 0x100000

    if-ne v0, v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_10

    :cond_1d
    const/4 v2, 0x0

    :goto_10
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v2, :cond_1f

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v3, 0x1

    goto :goto_12

    :cond_1f
    :goto_11
    new-instance v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$bottomBarContent$1$1;

    invoke-direct {v0, v7}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$bottomBarContent$1$1;-><init>(Lbm3;)V

    const v2, -0x67371298

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_12
    check-cast v0, Lbm3;

    const/high16 v2, 0x70000

    and-int/2addr v2, v6

    const/high16 v3, 0x20000

    if-ne v2, v3, :cond_20

    const/4 v2, 0x1

    goto :goto_13

    :cond_20
    const/4 v2, 0x0

    :goto_13
    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    and-int/lit8 v3, v6, 0xe

    const/4 v6, 0x4

    if-ne v3, v6, :cond_21

    const/4 v3, 0x1

    goto :goto_14

    :cond_21
    const/4 v3, 0x0

    :goto_14
    or-int/2addr v2, v3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_23

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_22

    goto :goto_15

    :cond_22
    const/4 v0, 0x0

    const/4 v2, 0x1

    goto :goto_16

    :cond_23
    :goto_15
    new-instance v10, Lid7;

    move-object v2, v14

    move-object v14, v13

    move-object v13, v2

    move-object/from16 v18, v11

    move-object/from16 v17, v16

    const/4 v2, 0x1

    move-object/from16 v11, p5

    move-object/from16 v16, v0

    const/4 v0, 0x0

    invoke-direct/range {v10 .. v18}, Lid7;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Lbm3;Lbm3;Lbm3;ILbm3;Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;Lbm3;)V

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v3, v10

    :goto_16
    check-cast v3, Lbm3;

    const/4 v6, 0x0

    invoke-static {v6, v3, v1, v0, v2}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->SubcomposeLayout(Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_17

    :cond_24
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_25
    :goto_17
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_26

    new-instance v0, Lu31;

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v8}, Lu31;-><init>(ILbm3;Ldm3;Lbm3;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Lbm3;I)V

    invoke-interface {v9, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_26
    return-void
.end method

.method private static final ScaffoldLayout_FMILGgc$lambda$15$lambda$14(Landroidx/compose/foundation/layout/WindowInsets;Lbm3;Lbm3;Lbm3;ILbm3;Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;Lbm3;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 16

    move-object/from16 v5, p0

    move/from16 v0, p4

    move-object/from16 v6, p8

    invoke-virtual/range {p9 .. p9}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    invoke-virtual/range {p9 .. p9}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v7

    invoke-virtual/range {p9 .. p9}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v8

    const/16 v14, 0xa

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v1

    invoke-interface {v6}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-interface {v5, v6, v3}, Landroidx/compose/foundation/layout/WindowInsets;->getLeft(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v3

    invoke-interface {v6}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v8

    invoke-interface {v5, v6, v8}, Landroidx/compose/foundation/layout/WindowInsets;->getRight(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v8

    invoke-interface {v5, v6}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result v9

    sget-object v10, Landroidx/compose/material3/ScaffoldLayoutContent;->TopBar:Landroidx/compose/material3/ScaffoldLayoutContent;

    move-object/from16 v11, p1

    invoke-interface {v6, v10, v11}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lbm3;)Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v10, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v10

    sget-object v11, Landroidx/compose/material3/ScaffoldLayoutContent;->Snackbar:Landroidx/compose/material3/ScaffoldLayoutContent;

    move-object/from16 v12, p2

    invoke-interface {v6, v11, v12}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lbm3;)Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    neg-int v12, v3

    sub-int/2addr v12, v8

    neg-int v9, v9

    invoke-static {v1, v2, v12, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v13

    invoke-interface {v11, v13, v14}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v11

    sget-object v13, Landroidx/compose/material3/ScaffoldLayoutContent;->Fab:Landroidx/compose/material3/ScaffoldLayoutContent;

    move-object/from16 v14, p3

    invoke-interface {v6, v13, v14}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lbm3;)Ljava/util/List;

    move-result-object v13

    invoke-static {v13}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v1, v2, v12, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v14

    invoke-interface {v13, v14, v15}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v9}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v12

    if-nez v12, :cond_0

    const/4 v3, 0x0

    goto :goto_4

    :cond_0
    invoke-virtual {v9}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v12

    invoke-virtual {v9}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v14

    sget-object v15, Landroidx/compose/material3/FabPosition;->Companion:Landroidx/compose/material3/FabPosition$Companion;

    invoke-virtual {v15}, Landroidx/compose/material3/FabPosition$Companion;->getStart-ERTFSPs()I

    move-result v13

    invoke-static {v0, v13}, Landroidx/compose/material3/FabPosition;->equals-impl0(II)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v13

    sget-object v15, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v13, v15, :cond_1

    sget v8, Landroidx/compose/material3/ScaffoldKt;->FabSpacing:F

    invoke-interface {v6, v8}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v8

    :goto_0
    add-int/2addr v8, v3

    goto :goto_3

    :cond_1
    sget v3, Landroidx/compose/material3/ScaffoldKt;->FabSpacing:F

    invoke-interface {v6, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v3

    :goto_1
    sub-int v3, v4, v3

    sub-int/2addr v3, v12

    sub-int v8, v3, v8

    goto :goto_3

    :cond_2
    invoke-virtual {v15}, Landroidx/compose/material3/FabPosition$Companion;->getEnd-ERTFSPs()I

    move-result v13

    invoke-static {v0, v13}, Landroidx/compose/material3/FabPosition;->equals-impl0(II)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v15}, Landroidx/compose/material3/FabPosition$Companion;->getEndOverlay-ERTFSPs()I

    move-result v13

    invoke-static {v0, v13}, Landroidx/compose/material3/FabPosition;->equals-impl0(II)Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_2

    :cond_3
    sub-int v13, v4, v12

    add-int/2addr v13, v3

    sub-int/2addr v13, v8

    div-int/lit8 v8, v13, 0x2

    goto :goto_3

    :cond_4
    :goto_2
    invoke-interface {v6}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v13

    sget-object v15, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v13, v15, :cond_5

    sget v3, Landroidx/compose/material3/ScaffoldKt;->FabSpacing:F

    invoke-interface {v6, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v3

    goto :goto_1

    :cond_5
    sget v8, Landroidx/compose/material3/ScaffoldKt;->FabSpacing:F

    invoke-interface {v6, v8}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v8

    goto :goto_0

    :goto_3
    new-instance v3, Landroidx/compose/material3/FabPlacement;

    invoke-direct {v3, v8, v12, v14}, Landroidx/compose/material3/FabPlacement;-><init>(III)V

    :goto_4
    sget-object v8, Landroidx/compose/material3/ScaffoldLayoutContent;->BottomBar:Landroidx/compose/material3/ScaffoldLayoutContent;

    move-object/from16 v12, p5

    invoke-interface {v6, v8, v12}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lbm3;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v8, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v12

    const/4 v13, 0x0

    if-nez v12, :cond_6

    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v12

    if-nez v12, :cond_6

    const/4 v12, 0x1

    goto :goto_5

    :cond_6
    move v12, v13

    :goto_5
    if-eqz v3, :cond_9

    if-nez v12, :cond_8

    sget-object v14, Landroidx/compose/material3/FabPosition;->Companion:Landroidx/compose/material3/FabPosition$Companion;

    invoke-virtual {v14}, Landroidx/compose/material3/FabPosition$Companion;->getEndOverlay-ERTFSPs()I

    move-result v14

    invoke-static {v0, v14}, Landroidx/compose/material3/FabPosition;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    invoke-virtual {v3}, Landroidx/compose/material3/FabPlacement;->getHeight()I

    move-result v14

    add-int/2addr v14, v0

    sget v0, Landroidx/compose/material3/ScaffoldKt;->FabSpacing:F

    invoke-interface {v6, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    :goto_6
    add-int/2addr v0, v14

    goto :goto_8

    :cond_8
    :goto_7
    invoke-virtual {v3}, Landroidx/compose/material3/FabPlacement;->getHeight()I

    move-result v0

    sget v14, Landroidx/compose/material3/ScaffoldKt;->FabSpacing:F

    invoke-interface {v6, v14}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v14

    add-int/2addr v14, v0

    invoke-interface {v5, v6}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result v0

    goto :goto_6

    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v11}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v14

    if-eqz v14, :cond_d

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_b

    :cond_a
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    if-nez v12, :cond_b

    goto :goto_a

    :cond_b
    const/4 v13, 0x0

    :goto_a
    if-eqz v13, :cond_c

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_b

    :cond_c
    invoke-interface {v5, v6}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result v13

    :goto_b
    add-int/2addr v13, v14

    :cond_d
    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/WindowInsetsKt;->asPaddingValues(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/Density;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v14

    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v15

    if-nez v15, :cond_e

    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v15

    if-nez v15, :cond_e

    invoke-interface {v14}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v15

    goto :goto_c

    :cond_e
    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v15

    invoke-interface {v6, v15}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v15

    :goto_c
    if-eqz v12, :cond_f

    invoke-interface {v14}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v12

    :goto_d
    move-object/from16 p1, v0

    goto :goto_e

    :cond_f
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v12

    invoke-interface {v6, v12}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v12

    goto :goto_d

    :goto_e
    invoke-interface {v6}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    invoke-static {v14, v0}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    move-object/from16 p2, v3

    invoke-interface {v6}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-static {v14, v3}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v3

    invoke-static {v0, v15, v3, v12}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    move-object/from16 v3, p6

    invoke-virtual {v3, v0}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;->setPaddingHolder(Landroidx/compose/foundation/layout/PaddingValues;)V

    sget-object v0, Landroidx/compose/material3/ScaffoldLayoutContent;->MainContent:Landroidx/compose/material3/ScaffoldLayoutContent;

    move-object/from16 v3, p7

    invoke-interface {v6, v0, v3}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lbm3;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    new-instance v0, Ljd7;

    move-object/from16 v12, p1

    move-object v2, v10

    move-object v3, v11

    move-object/from16 v10, p2

    move-object v11, v9

    move-object v9, v8

    move v8, v13

    invoke-direct/range {v0 .. v12}, Ljd7;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/layout/SubcomposeMeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/FabPlacement;Landroidx/compose/ui/layout/Placeable;Ljava/lang/Integer;)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 p0, p8

    move-object/from16 p4, v0

    move/from16 p5, v1

    move-object/from16 p6, v2

    move-object/from16 p3, v3

    move/from16 p1, v4

    move/from16 p2, v7

    invoke-static/range {p0 .. p6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method private static final ScaffoldLayout_FMILGgc$lambda$15$lambda$14$lambda$13(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/layout/SubcomposeMeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/FabPlacement;Landroidx/compose/ui/layout/Placeable;Ljava/lang/Integer;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 16

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v2, p12

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p1

    move-object/from16 v9, p12

    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    sub-int v2, p3, v2

    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroidx/compose/foundation/layout/WindowInsets;->getLeft(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroidx/compose/foundation/layout/WindowInsets;->getRight(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v0

    sub-int/2addr v3, v0

    div-int/lit8 v11, v3, 0x2

    sub-int v12, p6, p7

    move-object/from16 v10, p2

    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    invoke-virtual/range {p8 .. p8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int v12, p6, v0

    const/4 v11, 0x0

    move-object/from16 v10, p8

    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    if-eqz p9, :cond_0

    invoke-virtual/range {p9 .. p9}, Landroidx/compose/material3/FabPlacement;->getLeft()I

    move-result v0

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, p6, v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p1, p10

    move-object/from16 p0, p12

    move/from16 p2, v0

    move/from16 p3, v1

    move/from16 p5, v2

    move-object/from16 p6, v3

    move/from16 p4, v4

    invoke-static/range {p0 .. p6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_0
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final ScaffoldLayout_FMILGgc$lambda$16(ILbm3;Ldm3;Lbm3;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 10

    or-int/lit8 v0, p7, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/ScaffoldKt;->ScaffoldLayout-FMILGgc(ILbm3;Ldm3;Lbm3;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Lbm3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Scaffold_TvnljyQ$lambda$2$lambda$1(Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Lj59;
    .locals 0

    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/WindowInsetsKt;->exclude(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/MutableWindowInsets;->setInsets(Landroidx/compose/foundation/layout/WindowInsets;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Scaffold_TvnljyQ$lambda$3(Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Lbm3;Lbm3;IJJLandroidx/compose/foundation/layout/WindowInsets;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 16

    or-int/lit8 v0, p12, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v15, p13

    move-object/from16 v13, p14

    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Lbm3;Lbm3;IJJLandroidx/compose/foundation/layout/WindowInsets;Ldm3;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method public static synthetic a(ILbm3;Ldm3;Lbm3;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p9}, Landroidx/compose/material3/ScaffoldKt;->ScaffoldLayout_FMILGgc$lambda$16(ILbm3;Ldm3;Lbm3;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ScaffoldLayout-FMILGgc(ILbm3;Ldm3;Lbm3;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Lbm3;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    invoke-static/range {p0 .. p8}, Landroidx/compose/material3/ScaffoldKt;->ScaffoldLayout-FMILGgc(ILbm3;Ldm3;Lbm3;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Lbm3;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static synthetic b(Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ScaffoldKt;->Scaffold_TvnljyQ$lambda$2$lambda$1(Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Lbm3;Lbm3;IJJLandroidx/compose/foundation/layout/WindowInsets;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p15}, Landroidx/compose/material3/ScaffoldKt;->Scaffold_TvnljyQ$lambda$3(Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Lbm3;Lbm3;IJJLandroidx/compose/foundation/layout/WindowInsets;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/layout/SubcomposeMeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/FabPlacement;Landroidx/compose/ui/layout/Placeable;Ljava/lang/Integer;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static/range {p0 .. p12}, Landroidx/compose/material3/ScaffoldKt;->ScaffoldLayout_FMILGgc$lambda$15$lambda$14$lambda$13(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/layout/SubcomposeMeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/FabPlacement;Landroidx/compose/ui/layout/Placeable;Ljava/lang/Integer;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/compose/foundation/layout/WindowInsets;Lbm3;Lbm3;Lbm3;ILbm3;Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;Lbm3;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    invoke-static/range {p0 .. p9}, Landroidx/compose/material3/ScaffoldKt;->ScaffoldLayout_FMILGgc$lambda$15$lambda$14(Landroidx/compose/foundation/layout/WindowInsets;Lbm3;Lbm3;Lbm3;ILbm3;Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;Lbm3;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
