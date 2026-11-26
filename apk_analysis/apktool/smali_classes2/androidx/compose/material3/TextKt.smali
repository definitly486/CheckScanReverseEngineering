.class public final Landroidx/compose/material3/TextKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LocalTextStyle:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/ui/text/TextStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    new-instance v1, Lpl5;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lpl5;-><init>(I)V

    invoke-static {v0, v1}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lll3;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method private static final LocalTextStyle$lambda$19()Landroidx/compose/ui/text/TextStyle;
    .locals 1

    invoke-static {}, Landroidx/compose/material3/tokens/TypographyTokensKt;->getDefaultTextStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    return-object v0
.end method

.method public static final ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/TextStyle;",
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

    const v0, 0xe9e0ce

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    and-int/lit8 v1, p3, 0x6

    if-nez v1, :cond_1

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p3

    goto :goto_1

    :cond_1
    move v1, p3

    :goto_1
    and-int/lit8 v2, p3, 0x30

    if-nez v2, :cond_3

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit8 v2, v1, 0x13

    const/16 v3, 0x12

    if-eq v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    and-int/lit8 v3, v1, 0x1

    invoke-interface {p2, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.ProvideTextStyle (Text.kt:459)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_5
    sget-object v0, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v2, p0}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    sget v2, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v1, v2

    invoke-static {v0, p1, p2, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_4

    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_7
    :goto_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-eqz p2, :cond_8

    new-instance v0, Lps8;

    invoke-direct {v0, p0, p1, p3}, Lps8;-><init>(Landroidx/compose/ui/text/TextStyle;Lbm3;I)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_8
    return-void
.end method

.method private static final ProvideTextStyle$lambda$20(Landroidx/compose/ui/text/TextStyle;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-static {p0, p1, p3, p2}, Landroidx/compose/material3/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final synthetic Text--4IGK_g(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V
    .locals 47
    .annotation runtime Lul2;
    .end annotation

    move/from16 v0, p22

    move/from16 v1, p23

    move/from16 v2, p24

    const v3, 0xd620d0f

    move-object/from16 v4, p21

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

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v13, v2, 0x4

    if-eqz v13, :cond_6

    or-int/lit16 v8, v8, 0x180

    move v6, v8

    move-wide/from16 v7, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v0, 0x180

    move/from16 v16, v8

    move-wide/from16 v7, p2

    if-nez v6, :cond_8

    invoke-interface {v4, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x100

    goto :goto_4

    :cond_7
    const/16 v17, 0x80

    :goto_4
    or-int v16, v16, v17

    :cond_8
    move/from16 v6, v16

    :goto_5
    and-int/lit8 v16, v2, 0x8

    const/16 v18, 0x400

    const/16 v19, 0x800

    if-eqz v16, :cond_9

    or-int/lit16 v6, v6, 0xc00

    move-wide/from16 v11, p4

    goto :goto_7

    :cond_9
    and-int/lit16 v10, v0, 0xc00

    move-wide/from16 v11, p4

    if-nez v10, :cond_b

    invoke-interface {v4, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v21

    if-eqz v21, :cond_a

    move/from16 v21, v19

    goto :goto_6

    :cond_a
    move/from16 v21, v18

    :goto_6
    or-int v6, v6, v21

    :cond_b
    :goto_7
    and-int/lit8 v21, v2, 0x10

    const/16 v22, 0x2000

    const/16 v23, 0x4000

    if-eqz v21, :cond_d

    or-int/lit16 v6, v6, 0x6000

    :cond_c
    move-object/from16 v10, p6

    goto :goto_9

    :cond_d
    and-int/lit16 v10, v0, 0x6000

    if-nez v10, :cond_c

    move-object/from16 v10, p6

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    move/from16 v25, v23

    goto :goto_8

    :cond_e
    move/from16 v25, v22

    :goto_8
    or-int v6, v6, v25

    :goto_9
    and-int/lit8 v25, v2, 0x20

    const/high16 v26, 0x20000

    const/high16 v27, 0x10000

    const/high16 v28, 0x30000

    if-eqz v25, :cond_f

    or-int v6, v6, v28

    move-object/from16 v14, p7

    goto :goto_b

    :cond_f
    and-int v29, v0, v28

    move-object/from16 v14, p7

    if-nez v29, :cond_11

    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    move/from16 v30, v26

    goto :goto_a

    :cond_10
    move/from16 v30, v27

    :goto_a
    or-int v6, v6, v30

    :cond_11
    :goto_b
    and-int/lit8 v30, v2, 0x40

    const/high16 v31, 0x80000

    const/high16 v32, 0x100000

    const/high16 v33, 0x180000

    if-eqz v30, :cond_12

    or-int v6, v6, v33

    move-object/from16 v15, p8

    goto :goto_d

    :cond_12
    and-int v34, v0, v33

    move-object/from16 v15, p8

    if-nez v34, :cond_14

    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_13

    move/from16 v35, v32

    goto :goto_c

    :cond_13
    move/from16 v35, v31

    :goto_c
    or-int v6, v6, v35

    :cond_14
    :goto_d
    and-int/lit16 v3, v2, 0x80

    const/high16 v36, 0xc00000

    if-eqz v3, :cond_16

    or-int v6, v6, v36

    :cond_15
    move/from16 v36, v6

    move-wide/from16 v5, p9

    goto :goto_f

    :cond_16
    and-int v36, v0, v36

    if-nez v36, :cond_15

    move/from16 v36, v6

    move-wide/from16 v5, p9

    invoke-interface {v4, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v37

    if-eqz v37, :cond_17

    const/high16 v37, 0x800000

    goto :goto_e

    :cond_17
    const/high16 v37, 0x400000

    :goto_e
    or-int v36, v36, v37

    :goto_f
    and-int/lit16 v0, v2, 0x100

    const/high16 v37, 0x6000000

    if-eqz v0, :cond_19

    or-int v36, v36, v37

    :cond_18
    move/from16 v37, v0

    move-object/from16 v0, p11

    goto :goto_11

    :cond_19
    and-int v37, p22, v37

    if-nez v37, :cond_18

    move/from16 v37, v0

    move-object/from16 v0, p11

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1a

    const/high16 v38, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v38, 0x2000000

    :goto_10
    or-int v36, v36, v38

    :goto_11
    and-int/lit16 v0, v2, 0x200

    const/high16 v38, 0x30000000

    if-eqz v0, :cond_1b

    or-int v36, v36, v38

    move/from16 v38, v0

    :goto_12
    move/from16 v0, v36

    goto :goto_14

    :cond_1b
    and-int v38, p22, v38

    if-nez v38, :cond_1d

    move/from16 v38, v0

    move-object/from16 v0, p12

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1c

    const/high16 v39, 0x20000000

    goto :goto_13

    :cond_1c
    const/high16 v39, 0x10000000

    :goto_13
    or-int v36, v36, v39

    goto :goto_12

    :cond_1d
    move/from16 v38, v0

    move-object/from16 v0, p12

    goto :goto_12

    :goto_14
    move/from16 v36, v3

    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_1e

    or-int/lit8 v17, v1, 0x6

    move-wide/from16 v5, p13

    goto :goto_16

    :cond_1e
    and-int/lit8 v39, v1, 0x6

    move-wide/from16 v5, p13

    if-nez v39, :cond_20

    invoke-interface {v4, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v39

    if-eqz v39, :cond_1f

    const/16 v17, 0x4

    goto :goto_15

    :cond_1f
    const/16 v17, 0x2

    :goto_15
    or-int v17, v1, v17

    goto :goto_16

    :cond_20
    move/from16 v17, v1

    :goto_16
    move/from16 v39, v3

    and-int/lit16 v3, v2, 0x800

    if-eqz v3, :cond_21

    or-int/lit8 v17, v17, 0x30

    move/from16 v40, v3

    :goto_17
    move/from16 v3, v17

    goto :goto_19

    :cond_21
    and-int/lit8 v40, v1, 0x30

    if-nez v40, :cond_23

    move/from16 v40, v3

    move/from16 v3, p15

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v41

    if-eqz v41, :cond_22

    const/16 v24, 0x20

    goto :goto_18

    :cond_22
    const/16 v24, 0x10

    :goto_18
    or-int v17, v17, v24

    goto :goto_17

    :cond_23
    move/from16 v40, v3

    move/from16 v3, p15

    goto :goto_17

    :goto_19
    and-int/lit16 v5, v2, 0x1000

    if-eqz v5, :cond_25

    or-int/lit16 v3, v3, 0x180

    :cond_24
    move/from16 v6, p16

    goto :goto_1b

    :cond_25
    and-int/lit16 v6, v1, 0x180

    if-nez v6, :cond_24

    move/from16 v6, p16

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_26

    const/16 v29, 0x100

    goto :goto_1a

    :cond_26
    const/16 v29, 0x80

    :goto_1a
    or-int v3, v3, v29

    :goto_1b
    move/from16 v17, v5

    and-int/lit16 v5, v2, 0x2000

    if-eqz v5, :cond_27

    or-int/lit16 v3, v3, 0xc00

    goto :goto_1c

    :cond_27
    move/from16 v20, v3

    and-int/lit16 v3, v1, 0xc00

    if-nez v3, :cond_29

    move/from16 v3, p17

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v24

    if-eqz v24, :cond_28

    move/from16 v18, v19

    :cond_28
    or-int v18, v20, v18

    move/from16 v3, v18

    goto :goto_1c

    :cond_29
    move/from16 v3, p17

    move/from16 v3, v20

    :goto_1c
    move/from16 v18, v5

    and-int/lit16 v5, v2, 0x4000

    if-eqz v5, :cond_2b

    or-int/lit16 v3, v3, 0x6000

    :cond_2a
    move-object/from16 v2, p18

    goto :goto_1d

    :cond_2b
    and-int/lit16 v2, v1, 0x6000

    if-nez v2, :cond_2a

    move-object/from16 v2, p18

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2c

    move/from16 v22, v23

    :cond_2c
    or-int v3, v3, v22

    :goto_1d
    const v19, 0x8000

    and-int v19, p24, v19

    if-eqz v19, :cond_2d

    or-int v3, v3, v28

    move-object/from16 v1, p19

    goto :goto_1f

    :cond_2d
    and-int v20, v1, v28

    move-object/from16 v1, p19

    if-nez v20, :cond_2f

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2e

    goto :goto_1e

    :cond_2e
    move/from16 v26, v27

    :goto_1e
    or-int v3, v3, v26

    :cond_2f
    :goto_1f
    and-int v20, p23, v33

    if-nez v20, :cond_31

    and-int v20, p24, v27

    move-object/from16 v1, p20

    if-nez v20, :cond_30

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_30

    move/from16 v31, v32

    :cond_30
    or-int v3, v3, v31

    goto :goto_20

    :cond_31
    move-object/from16 v1, p20

    :goto_20
    const v20, 0x12492493

    and-int v1, v0, v20

    const v2, 0x12492492

    const/16 v20, 0x1

    if-ne v1, v2, :cond_33

    const v1, 0x92493

    and-int/2addr v1, v3

    const v2, 0x92492

    if-eq v1, v2, :cond_32

    goto :goto_21

    :cond_32
    const/4 v1, 0x0

    goto :goto_22

    :cond_33
    :goto_21
    move/from16 v1, v20

    :goto_22
    and-int/lit8 v2, v0, 0x1

    invoke-interface {v4, v1, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, p22, 0x1

    const v2, -0x380001

    if-eqz v1, :cond_36

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_23

    :cond_34
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int v1, p24, v27

    if-eqz v1, :cond_35

    and-int/2addr v3, v2

    :cond_35
    move-wide/from16 v16, v11

    move-object v11, v10

    move-wide/from16 v9, v16

    move-object/from16 v5, p1

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move-wide/from16 v18, p13

    move/from16 v20, p15

    move/from16 v22, p17

    move-object/from16 v24, p18

    move-object/from16 v25, p19

    move-object/from16 v26, p20

    move/from16 v21, v6

    move-wide v6, v7

    move-object v12, v14

    move-object v13, v15

    move-wide/from16 v14, p9

    goto/16 :goto_2f

    :cond_36
    :goto_23
    if-eqz v9, :cond_37

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_24

    :cond_37
    move-object/from16 v1, p1

    :goto_24
    if-eqz v13, :cond_38

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    :cond_38
    if-eqz v16, :cond_39

    sget-object v9, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v11

    :cond_39
    const/4 v9, 0x0

    if-eqz v21, :cond_3a

    move-object v10, v9

    :cond_3a
    if-eqz v25, :cond_3b

    move-object v14, v9

    :cond_3b
    if-eqz v30, :cond_3c

    move-object v15, v9

    :cond_3c
    if-eqz v36, :cond_3d

    sget-object v13, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v21

    goto :goto_25

    :cond_3d
    move-wide/from16 v21, p9

    :goto_25
    if-eqz v37, :cond_3e

    move-object v13, v9

    goto :goto_26

    :cond_3e
    move-object/from16 v13, p11

    :goto_26
    if-eqz v38, :cond_3f

    goto :goto_27

    :cond_3f
    move-object/from16 v9, p12

    :goto_27
    if-eqz v39, :cond_40

    sget-object v16, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v23

    goto :goto_28

    :cond_40
    move-wide/from16 v23, p13

    :goto_28
    if-eqz v40, :cond_41

    sget-object v16, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v16

    goto :goto_29

    :cond_41
    move/from16 v16, p15

    :goto_29
    if-eqz v17, :cond_42

    goto :goto_2a

    :cond_42
    move/from16 v20, v6

    :goto_2a
    if-eqz v18, :cond_43

    const v6, 0x7fffffff

    goto :goto_2b

    :cond_43
    move/from16 v6, p17

    :goto_2b
    if-eqz v5, :cond_44

    sget-object v5, Lmx2;->b:Lmx2;

    goto :goto_2c

    :cond_44
    move-object/from16 v5, p18

    :goto_2c
    if-eqz v19, :cond_46

    move/from16 p21, v2

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p1, v1

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_45

    new-instance v2, Lnx0;

    const/4 v1, 0x3

    invoke-direct {v2, v1}, Lnx0;-><init>(I)V

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_45
    move-object v1, v2

    check-cast v1, Lnl3;

    goto :goto_2d

    :cond_46
    move-object/from16 p1, v1

    move/from16 p21, v2

    move-object/from16 v1, p19

    :goto_2d
    and-int v2, p24, v27

    if-eqz v2, :cond_47

    sget-object v2, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/TextStyle;

    and-int v3, v3, p21

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    :goto_2e
    move-object/from16 v17, v9

    move-wide/from16 v18, v23

    move-object/from16 v24, v5

    move-object/from16 v5, p1

    move-wide/from16 v43, v21

    move/from16 v22, v6

    move-wide v6, v7

    move/from16 v21, v20

    move/from16 v20, v16

    move-object/from16 v16, v13

    move-object v13, v15

    move-wide/from16 v45, v11

    move-object v11, v10

    move-wide/from16 v9, v45

    move-object v12, v14

    move-wide/from16 v14, v43

    goto :goto_2f

    :cond_47
    move-object/from16 v26, p20

    move-object/from16 v25, v1

    goto :goto_2e

    :goto_2f
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_48

    const-string v1, "androidx.compose.material3.Text (Text.kt:418)"

    const v2, 0xd620d0f

    invoke-static {v2, v0, v3, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_48
    and-int/lit16 v1, v0, 0x3fe

    shl-int/lit8 v2, v0, 0x3

    const v8, 0xe000

    and-int v23, v2, v8

    or-int v1, v1, v23

    const/high16 v23, 0x70000

    and-int v23, v2, v23

    or-int v1, v1, v23

    const/high16 v23, 0x380000

    and-int v27, v2, v23

    or-int v1, v1, v27

    const/high16 v27, 0x1c00000

    and-int v29, v2, v27

    or-int v1, v1, v29

    const/high16 v29, 0xe000000

    and-int v30, v2, v29

    or-int v1, v1, v30

    const/high16 v30, 0x70000000

    and-int v2, v2, v30

    or-int/2addr v1, v2

    shr-int/lit8 v0, v0, 0x1b

    and-int/lit8 v0, v0, 0xe

    or-int v0, v0, v28

    shl-int/lit8 v2, v3, 0x3

    and-int/lit8 v28, v2, 0x70

    or-int v0, v0, v28

    move/from16 p1, v8

    and-int/lit16 v8, v2, 0x380

    or-int/2addr v0, v8

    and-int/lit16 v8, v2, 0x1c00

    or-int/2addr v0, v8

    and-int v2, v2, p1

    or-int/2addr v0, v2

    shl-int/lit8 v2, v3, 0x6

    and-int v3, v2, v23

    or-int/2addr v0, v3

    and-int v3, v2, v27

    or-int/2addr v0, v3

    and-int v2, v2, v29

    or-int v29, v0, v2

    const/16 v30, 0x8

    const/4 v8, 0x0

    const/16 v23, 0x1

    move/from16 v28, v1

    move-object/from16 v27, v4

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v30}, Landroidx/compose/material3/TextKt;->Text-Z58ophY(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_49
    move-object v2, v5

    move-wide v3, v6

    move-wide v5, v9

    move-object v7, v11

    move-object v8, v12

    move-object v9, v13

    move-wide v10, v14

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-wide/from16 v14, v18

    move/from16 v16, v20

    move/from16 v17, v21

    move/from16 v18, v22

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v21, v26

    goto :goto_30

    :cond_4a
    move-object/from16 v27, v4

    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-object/from16 v13, p12

    move/from16 v16, p15

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move/from16 v17, v6

    move-wide v3, v7

    move-object v7, v10

    move-wide v5, v11

    move-object v8, v14

    move-object v9, v15

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-wide/from16 v14, p13

    :goto_30
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_4b

    move-object v1, v0

    new-instance v0, Ljs8;

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    move-object/from16 v42, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v24}, Ljs8;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;III)V

    move-object/from16 v1, v42

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_4b
    return-void
.end method

.method public static final synthetic Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILnl3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V
    .locals 47
    .annotation runtime Lul2;
    .end annotation

    move/from16 v0, p22

    move/from16 v1, p23

    move/from16 v2, p24

    const v3, -0x7a7e7926

    move-object/from16 v4, p21

    .line 1037
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

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v13, v2, 0x4

    if-eqz v13, :cond_6

    or-int/lit16 v8, v8, 0x180

    move v6, v8

    move-wide/from16 v7, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v0, 0x180

    move/from16 v16, v8

    move-wide/from16 v7, p2

    if-nez v6, :cond_8

    invoke-interface {v4, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x100

    goto :goto_4

    :cond_7
    const/16 v17, 0x80

    :goto_4
    or-int v16, v16, v17

    :cond_8
    move/from16 v6, v16

    :goto_5
    and-int/lit8 v16, v2, 0x8

    const/16 v18, 0x400

    const/16 v19, 0x800

    if-eqz v16, :cond_9

    or-int/lit16 v6, v6, 0xc00

    move-wide/from16 v11, p4

    goto :goto_7

    :cond_9
    and-int/lit16 v10, v0, 0xc00

    move-wide/from16 v11, p4

    if-nez v10, :cond_b

    invoke-interface {v4, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v21

    if-eqz v21, :cond_a

    move/from16 v21, v19

    goto :goto_6

    :cond_a
    move/from16 v21, v18

    :goto_6
    or-int v6, v6, v21

    :cond_b
    :goto_7
    and-int/lit8 v21, v2, 0x10

    const/16 v22, 0x2000

    const/16 v23, 0x4000

    if-eqz v21, :cond_d

    or-int/lit16 v6, v6, 0x6000

    :cond_c
    move-object/from16 v10, p6

    goto :goto_9

    :cond_d
    and-int/lit16 v10, v0, 0x6000

    if-nez v10, :cond_c

    move-object/from16 v10, p6

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    move/from16 v25, v23

    goto :goto_8

    :cond_e
    move/from16 v25, v22

    :goto_8
    or-int v6, v6, v25

    :goto_9
    and-int/lit8 v25, v2, 0x20

    const/high16 v26, 0x20000

    const/high16 v27, 0x30000

    const/high16 v28, 0x10000

    if-eqz v25, :cond_f

    or-int v6, v6, v27

    move-object/from16 v14, p7

    goto :goto_b

    :cond_f
    and-int v29, v0, v27

    move-object/from16 v14, p7

    if-nez v29, :cond_11

    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    move/from16 v30, v26

    goto :goto_a

    :cond_10
    move/from16 v30, v28

    :goto_a
    or-int v6, v6, v30

    :cond_11
    :goto_b
    and-int/lit8 v30, v2, 0x40

    const/high16 v31, 0x80000

    const/high16 v32, 0x100000

    const/high16 v33, 0x180000

    if-eqz v30, :cond_12

    or-int v6, v6, v33

    move-object/from16 v15, p8

    goto :goto_d

    :cond_12
    and-int v34, v0, v33

    move-object/from16 v15, p8

    if-nez v34, :cond_14

    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_13

    move/from16 v35, v32

    goto :goto_c

    :cond_13
    move/from16 v35, v31

    :goto_c
    or-int v6, v6, v35

    :cond_14
    :goto_d
    and-int/lit16 v3, v2, 0x80

    const/high16 v36, 0xc00000

    if-eqz v3, :cond_16

    or-int v6, v6, v36

    :cond_15
    move/from16 v36, v6

    move-wide/from16 v5, p9

    goto :goto_f

    :cond_16
    and-int v36, v0, v36

    if-nez v36, :cond_15

    move/from16 v36, v6

    move-wide/from16 v5, p9

    invoke-interface {v4, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v37

    if-eqz v37, :cond_17

    const/high16 v37, 0x800000

    goto :goto_e

    :cond_17
    const/high16 v37, 0x400000

    :goto_e
    or-int v36, v36, v37

    :goto_f
    and-int/lit16 v0, v2, 0x100

    const/high16 v37, 0x6000000

    if-eqz v0, :cond_19

    or-int v36, v36, v37

    :cond_18
    move/from16 v37, v0

    move-object/from16 v0, p11

    goto :goto_11

    :cond_19
    and-int v37, p22, v37

    if-nez v37, :cond_18

    move/from16 v37, v0

    move-object/from16 v0, p11

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1a

    const/high16 v38, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v38, 0x2000000

    :goto_10
    or-int v36, v36, v38

    :goto_11
    and-int/lit16 v0, v2, 0x200

    const/high16 v38, 0x30000000

    if-eqz v0, :cond_1b

    or-int v36, v36, v38

    move/from16 v38, v0

    :goto_12
    move/from16 v0, v36

    goto :goto_14

    :cond_1b
    and-int v38, p22, v38

    if-nez v38, :cond_1d

    move/from16 v38, v0

    move-object/from16 v0, p12

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1c

    const/high16 v39, 0x20000000

    goto :goto_13

    :cond_1c
    const/high16 v39, 0x10000000

    :goto_13
    or-int v36, v36, v39

    goto :goto_12

    :cond_1d
    move/from16 v38, v0

    move-object/from16 v0, p12

    goto :goto_12

    :goto_14
    move/from16 v36, v3

    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_1e

    or-int/lit8 v17, v1, 0x6

    move-wide/from16 v5, p13

    goto :goto_16

    :cond_1e
    and-int/lit8 v39, v1, 0x6

    move-wide/from16 v5, p13

    if-nez v39, :cond_20

    invoke-interface {v4, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v39

    if-eqz v39, :cond_1f

    const/16 v17, 0x4

    goto :goto_15

    :cond_1f
    const/16 v17, 0x2

    :goto_15
    or-int v17, v1, v17

    goto :goto_16

    :cond_20
    move/from16 v17, v1

    :goto_16
    move/from16 v39, v3

    and-int/lit16 v3, v2, 0x800

    if-eqz v3, :cond_21

    or-int/lit8 v17, v17, 0x30

    move/from16 v40, v3

    :goto_17
    move/from16 v3, v17

    goto :goto_19

    :cond_21
    and-int/lit8 v40, v1, 0x30

    if-nez v40, :cond_23

    move/from16 v40, v3

    move/from16 v3, p15

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v41

    if-eqz v41, :cond_22

    const/16 v24, 0x20

    goto :goto_18

    :cond_22
    const/16 v24, 0x10

    :goto_18
    or-int v17, v17, v24

    goto :goto_17

    :cond_23
    move/from16 v40, v3

    move/from16 v3, p15

    goto :goto_17

    :goto_19
    and-int/lit16 v5, v2, 0x1000

    if-eqz v5, :cond_25

    or-int/lit16 v3, v3, 0x180

    :cond_24
    move/from16 v6, p16

    goto :goto_1b

    :cond_25
    and-int/lit16 v6, v1, 0x180

    if-nez v6, :cond_24

    move/from16 v6, p16

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_26

    const/16 v29, 0x100

    goto :goto_1a

    :cond_26
    const/16 v29, 0x80

    :goto_1a
    or-int v3, v3, v29

    :goto_1b
    move/from16 v17, v5

    and-int/lit16 v5, v2, 0x2000

    if-eqz v5, :cond_27

    or-int/lit16 v3, v3, 0xc00

    goto :goto_1c

    :cond_27
    move/from16 v20, v3

    and-int/lit16 v3, v1, 0xc00

    if-nez v3, :cond_29

    move/from16 v3, p17

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v24

    if-eqz v24, :cond_28

    move/from16 v18, v19

    :cond_28
    or-int v18, v20, v18

    move/from16 v3, v18

    goto :goto_1c

    :cond_29
    move/from16 v3, p17

    move/from16 v3, v20

    :goto_1c
    move/from16 v18, v5

    and-int/lit16 v5, v2, 0x4000

    if-eqz v5, :cond_2b

    or-int/lit16 v3, v3, 0x6000

    :cond_2a
    move/from16 v2, p18

    goto :goto_1d

    :cond_2b
    and-int/lit16 v2, v1, 0x6000

    if-nez v2, :cond_2a

    move/from16 v2, p18

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_2c

    move/from16 v22, v23

    :cond_2c
    or-int v3, v3, v22

    :goto_1d
    const v19, 0x8000

    and-int v19, p24, v19

    if-eqz v19, :cond_2d

    or-int v3, v3, v27

    move-object/from16 v1, p19

    goto :goto_1f

    :cond_2d
    and-int v20, v1, v27

    move-object/from16 v1, p19

    if-nez v20, :cond_2f

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2e

    goto :goto_1e

    :cond_2e
    move/from16 v26, v28

    :goto_1e
    or-int v3, v3, v26

    :cond_2f
    :goto_1f
    and-int v20, p23, v33

    if-nez v20, :cond_31

    and-int v20, p24, v28

    move-object/from16 v1, p20

    if-nez v20, :cond_30

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_30

    move/from16 v31, v32

    :cond_30
    or-int v3, v3, v31

    goto :goto_20

    :cond_31
    move-object/from16 v1, p20

    :goto_20
    const v20, 0x12492493

    and-int v1, v0, v20

    const v2, 0x12492492

    const/16 v20, 0x1

    if-ne v1, v2, :cond_33

    const v1, 0x92493

    and-int/2addr v1, v3

    const v2, 0x92492

    if-eq v1, v2, :cond_32

    goto :goto_21

    :cond_32
    const/4 v1, 0x0

    goto :goto_22

    :cond_33
    :goto_21
    move/from16 v1, v20

    :goto_22
    and-int/lit8 v2, v0, 0x1

    invoke-interface {v4, v1, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, p22, 0x1

    const v2, -0x380001

    if-eqz v1, :cond_36

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_23

    .line 1038
    :cond_34
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int v1, p24, v28

    if-eqz v1, :cond_35

    and-int/2addr v3, v2

    :cond_35
    move-wide/from16 v16, v11

    move-object v11, v10

    move-wide/from16 v9, v16

    move-object/from16 v5, p1

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move-wide/from16 v18, p13

    move/from16 v20, p15

    move/from16 v22, p17

    move/from16 v23, p18

    move-object/from16 v24, p19

    move-object/from16 v25, p20

    move/from16 v21, v6

    move-wide v6, v7

    move-object v12, v14

    move-object v13, v15

    move-wide/from16 v14, p9

    goto/16 :goto_2e

    :cond_36
    :goto_23
    if-eqz v9, :cond_37

    .line 1039
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_24

    :cond_37
    move-object/from16 v1, p1

    :goto_24
    if-eqz v13, :cond_38

    .line 1040
    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    :cond_38
    if-eqz v16, :cond_39

    .line 1041
    sget-object v9, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v11

    :cond_39
    const/4 v9, 0x0

    if-eqz v21, :cond_3a

    move-object v10, v9

    :cond_3a
    if-eqz v25, :cond_3b

    move-object v14, v9

    :cond_3b
    if-eqz v30, :cond_3c

    move-object v15, v9

    :cond_3c
    if-eqz v36, :cond_3d

    .line 1042
    sget-object v13, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v21

    goto :goto_25

    :cond_3d
    move-wide/from16 v21, p9

    :goto_25
    if-eqz v37, :cond_3e

    move-object v13, v9

    goto :goto_26

    :cond_3e
    move-object/from16 v13, p11

    :goto_26
    if-eqz v38, :cond_3f

    move-object/from16 v16, v9

    goto :goto_27

    :cond_3f
    move-object/from16 v16, p12

    :goto_27
    if-eqz v39, :cond_40

    .line 1043
    sget-object v23, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v23

    goto :goto_28

    :cond_40
    move-wide/from16 v23, p13

    :goto_28
    if-eqz v40, :cond_41

    .line 1044
    sget-object v25, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v25

    goto :goto_29

    :cond_41
    move/from16 v25, p15

    :goto_29
    if-eqz v17, :cond_42

    move/from16 v6, v20

    :cond_42
    if-eqz v18, :cond_43

    const v17, 0x7fffffff

    goto :goto_2a

    :cond_43
    move/from16 v17, p17

    :goto_2a
    if-eqz v5, :cond_44

    goto :goto_2b

    :cond_44
    move/from16 v20, p18

    :goto_2b
    if-eqz v19, :cond_45

    goto :goto_2c

    :cond_45
    move-object/from16 v9, p19

    :goto_2c
    and-int v5, p24, v28

    if-eqz v5, :cond_46

    .line 1045
    sget-object v5, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 1046
    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/TextStyle;

    and-int/2addr v3, v2

    move-wide/from16 v18, v23

    move-object/from16 v24, v9

    move/from16 v23, v20

    move/from16 v20, v25

    move-object/from16 v25, v5

    move-object v5, v1

    :goto_2d
    move-wide/from16 v43, v21

    move/from16 v21, v6

    move-wide v6, v7

    move/from16 v22, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v13

    move-object v13, v15

    move-wide/from16 v45, v11

    move-object v11, v10

    move-wide/from16 v9, v45

    move-object v12, v14

    move-wide/from16 v14, v43

    goto :goto_2e

    :cond_46
    move-object v5, v1

    move-wide/from16 v18, v23

    move-object/from16 v24, v9

    move/from16 v23, v20

    move/from16 v20, v25

    move-object/from16 v25, p20

    goto :goto_2d

    .line 1047
    :goto_2e
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_47

    const-string v1, "androidx.compose.material3.Text (Text.kt:283)"

    const v2, -0x7a7e7926

    invoke-static {v2, v0, v3, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_47
    and-int/lit8 v1, v0, 0xe

    or-int/lit16 v1, v1, 0xc00

    and-int/lit8 v2, v0, 0x70

    or-int/2addr v1, v2

    and-int/lit16 v2, v0, 0x380

    or-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x3

    const v8, 0xe000

    and-int v26, v2, v8

    or-int v1, v1, v26

    const/high16 v26, 0x70000

    and-int v27, v2, v26

    or-int v1, v1, v27

    const/high16 v27, 0x380000

    and-int v28, v2, v27

    or-int v1, v1, v28

    const/high16 v28, 0x1c00000

    and-int v29, v2, v28

    or-int v1, v1, v29

    const/high16 v29, 0xe000000

    and-int v29, v2, v29

    or-int v1, v1, v29

    const/high16 v29, 0x70000000

    and-int v2, v2, v29

    or-int/2addr v1, v2

    shr-int/lit8 v0, v0, 0x1b

    and-int/lit8 v0, v0, 0xe

    shl-int/lit8 v2, v3, 0x3

    and-int/lit8 v3, v2, 0x70

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x1c00

    or-int/2addr v0, v3

    and-int v3, v2, v8

    or-int/2addr v0, v3

    and-int v3, v2, v26

    or-int/2addr v0, v3

    and-int v3, v2, v27

    or-int/2addr v0, v3

    and-int v2, v2, v28

    or-int v28, v0, v2

    const/16 v29, 0x0

    const/4 v8, 0x0

    move/from16 v27, v1

    move-object/from16 v26, v4

    move-object/from16 v4, p0

    .line 1048
    invoke-static/range {v4 .. v29}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILnl3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_48
    move-object v2, v5

    move-wide v3, v6

    move-wide v5, v9

    move-object v7, v11

    move-object v8, v12

    move-object v9, v13

    move-wide v10, v14

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-wide/from16 v14, v18

    move/from16 v16, v20

    move/from16 v17, v21

    move/from16 v18, v22

    move/from16 v19, v23

    move-object/from16 v20, v24

    move-object/from16 v21, v25

    goto :goto_2f

    :cond_49
    move-object/from16 v26, v4

    .line 1049
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-object/from16 v13, p12

    move/from16 v16, p15

    move/from16 v18, p17

    move/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move/from16 v17, v6

    move-wide v3, v7

    move-object v7, v10

    move-wide v5, v11

    move-object v8, v14

    move-object v9, v15

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-wide/from16 v14, p13

    .line 1050
    :goto_2f
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_4a

    move-object v1, v0

    new-instance v0, Lks8;

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    move-object/from16 v42, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v24}, Lks8;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILnl3;Landroidx/compose/ui/text/TextStyle;III)V

    move-object/from16 v1, v42

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_4a
    return-void
.end method

.method public static final synthetic Text-IbK3jfQ(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V
    .locals 48
    .annotation runtime Lul2;
    .end annotation

    move/from16 v0, p23

    move/from16 v1, p24

    move/from16 v2, p25

    const v3, 0x78d1974c

    move-object/from16 v4, p22

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

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v13, v2, 0x4

    if-eqz v13, :cond_6

    or-int/lit16 v8, v8, 0x180

    move-wide/from16 v10, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v7, v0, 0x180

    move-wide/from16 v10, p2

    if-nez v7, :cond_8

    invoke-interface {v4, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x100

    goto :goto_4

    :cond_7
    const/16 v17, 0x80

    :goto_4
    or-int v8, v8, v17

    :cond_8
    :goto_5
    and-int/lit8 v17, v2, 0x8

    const/16 v18, 0x400

    const/16 v19, 0x800

    if-eqz v17, :cond_9

    or-int/lit16 v8, v8, 0xc00

    move-wide/from16 v14, p4

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v0, 0xc00

    move-wide/from16 v14, p4

    if-nez v7, :cond_b

    invoke-interface {v4, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v22

    if-eqz v22, :cond_a

    move/from16 v22, v19

    goto :goto_6

    :cond_a
    move/from16 v22, v18

    :goto_6
    or-int v8, v8, v22

    :cond_b
    :goto_7
    and-int/lit8 v22, v2, 0x10

    const/16 v23, 0x2000

    const/16 v24, 0x4000

    if-eqz v22, :cond_d

    or-int/lit16 v8, v8, 0x6000

    :cond_c
    move-object/from16 v7, p6

    goto :goto_9

    :cond_d
    and-int/lit16 v7, v0, 0x6000

    if-nez v7, :cond_c

    move-object/from16 v7, p6

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    move/from16 v26, v24

    goto :goto_8

    :cond_e
    move/from16 v26, v23

    :goto_8
    or-int v8, v8, v26

    :goto_9
    and-int/lit8 v26, v2, 0x20

    const/high16 v27, 0x10000

    const/high16 v28, 0x30000

    const/high16 v29, 0x20000

    if-eqz v26, :cond_f

    or-int v8, v8, v28

    move-object/from16 v3, p7

    goto :goto_b

    :cond_f
    and-int v30, v0, v28

    move-object/from16 v3, p7

    if-nez v30, :cond_11

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    move/from16 v31, v29

    goto :goto_a

    :cond_10
    move/from16 v31, v27

    :goto_a
    or-int v8, v8, v31

    :cond_11
    :goto_b
    and-int/lit8 v31, v2, 0x40

    const/high16 v32, 0x80000

    const/high16 v33, 0x100000

    const/high16 v34, 0x180000

    if-eqz v31, :cond_12

    or-int v8, v8, v34

    move-object/from16 v6, p8

    goto :goto_d

    :cond_12
    and-int v35, v0, v34

    move-object/from16 v6, p8

    if-nez v35, :cond_14

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_13

    move/from16 v36, v33

    goto :goto_c

    :cond_13
    move/from16 v36, v32

    :goto_c
    or-int v8, v8, v36

    :cond_14
    :goto_d
    and-int/lit16 v0, v2, 0x80

    const/high16 v36, 0x400000

    const/high16 v37, 0x800000

    const/high16 v38, 0xc00000

    if-eqz v0, :cond_15

    or-int v8, v8, v38

    move-wide/from16 v5, p9

    goto :goto_f

    :cond_15
    and-int v39, p23, v38

    move-wide/from16 v5, p9

    if-nez v39, :cond_17

    invoke-interface {v4, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v39

    if-eqz v39, :cond_16

    move/from16 v39, v37

    goto :goto_e

    :cond_16
    move/from16 v39, v36

    :goto_e
    or-int v8, v8, v39

    :cond_17
    :goto_f
    move/from16 v39, v0

    and-int/lit16 v0, v2, 0x100

    const/high16 v40, 0x6000000

    if-eqz v0, :cond_19

    or-int v8, v8, v40

    :cond_18
    move/from16 v40, v0

    move-object/from16 v0, p11

    goto :goto_11

    :cond_19
    and-int v40, p23, v40

    if-nez v40, :cond_18

    move/from16 v40, v0

    move-object/from16 v0, p11

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1a

    const/high16 v41, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v41, 0x2000000

    :goto_10
    or-int v8, v8, v41

    :goto_11
    and-int/lit16 v0, v2, 0x200

    const/high16 v41, 0x30000000

    if-eqz v0, :cond_1c

    or-int v8, v8, v41

    :cond_1b
    move/from16 v41, v0

    move-object/from16 v0, p12

    goto :goto_13

    :cond_1c
    and-int v41, p23, v41

    if-nez v41, :cond_1b

    move/from16 v41, v0

    move-object/from16 v0, p12

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_1d

    const/high16 v42, 0x20000000

    goto :goto_12

    :cond_1d
    const/high16 v42, 0x10000000

    :goto_12
    or-int v8, v8, v42

    :goto_13
    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_1e

    or-int/lit8 v42, v1, 0x6

    move-wide/from16 v5, p13

    goto :goto_15

    :cond_1e
    and-int/lit8 v42, v1, 0x6

    move-wide/from16 v5, p13

    if-nez v42, :cond_20

    invoke-interface {v4, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v42

    if-eqz v42, :cond_1f

    const/16 v42, 0x4

    goto :goto_14

    :cond_1f
    const/16 v42, 0x2

    :goto_14
    or-int v42, v1, v42

    goto :goto_15

    :cond_20
    move/from16 v42, v1

    :goto_15
    move/from16 p22, v0

    and-int/lit16 v0, v2, 0x800

    if-eqz v0, :cond_21

    or-int/lit8 v42, v42, 0x30

    move/from16 v43, v0

    :goto_16
    move/from16 v0, v42

    goto :goto_18

    :cond_21
    and-int/lit8 v43, v1, 0x30

    if-nez v43, :cond_23

    move/from16 v43, v0

    move/from16 v0, p15

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v44

    if-eqz v44, :cond_22

    const/16 v16, 0x20

    goto :goto_17

    :cond_22
    const/16 v16, 0x10

    :goto_17
    or-int v42, v42, v16

    goto :goto_16

    :cond_23
    move/from16 v43, v0

    move/from16 v0, p15

    goto :goto_16

    :goto_18
    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_24

    or-int/lit16 v0, v0, 0x180

    goto :goto_1b

    :cond_24
    move/from16 v16, v0

    and-int/lit16 v0, v1, 0x180

    if-nez v0, :cond_26

    move/from16 v0, p16

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v20

    if-eqz v20, :cond_25

    const/16 v25, 0x100

    goto :goto_19

    :cond_25
    const/16 v25, 0x80

    :goto_19
    or-int v16, v16, v25

    :goto_1a
    move/from16 v0, v16

    goto :goto_1b

    :cond_26
    move/from16 v0, p16

    goto :goto_1a

    :goto_1b
    move/from16 v16, v3

    and-int/lit16 v3, v2, 0x2000

    if-eqz v3, :cond_27

    or-int/lit16 v0, v0, 0xc00

    goto :goto_1c

    :cond_27
    move/from16 v20, v0

    and-int/lit16 v0, v1, 0xc00

    if-nez v0, :cond_29

    move/from16 v0, p17

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v21

    if-eqz v21, :cond_28

    move/from16 v18, v19

    :cond_28
    or-int v18, v20, v18

    move/from16 v0, v18

    goto :goto_1c

    :cond_29
    move/from16 v0, p17

    move/from16 v0, v20

    :goto_1c
    move/from16 v18, v3

    and-int/lit16 v3, v2, 0x4000

    if-eqz v3, :cond_2b

    or-int/lit16 v0, v0, 0x6000

    move/from16 v19, v0

    :cond_2a
    move/from16 v0, p18

    goto :goto_1d

    :cond_2b
    move/from16 v19, v0

    and-int/lit16 v0, v1, 0x6000

    if-nez v0, :cond_2a

    move/from16 v0, p18

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v20

    if-eqz v20, :cond_2c

    move/from16 v23, v24

    :cond_2c
    or-int v19, v19, v23

    :goto_1d
    const v20, 0x8000

    and-int v20, v2, v20

    if-eqz v20, :cond_2d

    or-int v19, v19, v28

    move-object/from16 v0, p19

    goto :goto_1f

    :cond_2d
    and-int v21, v1, v28

    move-object/from16 v0, p19

    if-nez v21, :cond_2f

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2e

    move/from16 v21, v29

    goto :goto_1e

    :cond_2e
    move/from16 v21, v27

    :goto_1e
    or-int v19, v19, v21

    :cond_2f
    :goto_1f
    and-int v21, v2, v27

    if-eqz v21, :cond_30

    or-int v19, v19, v34

    move-object/from16 v0, p20

    goto :goto_20

    :cond_30
    and-int v23, v1, v34

    move-object/from16 v0, p20

    if-nez v23, :cond_32

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_31

    move/from16 v32, v33

    :cond_31
    or-int v19, v19, v32

    :cond_32
    :goto_20
    and-int v23, v1, v38

    if-nez v23, :cond_34

    and-int v23, v2, v29

    move-object/from16 v0, p21

    if-nez v23, :cond_33

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_33

    move/from16 v36, v37

    :cond_33
    or-int v19, v19, v36

    goto :goto_21

    :cond_34
    move-object/from16 v0, p21

    :goto_21
    const v23, 0x12492493

    and-int v0, v8, v23

    const v1, 0x12492492

    const/16 v23, 0x1

    if-ne v0, v1, :cond_36

    const v0, 0x492493

    and-int v0, v19, v0

    const v1, 0x492492

    if-eq v0, v1, :cond_35

    goto :goto_22

    :cond_35
    const/4 v0, 0x0

    goto :goto_23

    :cond_36
    :goto_22
    move/from16 v0, v23

    :goto_23
    and-int/lit8 v1, v8, 0x1

    invoke-interface {v4, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, p23, 0x1

    const v1, -0x1c00001

    if-eqz v0, :cond_39

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_24

    :cond_37
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int v0, v2, v29

    if-eqz v0, :cond_38

    and-int v19, v19, v1

    :cond_38
    move-object/from16 v13, p8

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move/from16 v20, p15

    move/from16 v21, p16

    move/from16 v22, p17

    move/from16 v23, p18

    move-object/from16 v24, p19

    move-object/from16 v25, p20

    move-object/from16 v26, p21

    move/from16 v0, v19

    move-wide/from16 v18, v5

    move-object v5, v12

    move-object/from16 v12, p7

    move-wide/from16 v46, v10

    move-object v11, v7

    move-wide/from16 v6, v46

    move-wide v9, v14

    move-wide/from16 v14, p9

    goto/16 :goto_33

    :cond_39
    :goto_24
    if-eqz v9, :cond_3a

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v12, v0

    :cond_3a
    if-eqz v13, :cond_3b

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v9

    goto :goto_25

    :cond_3b
    move-wide v9, v10

    :goto_25
    if-eqz v17, :cond_3c

    sget-object v0, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v13

    goto :goto_26

    :cond_3c
    move-wide v13, v14

    :goto_26
    const/4 v0, 0x0

    if-eqz v22, :cond_3d

    move-object v7, v0

    :cond_3d
    if-eqz v26, :cond_3e

    move-object v11, v0

    goto :goto_27

    :cond_3e
    move-object/from16 v11, p7

    :goto_27
    if-eqz v31, :cond_3f

    move-object v15, v0

    goto :goto_28

    :cond_3f
    move-object/from16 v15, p8

    :goto_28
    if-eqz v39, :cond_40

    sget-object v17, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v24

    goto :goto_29

    :cond_40
    move-wide/from16 v24, p9

    :goto_29
    if-eqz v40, :cond_41

    move-object/from16 v17, v0

    goto :goto_2a

    :cond_41
    move-object/from16 v17, p11

    :goto_2a
    if-eqz v41, :cond_42

    goto :goto_2b

    :cond_42
    move-object/from16 v0, p12

    :goto_2b
    if-eqz p22, :cond_43

    sget-object v5, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v5

    :cond_43
    if-eqz v43, :cond_44

    sget-object v22, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v22

    goto :goto_2c

    :cond_44
    move/from16 v22, p15

    :goto_2c
    if-eqz v16, :cond_45

    move/from16 v16, v23

    goto :goto_2d

    :cond_45
    move/from16 v16, p16

    :goto_2d
    if-eqz v18, :cond_46

    const v18, 0x7fffffff

    goto :goto_2e

    :cond_46
    move/from16 v18, p17

    :goto_2e
    if-eqz v3, :cond_47

    goto :goto_2f

    :cond_47
    move/from16 v23, p18

    :goto_2f
    if-eqz v20, :cond_48

    sget-object v3, Lmx2;->b:Lmx2;

    goto :goto_30

    :cond_48
    move-object/from16 v3, p19

    :goto_30
    if-eqz v21, :cond_4a

    move/from16 p22, v1

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p1, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_49

    new-instance v1, Leg0;

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Leg0;-><init>(I)V

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_49
    move-object v0, v1

    check-cast v0, Lnl3;

    goto :goto_31

    :cond_4a
    move-object/from16 p1, v0

    move/from16 p22, v1

    move-object/from16 v0, p20

    :goto_31
    and-int v1, v2, v29

    if-eqz v1, :cond_4b

    sget-object v1, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/TextStyle;

    and-int v19, v19, p22

    move-object/from16 v26, v1

    :goto_32
    move/from16 v21, v16

    move-object/from16 v16, v17

    move/from16 v20, v22

    move-object/from16 v17, p1

    move/from16 v22, v18

    move-wide/from16 v46, v24

    move-object/from16 v25, v0

    move-object/from16 v24, v3

    move/from16 v0, v19

    move-wide/from16 v18, v5

    move-object v5, v12

    move-object v12, v11

    move-object v11, v7

    move-wide v6, v9

    move-wide v9, v13

    move-object v13, v15

    move-wide/from16 v14, v46

    goto :goto_33

    :cond_4b
    move-object/from16 v26, p21

    goto :goto_32

    :goto_33
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string v1, "androidx.compose.material3.Text (Text.kt:329)"

    const v3, 0x78d1974c

    invoke-static {v3, v8, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4c
    and-int/lit8 v1, v8, 0xe

    or-int/lit16 v1, v1, 0xc00

    and-int/lit8 v3, v8, 0x70

    or-int/2addr v1, v3

    and-int/lit16 v3, v8, 0x380

    or-int/2addr v1, v3

    shl-int/lit8 v3, v8, 0x3

    const v27, 0xe000

    and-int v28, v3, v27

    or-int v1, v1, v28

    const/high16 v28, 0x70000

    and-int v29, v3, v28

    or-int v1, v1, v29

    const/high16 v29, 0x380000

    and-int v30, v3, v29

    or-int v1, v1, v30

    const/high16 v30, 0x1c00000

    and-int v31, v3, v30

    or-int v1, v1, v31

    const/high16 v31, 0xe000000

    and-int v32, v3, v31

    or-int v1, v1, v32

    const/high16 v32, 0x70000000

    and-int v3, v3, v32

    or-int/2addr v1, v3

    shr-int/lit8 v3, v8, 0x1b

    and-int/lit8 v3, v3, 0xe

    shl-int/lit8 v0, v0, 0x3

    and-int/lit8 v8, v0, 0x70

    or-int/2addr v3, v8

    and-int/lit16 v8, v0, 0x380

    or-int/2addr v3, v8

    and-int/lit16 v8, v0, 0x1c00

    or-int/2addr v3, v8

    and-int v8, v0, v27

    or-int/2addr v3, v8

    and-int v8, v0, v28

    or-int/2addr v3, v8

    and-int v8, v0, v29

    or-int/2addr v3, v8

    and-int v8, v0, v30

    or-int/2addr v3, v8

    and-int v0, v0, v31

    or-int v29, v3, v0

    const/16 v30, 0x0

    const/4 v8, 0x0

    move/from16 v28, v1

    move-object/from16 v27, v4

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v30}, Landroidx/compose/material3/TextKt;->Text-Z58ophY(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4d
    move-wide v3, v6

    move-object v7, v11

    move-object v8, v12

    move-object v12, v5

    move-wide v5, v9

    move-object v9, v13

    move-wide v10, v14

    move-object/from16 v13, v17

    move-wide/from16 v14, v18

    move/from16 v17, v21

    move/from16 v18, v22

    move/from16 v19, v23

    move-object/from16 v21, v25

    move-object/from16 v22, v26

    goto :goto_34

    :cond_4e
    move-object/from16 v27, v4

    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-wide v3, v14

    move-wide v14, v5

    move-wide v5, v3

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v16, p11

    move-object/from16 v13, p12

    move/from16 v20, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move-object/from16 v24, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-wide v3, v10

    move-wide/from16 v10, p9

    :goto_34
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_4f

    move-object v1, v0

    new-instance v0, Los8;

    move/from16 v23, p23

    move-object/from16 v45, v1

    move/from16 v25, v2

    move-object v2, v12

    move-object/from16 v12, v16

    move/from16 v16, v20

    move-object/from16 v20, v24

    move-object/from16 v1, p0

    move/from16 v24, p24

    invoke-direct/range {v0 .. v25}, Los8;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;III)V

    move-object/from16 v1, v45

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_4f
    return-void
.end method

.method public static final Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILnl3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V
    .locals 69
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Modifier;",
            "J",
            "Landroidx/compose/foundation/text/TextAutoSize;",
            "J",
            "Landroidx/compose/ui/text/font/FontStyle;",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "J",
            "Landroidx/compose/ui/text/style/TextDecoration;",
            "Landroidx/compose/ui/text/style/TextAlign;",
            "JIZII",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move/from16 v0, p23

    move/from16 v1, p24

    move/from16 v2, p25

    const v3, 0x6bda414b

    move-object/from16 v4, p22

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

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v13, v2, 0x4

    if-eqz v13, :cond_6

    or-int/lit16 v8, v8, 0x180

    move v6, v8

    move-wide/from16 v7, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v0, 0x180

    move/from16 v16, v8

    move-wide/from16 v7, p2

    if-nez v6, :cond_8

    invoke-interface {v4, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x100

    goto :goto_4

    :cond_7
    const/16 v17, 0x80

    :goto_4
    or-int v16, v16, v17

    :cond_8
    move/from16 v6, v16

    :goto_5
    and-int/lit8 v16, v2, 0x8

    const/16 v18, 0x400

    const/16 v19, 0x800

    if-eqz v16, :cond_a

    or-int/lit16 v6, v6, 0xc00

    :cond_9
    move-object/from16 v10, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v10, v0, 0xc00

    if-nez v10, :cond_9

    move-object/from16 v10, p4

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    move/from16 v21, v19

    goto :goto_6

    :cond_b
    move/from16 v21, v18

    :goto_6
    or-int v6, v6, v21

    :goto_7
    and-int/lit8 v21, v2, 0x10

    const/16 v22, 0x2000

    const/16 v23, 0x4000

    if-eqz v21, :cond_c

    or-int/lit16 v6, v6, 0x6000

    move-wide/from16 v14, p5

    goto :goto_9

    :cond_c
    and-int/lit16 v11, v0, 0x6000

    move-wide/from16 v14, p5

    if-nez v11, :cond_e

    invoke-interface {v4, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v26

    if-eqz v26, :cond_d

    move/from16 v26, v23

    goto :goto_8

    :cond_d
    move/from16 v26, v22

    :goto_8
    or-int v6, v6, v26

    :cond_e
    :goto_9
    and-int/lit8 v26, v2, 0x20

    const/high16 v27, 0x10000

    const/high16 v28, 0x30000

    const/high16 v29, 0x20000

    if-eqz v26, :cond_f

    or-int v6, v6, v28

    move-object/from16 v11, p7

    goto :goto_b

    :cond_f
    and-int v30, v0, v28

    move-object/from16 v11, p7

    if-nez v30, :cond_11

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    move/from16 v31, v29

    goto :goto_a

    :cond_10
    move/from16 v31, v27

    :goto_a
    or-int v6, v6, v31

    :cond_11
    :goto_b
    and-int/lit8 v31, v2, 0x40

    const/high16 v32, 0x80000

    const/high16 v33, 0x100000

    const/high16 v34, 0x180000

    if-eqz v31, :cond_12

    or-int v6, v6, v34

    move-object/from16 v3, p8

    goto :goto_d

    :cond_12
    and-int v35, v0, v34

    move-object/from16 v3, p8

    if-nez v35, :cond_14

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_13

    move/from16 v36, v33

    goto :goto_c

    :cond_13
    move/from16 v36, v32

    :goto_c
    or-int v6, v6, v36

    :cond_14
    :goto_d
    and-int/lit16 v0, v2, 0x80

    const/high16 v36, 0x400000

    const/high16 v37, 0x800000

    const/high16 v38, 0xc00000

    if-eqz v0, :cond_16

    or-int v6, v6, v38

    :cond_15
    move/from16 v39, v0

    move-object/from16 v0, p9

    goto :goto_f

    :cond_16
    and-int v39, p23, v38

    if-nez v39, :cond_15

    move/from16 v39, v0

    move-object/from16 v0, p9

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_17

    move/from16 v40, v37

    goto :goto_e

    :cond_17
    move/from16 v40, v36

    :goto_e
    or-int v6, v6, v40

    :goto_f
    and-int/lit16 v0, v2, 0x100

    const/high16 v40, 0x6000000

    if-eqz v0, :cond_19

    or-int v6, v6, v40

    :cond_18
    move/from16 v40, v6

    move-wide/from16 v5, p10

    goto :goto_11

    :cond_19
    and-int v40, p23, v40

    if-nez v40, :cond_18

    move/from16 v40, v6

    move-wide/from16 v5, p10

    invoke-interface {v4, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v41

    if-eqz v41, :cond_1a

    const/high16 v41, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v41, 0x2000000

    :goto_10
    or-int v40, v40, v41

    :goto_11
    move/from16 v41, v0

    and-int/lit16 v0, v2, 0x200

    const/high16 v42, 0x30000000

    if-eqz v0, :cond_1b

    or-int v40, v40, v42

    move/from16 v42, v0

    :goto_12
    move/from16 v0, v40

    goto :goto_14

    :cond_1b
    and-int v42, p23, v42

    if-nez v42, :cond_1d

    move/from16 v42, v0

    move-object/from16 v0, p12

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_1c

    const/high16 v43, 0x20000000

    goto :goto_13

    :cond_1c
    const/high16 v43, 0x10000000

    :goto_13
    or-int v40, v40, v43

    goto :goto_12

    :cond_1d
    move/from16 v42, v0

    move-object/from16 v0, p12

    goto :goto_12

    :goto_14
    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_1e

    or-int/lit8 v17, v1, 0x6

    move/from16 v40, v3

    move-object/from16 v3, p13

    goto :goto_16

    :cond_1e
    and-int/lit8 v40, v1, 0x6

    if-nez v40, :cond_20

    move/from16 v40, v3

    move-object/from16 v3, p13

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_1f

    const/16 v17, 0x4

    goto :goto_15

    :cond_1f
    const/16 v17, 0x2

    :goto_15
    or-int v17, v1, v17

    goto :goto_16

    :cond_20
    move/from16 v40, v3

    move-object/from16 v3, p13

    move/from16 v17, v1

    :goto_16
    and-int/lit16 v3, v2, 0x800

    if-eqz v3, :cond_22

    or-int/lit8 v17, v17, 0x30

    move-wide/from16 v5, p14

    :cond_21
    :goto_17
    move/from16 v20, v3

    move/from16 v3, v17

    goto :goto_19

    :cond_22
    and-int/lit8 v43, v1, 0x30

    move-wide/from16 v5, p14

    if-nez v43, :cond_21

    invoke-interface {v4, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v43

    if-eqz v43, :cond_23

    const/16 v24, 0x20

    goto :goto_18

    :cond_23
    const/16 v24, 0x10

    :goto_18
    or-int v17, v17, v24

    goto :goto_17

    :goto_19
    and-int/lit16 v5, v2, 0x1000

    if-eqz v5, :cond_25

    or-int/lit16 v3, v3, 0x180

    :cond_24
    move/from16 v6, p16

    goto :goto_1b

    :cond_25
    and-int/lit16 v6, v1, 0x180

    if-nez v6, :cond_24

    move/from16 v6, p16

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v17

    if-eqz v17, :cond_26

    const/16 v25, 0x100

    goto :goto_1a

    :cond_26
    const/16 v25, 0x80

    :goto_1a
    or-int v3, v3, v25

    :goto_1b
    move/from16 v17, v5

    and-int/lit16 v5, v2, 0x2000

    if-eqz v5, :cond_27

    or-int/lit16 v3, v3, 0xc00

    goto :goto_1c

    :cond_27
    move/from16 v24, v3

    and-int/lit16 v3, v1, 0xc00

    if-nez v3, :cond_29

    move/from16 v3, p17

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v25

    if-eqz v25, :cond_28

    move/from16 v18, v19

    :cond_28
    or-int v18, v24, v18

    move/from16 v3, v18

    goto :goto_1c

    :cond_29
    move/from16 v3, p17

    move/from16 v3, v24

    :goto_1c
    move/from16 v18, v5

    and-int/lit16 v5, v2, 0x4000

    if-eqz v5, :cond_2b

    or-int/lit16 v3, v3, 0x6000

    :cond_2a
    move/from16 v2, p18

    goto :goto_1d

    :cond_2b
    and-int/lit16 v2, v1, 0x6000

    if-nez v2, :cond_2a

    move/from16 v2, p18

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_2c

    move/from16 v22, v23

    :cond_2c
    or-int v3, v3, v22

    :goto_1d
    const v19, 0x8000

    and-int v19, p25, v19

    if-eqz v19, :cond_2d

    or-int v3, v3, v28

    move/from16 v1, p19

    goto :goto_1f

    :cond_2d
    and-int v22, v1, v28

    move/from16 v1, p19

    if-nez v22, :cond_2f

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v22

    if-eqz v22, :cond_2e

    move/from16 v22, v29

    goto :goto_1e

    :cond_2e
    move/from16 v22, v27

    :goto_1e
    or-int v3, v3, v22

    :cond_2f
    :goto_1f
    and-int v22, p25, v27

    if-eqz v22, :cond_30

    or-int v3, v3, v34

    move-object/from16 v1, p20

    goto :goto_20

    :cond_30
    and-int v23, p24, v34

    move-object/from16 v1, p20

    if-nez v23, :cond_32

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_31

    move/from16 v32, v33

    :cond_31
    or-int v3, v3, v32

    :cond_32
    :goto_20
    and-int v23, p24, v38

    if-nez v23, :cond_34

    and-int v23, p25, v29

    move-object/from16 v1, p21

    if-nez v23, :cond_33

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_33

    move/from16 v36, v37

    :cond_33
    or-int v3, v3, v36

    goto :goto_21

    :cond_34
    move-object/from16 v1, p21

    :goto_21
    const v23, 0x12492493

    and-int v1, v0, v23

    const v2, 0x12492492

    const/16 v23, 0x1

    if-ne v1, v2, :cond_36

    const v1, 0x492493

    and-int/2addr v1, v3

    const v2, 0x492492

    if-eq v1, v2, :cond_35

    goto :goto_22

    :cond_35
    const/4 v1, 0x0

    goto :goto_23

    :cond_36
    :goto_22
    move/from16 v1, v23

    :goto_23
    and-int/lit8 v2, v0, 0x1

    invoke-interface {v4, v1, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, p23, 0x1

    const v2, -0x1c00001

    if-eqz v1, :cond_39

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_24

    :cond_37
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int v1, p25, v29

    if-eqz v1, :cond_38

    and-int/2addr v3, v2

    :cond_38
    move-object/from16 v41, p8

    move-object/from16 v44, p9

    move-wide/from16 v46, p10

    move-object/from16 v53, p12

    move-object/from16 v21, p13

    move-wide/from16 v58, p14

    move/from16 v17, p17

    move/from16 v5, p18

    move/from16 v23, p19

    move-object/from16 v1, p20

    move-object/from16 v36, p21

    move-object/from16 v42, v11

    move-wide/from16 v39, v14

    goto/16 :goto_31

    :cond_39
    :goto_24
    if-eqz v9, :cond_3a

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v12, v1

    :cond_3a
    if-eqz v13, :cond_3b

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    :cond_3b
    const/4 v1, 0x0

    if-eqz v16, :cond_3c

    move-object v10, v1

    :cond_3c
    if-eqz v21, :cond_3d

    sget-object v9, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v13

    goto :goto_25

    :cond_3d
    move-wide v13, v14

    :goto_25
    if-eqz v26, :cond_3e

    move-object v11, v1

    :cond_3e
    if-eqz v31, :cond_3f

    move-object v9, v1

    goto :goto_26

    :cond_3f
    move-object/from16 v9, p8

    :goto_26
    if-eqz v39, :cond_40

    move-object v15, v1

    goto :goto_27

    :cond_40
    move-object/from16 v15, p9

    :goto_27
    if-eqz v41, :cond_41

    sget-object v16, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v24

    goto :goto_28

    :cond_41
    move-wide/from16 v24, p10

    :goto_28
    if-eqz v42, :cond_42

    move-object/from16 v16, v1

    goto :goto_29

    :cond_42
    move-object/from16 v16, p12

    :goto_29
    if-eqz v40, :cond_43

    move-object/from16 v21, v1

    goto :goto_2a

    :cond_43
    move-object/from16 v21, p13

    :goto_2a
    if-eqz v20, :cond_44

    sget-object v20, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v26

    goto :goto_2b

    :cond_44
    move-wide/from16 v26, p14

    :goto_2b
    if-eqz v17, :cond_45

    sget-object v6, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v6

    :cond_45
    if-eqz v18, :cond_46

    move/from16 v17, v23

    goto :goto_2c

    :cond_46
    move/from16 v17, p17

    :goto_2c
    if-eqz v5, :cond_47

    const v5, 0x7fffffff

    goto :goto_2d

    :cond_47
    move/from16 v5, p18

    :goto_2d
    if-eqz v19, :cond_48

    goto :goto_2e

    :cond_48
    move/from16 v23, p19

    :goto_2e
    if-eqz v22, :cond_49

    goto :goto_2f

    :cond_49
    move-object/from16 v1, p20

    :goto_2f
    and-int v18, p25, v29

    if-eqz v18, :cond_4a

    move/from16 p22, v2

    sget-object v2, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/TextStyle;

    and-int v3, v3, p22

    move-object/from16 v36, v2

    :goto_30
    move-object/from16 v41, v9

    move-object/from16 v42, v11

    move-wide/from16 v39, v13

    move-object/from16 v44, v15

    move-object/from16 v53, v16

    move-wide/from16 v46, v24

    move-wide/from16 v58, v26

    goto :goto_31

    :cond_4a
    move-object/from16 v36, p21

    goto :goto_30

    :goto_31
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string v2, "androidx.compose.material3.Text (Text.kt:120)"

    const v9, 0x6bda414b

    invoke-static {v9, v0, v3, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4b
    const v2, -0x21b08752

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-wide/16 v13, 0x10

    cmp-long v2, v7, v13

    if-eqz v2, :cond_4c

    move-wide/from16 v37, v7

    goto :goto_33

    :cond_4c
    const v2, -0x21b0844d

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v15

    cmp-long v2, v15, v13

    if-eqz v2, :cond_4d

    goto :goto_32

    :cond_4d
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v15

    :goto_32
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-wide/from16 v37, v15

    :goto_33
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    if-eqz v21, :cond_4e

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/text/style/TextAlign;->unbox-impl()I

    move-result v2

    :goto_34
    move/from16 v56, v2

    goto :goto_35

    :cond_4e
    sget-object v2, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getUnspecified-e0LSkKk()I

    move-result v2

    goto :goto_34

    :goto_35
    const v66, 0xfd6f50

    const/16 v67, 0x0

    const/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const-wide/16 v51, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v57, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    invoke-static/range {v36 .. v67}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/TextMotion;ILjava/lang/Object;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    and-int/lit8 v9, v0, 0x7e

    shr-int/lit8 v11, v3, 0x9

    and-int/lit16 v11, v11, 0x1c00

    or-int/2addr v9, v11

    shl-int/lit8 v3, v3, 0x6

    const v11, 0xe000

    and-int/2addr v11, v3

    or-int/2addr v9, v11

    const/high16 v11, 0x70000

    and-int/2addr v11, v3

    or-int/2addr v9, v11

    const/high16 v11, 0x380000

    and-int/2addr v11, v3

    or-int/2addr v9, v11

    const/high16 v11, 0x1c00000

    and-int/2addr v3, v11

    or-int/2addr v3, v9

    shl-int/lit8 v0, v0, 0x12

    const/high16 v9, 0x70000000

    and-int/2addr v0, v9

    or-int/2addr v0, v3

    const/16 v3, 0x100

    const/4 v9, 0x0

    move-object/from16 p1, p0

    move/from16 p12, v0

    move-object/from16 p4, v1

    move-object/from16 p3, v2

    move/from16 p13, v3

    move-object/from16 p11, v4

    move/from16 p7, v5

    move/from16 p5, v6

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p2, v12

    move/from16 p6, v17

    move/from16 p8, v23

    invoke-static/range {p1 .. p13}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-RWo7tUw(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lnl3;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v0, p11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4f
    move/from16 v19, v5

    move-wide v3, v7

    move-object v5, v10

    move-object v2, v12

    move/from16 v18, v17

    move-object/from16 v14, v21

    move/from16 v20, v23

    move-object/from16 v22, v36

    move-object/from16 v9, v41

    move-object/from16 v8, v42

    move-object/from16 v10, v44

    move-wide/from16 v11, v46

    move-object/from16 v13, v53

    move-wide/from16 v15, v58

    move-object/from16 v21, v1

    move/from16 v17, v6

    move-wide/from16 v6, v39

    goto :goto_36

    :cond_50
    move-object v0, v4

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v9, p8

    move-object/from16 v13, p12

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move/from16 v17, v6

    move-wide v3, v7

    move-object v5, v10

    move-object v8, v11

    move-object v2, v12

    move-wide v6, v14

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    move-object/from16 v14, p13

    move-wide/from16 v15, p14

    :goto_36
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_51

    move-object v1, v0

    new-instance v0, Lls8;

    move/from16 v23, p23

    move/from16 v24, p24

    move/from16 v25, p25

    move-object/from16 v68, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v25}, Lls8;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILnl3;Landroidx/compose/ui/text/TextStyle;III)V

    move-object/from16 v1, v68

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_51
    return-void
.end method

.method public static final Text-Z58ophY(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V
    .locals 70
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/Modifier;",
            "J",
            "Landroidx/compose/foundation/text/TextAutoSize;",
            "J",
            "Landroidx/compose/ui/text/font/FontStyle;",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "J",
            "Landroidx/compose/ui/text/style/TextDecoration;",
            "Landroidx/compose/ui/text/style/TextAlign;",
            "JIZII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/compose/foundation/text/InlineTextContent;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p24

    move/from16 v2, p25

    move/from16 v3, p26

    const v4, 0x116b5779

    move-object/from16 v5, p23

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_0

    or-int/lit8 v6, v0, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v0, 0x6

    if-nez v6, :cond_2

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v13, v3, 0x4

    if-eqz v13, :cond_6

    or-int/lit16 v6, v6, 0x180

    move-wide/from16 v10, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v7, v0, 0x180

    move-wide/from16 v10, p2

    if-nez v7, :cond_8

    invoke-interface {v5, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x100

    goto :goto_4

    :cond_7
    const/16 v17, 0x80

    :goto_4
    or-int v6, v6, v17

    :cond_8
    :goto_5
    and-int/lit8 v17, v3, 0x8

    const/16 v18, 0x400

    const/16 v19, 0x800

    if-eqz v17, :cond_a

    or-int/lit16 v6, v6, 0xc00

    :cond_9
    move-object/from16 v7, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v7, v0, 0xc00

    if-nez v7, :cond_9

    move-object/from16 v7, p4

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    move/from16 v21, v19

    goto :goto_6

    :cond_b
    move/from16 v21, v18

    :goto_6
    or-int v6, v6, v21

    :goto_7
    and-int/lit8 v21, v3, 0x10

    const/16 v22, 0x2000

    const/16 v23, 0x4000

    if-eqz v21, :cond_c

    or-int/lit16 v6, v6, 0x6000

    move/from16 v25, v9

    move-wide/from16 v8, p5

    goto :goto_9

    :cond_c
    and-int/lit16 v14, v0, 0x6000

    move/from16 v25, v9

    move-wide/from16 v8, p5

    if-nez v14, :cond_e

    invoke-interface {v5, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v26

    if-eqz v26, :cond_d

    move/from16 v26, v23

    goto :goto_8

    :cond_d
    move/from16 v26, v22

    :goto_8
    or-int v6, v6, v26

    :cond_e
    :goto_9
    and-int/lit8 v26, v3, 0x20

    const/high16 v27, 0x10000

    const/high16 v28, 0x20000

    const/high16 v29, 0x30000

    if-eqz v26, :cond_f

    or-int v6, v6, v29

    move-object/from16 v14, p7

    goto :goto_b

    :cond_f
    and-int v30, v0, v29

    move-object/from16 v14, p7

    if-nez v30, :cond_11

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    move/from16 v31, v28

    goto :goto_a

    :cond_10
    move/from16 v31, v27

    :goto_a
    or-int v6, v6, v31

    :cond_11
    :goto_b
    and-int/lit8 v31, v3, 0x40

    const/high16 v32, 0x80000

    const/high16 v33, 0x100000

    const/high16 v34, 0x180000

    if-eqz v31, :cond_12

    or-int v6, v6, v34

    move-object/from16 v15, p8

    goto :goto_d

    :cond_12
    and-int v35, v0, v34

    move-object/from16 v15, p8

    if-nez v35, :cond_14

    invoke-interface {v5, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_13

    move/from16 v36, v33

    goto :goto_c

    :cond_13
    move/from16 v36, v32

    :goto_c
    or-int v6, v6, v36

    :cond_14
    :goto_d
    and-int/lit16 v4, v3, 0x80

    const/high16 v37, 0x400000

    const/high16 v38, 0x800000

    const/high16 v39, 0xc00000

    if-eqz v4, :cond_15

    or-int v6, v6, v39

    move-object/from16 v0, p9

    goto :goto_f

    :cond_15
    and-int v40, v0, v39

    move-object/from16 v0, p9

    if-nez v40, :cond_17

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_16

    move/from16 v40, v38

    goto :goto_e

    :cond_16
    move/from16 v40, v37

    :goto_e
    or-int v6, v6, v40

    :cond_17
    :goto_f
    and-int/lit16 v0, v3, 0x100

    const/high16 v40, 0x2000000

    const/high16 v41, 0x4000000

    const/high16 v42, 0x6000000

    if-eqz v0, :cond_19

    or-int v6, v6, v42

    :cond_18
    move/from16 v43, v6

    move-wide/from16 v6, p10

    goto :goto_11

    :cond_19
    and-int v43, p24, v42

    if-nez v43, :cond_18

    move/from16 v43, v6

    move-wide/from16 v6, p10

    invoke-interface {v5, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v44

    if-eqz v44, :cond_1a

    move/from16 v44, v41

    goto :goto_10

    :cond_1a
    move/from16 v44, v40

    :goto_10
    or-int v43, v43, v44

    :goto_11
    move/from16 v44, v0

    and-int/lit16 v0, v3, 0x200

    const/high16 v45, 0x30000000

    if-eqz v0, :cond_1b

    or-int v43, v43, v45

    move/from16 v45, v0

    :goto_12
    move/from16 v0, v43

    goto :goto_14

    :cond_1b
    and-int v45, p24, v45

    if-nez v45, :cond_1d

    move/from16 v45, v0

    move-object/from16 v0, p12

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1c

    const/high16 v46, 0x20000000

    goto :goto_13

    :cond_1c
    const/high16 v46, 0x10000000

    :goto_13
    or-int v43, v43, v46

    goto :goto_12

    :cond_1d
    move/from16 v45, v0

    move-object/from16 v0, p12

    goto :goto_12

    :goto_14
    move/from16 v43, v4

    and-int/lit16 v4, v3, 0x400

    if-eqz v4, :cond_1e

    or-int/lit8 v46, v2, 0x6

    move/from16 v47, v46

    move/from16 v46, v4

    move-object/from16 v4, p13

    goto :goto_16

    :cond_1e
    and-int/lit8 v46, v2, 0x6

    if-nez v46, :cond_20

    move/from16 v46, v4

    move-object/from16 v4, p13

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_1f

    const/16 v47, 0x4

    goto :goto_15

    :cond_1f
    const/16 v47, 0x2

    :goto_15
    or-int v47, v2, v47

    goto :goto_16

    :cond_20
    move/from16 v46, v4

    move-object/from16 v4, p13

    move/from16 v47, v2

    :goto_16
    and-int/lit16 v4, v3, 0x800

    if-eqz v4, :cond_22

    or-int/lit8 v47, v47, 0x30

    move-wide/from16 v6, p14

    :cond_21
    :goto_17
    move/from16 v16, v4

    move/from16 v4, v47

    goto :goto_19

    :cond_22
    and-int/lit8 v48, v2, 0x30

    move-wide/from16 v6, p14

    if-nez v48, :cond_21

    invoke-interface {v5, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v48

    if-eqz v48, :cond_23

    const/16 v16, 0x20

    goto :goto_18

    :cond_23
    const/16 v16, 0x10

    :goto_18
    or-int v47, v47, v16

    goto :goto_17

    :goto_19
    and-int/lit16 v6, v3, 0x1000

    if-eqz v6, :cond_25

    or-int/lit16 v4, v4, 0x180

    :cond_24
    move/from16 v7, p16

    goto :goto_1b

    :cond_25
    and-int/lit16 v7, v2, 0x180

    if-nez v7, :cond_24

    move/from16 v7, p16

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v20

    if-eqz v20, :cond_26

    const/16 v24, 0x100

    goto :goto_1a

    :cond_26
    const/16 v24, 0x80

    :goto_1a
    or-int v4, v4, v24

    :goto_1b
    move/from16 v20, v6

    and-int/lit16 v6, v3, 0x2000

    if-eqz v6, :cond_27

    or-int/lit16 v4, v4, 0xc00

    goto :goto_1c

    :cond_27
    move/from16 v24, v4

    and-int/lit16 v4, v2, 0xc00

    if-nez v4, :cond_29

    move/from16 v4, p17

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v35

    if-eqz v35, :cond_28

    move/from16 v18, v19

    :cond_28
    or-int v18, v24, v18

    move/from16 v4, v18

    goto :goto_1c

    :cond_29
    move/from16 v4, p17

    move/from16 v4, v24

    :goto_1c
    move/from16 v18, v6

    and-int/lit16 v6, v3, 0x4000

    if-eqz v6, :cond_2b

    or-int/lit16 v4, v4, 0x6000

    :cond_2a
    move/from16 v3, p18

    goto :goto_1d

    :cond_2b
    and-int/lit16 v3, v2, 0x6000

    if-nez v3, :cond_2a

    move/from16 v3, p18

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_2c

    move/from16 v22, v23

    :cond_2c
    or-int v4, v4, v22

    :goto_1d
    const v19, 0x8000

    and-int v19, p26, v19

    if-eqz v19, :cond_2d

    or-int v4, v4, v29

    move/from16 v2, p19

    goto :goto_1f

    :cond_2d
    and-int v22, v2, v29

    move/from16 v2, p19

    if-nez v22, :cond_2f

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v22

    if-eqz v22, :cond_2e

    move/from16 v22, v28

    goto :goto_1e

    :cond_2e
    move/from16 v22, v27

    :goto_1e
    or-int v4, v4, v22

    :cond_2f
    :goto_1f
    and-int v22, p26, v27

    if-eqz v22, :cond_30

    or-int v4, v4, v34

    move-object/from16 v2, p20

    goto :goto_20

    :cond_30
    and-int v23, p25, v34

    move-object/from16 v2, p20

    if-nez v23, :cond_32

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_31

    move/from16 v32, v33

    :cond_31
    or-int v4, v4, v32

    :cond_32
    :goto_20
    and-int v23, p26, v28

    if-eqz v23, :cond_33

    or-int v4, v4, v39

    move-object/from16 v2, p21

    goto :goto_21

    :cond_33
    and-int v24, p25, v39

    move-object/from16 v2, p21

    if-nez v24, :cond_35

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_34

    move/from16 v37, v38

    :cond_34
    or-int v4, v4, v37

    :cond_35
    :goto_21
    and-int v24, p25, v42

    const/high16 v27, 0x40000

    if-nez v24, :cond_37

    and-int v24, p26, v27

    move-object/from16 v2, p22

    if-nez v24, :cond_36

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_36

    move/from16 v40, v41

    :cond_36
    or-int v4, v4, v40

    goto :goto_22

    :cond_37
    move-object/from16 v2, p22

    :goto_22
    const v24, 0x12492493

    and-int v2, v0, v24

    const v3, 0x12492492

    move/from16 p23, v4

    const/16 v24, 0x1

    if-ne v2, v3, :cond_39

    const v2, 0x2492493

    and-int v2, p23, v2

    const v3, 0x2492492

    if-eq v2, v3, :cond_38

    goto :goto_23

    :cond_38
    const/4 v2, 0x0

    goto :goto_24

    :cond_39
    :goto_23
    move/from16 v2, v24

    :goto_24
    and-int/lit8 v3, v0, 0x1

    invoke-interface {v5, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, p24, 0x1

    const v3, -0xe000001

    if-eqz v2, :cond_3c

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_25

    :cond_3a
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int v2, p26, v27

    if-eqz v2, :cond_3b

    and-int v2, p23, v3

    move-object/from16 v13, p4

    move-object/from16 v45, p9

    move-wide/from16 v47, p10

    move-object/from16 v54, p12

    move-wide/from16 v59, p14

    move/from16 v16, p17

    move/from16 v6, p18

    move/from16 v18, p19

    move-object/from16 v19, p20

    move-object/from16 v3, p21

    move-object/from16 v37, p22

    move v4, v2

    move-wide/from16 v40, v8

    move-object/from16 v43, v14

    move-object/from16 v42, v15

    move-object/from16 v2, p13

    goto/16 :goto_32

    :cond_3b
    move-object/from16 v13, p4

    move-object/from16 v45, p9

    move-wide/from16 v47, p10

    move-object/from16 v54, p12

    move-object/from16 v2, p13

    move-wide/from16 v59, p14

    move/from16 v16, p17

    move/from16 v6, p18

    move/from16 v18, p19

    move-object/from16 v19, p20

    move-object/from16 v3, p21

    move-object/from16 v37, p22

    move/from16 v4, p23

    move-wide/from16 v40, v8

    move-object/from16 v43, v14

    move-object/from16 v42, v15

    goto/16 :goto_32

    :cond_3c
    :goto_25
    if-eqz v25, :cond_3d

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v12, v2

    :cond_3d
    if-eqz v13, :cond_3e

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v10

    :cond_3e
    const/4 v2, 0x0

    if-eqz v17, :cond_3f

    move-object v13, v2

    goto :goto_26

    :cond_3f
    move-object/from16 v13, p4

    :goto_26
    if-eqz v21, :cond_40

    sget-object v8, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v8

    :cond_40
    if-eqz v26, :cond_41

    move-object v14, v2

    :cond_41
    if-eqz v31, :cond_42

    move-object v15, v2

    :cond_42
    if-eqz v43, :cond_43

    move-object/from16 v17, v2

    goto :goto_27

    :cond_43
    move-object/from16 v17, p9

    :goto_27
    if-eqz v44, :cond_44

    sget-object v21, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v25

    goto :goto_28

    :cond_44
    move-wide/from16 v25, p10

    :goto_28
    if-eqz v45, :cond_45

    move-object/from16 v21, v2

    goto :goto_29

    :cond_45
    move-object/from16 v21, p12

    :goto_29
    if-eqz v46, :cond_46

    goto :goto_2a

    :cond_46
    move-object/from16 v2, p13

    :goto_2a
    if-eqz v16, :cond_47

    sget-object v16, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v28

    goto :goto_2b

    :cond_47
    move-wide/from16 v28, p14

    :goto_2b
    if-eqz v20, :cond_48

    sget-object v7, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v7

    :cond_48
    if-eqz v18, :cond_49

    move/from16 v16, v24

    goto :goto_2c

    :cond_49
    move/from16 v16, p17

    :goto_2c
    if-eqz v6, :cond_4a

    const v6, 0x7fffffff

    goto :goto_2d

    :cond_4a
    move/from16 v6, p18

    :goto_2d
    if-eqz v19, :cond_4b

    move/from16 v18, v24

    goto :goto_2e

    :cond_4b
    move/from16 v18, p19

    :goto_2e
    if-eqz v22, :cond_4c

    sget-object v19, Lmx2;->b:Lmx2;

    goto :goto_2f

    :cond_4c
    move-object/from16 v19, p20

    :goto_2f
    move/from16 v20, v3

    if-eqz v23, :cond_4e

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_4d

    new-instance v3, Lco;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lco;-><init>(I)V

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4d
    check-cast v3, Lnl3;

    goto :goto_30

    :cond_4e
    move-object/from16 v3, p21

    :goto_30
    and-int v4, p26, v27

    if-eqz v4, :cond_4f

    sget-object v4, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/TextStyle;

    and-int v20, p23, v20

    move-object/from16 v37, v4

    move-wide/from16 v40, v8

    move-object/from16 v43, v14

    move-object/from16 v42, v15

    move-object/from16 v45, v17

    move/from16 v4, v20

    :goto_31
    move-object/from16 v54, v21

    move-wide/from16 v47, v25

    move-wide/from16 v59, v28

    goto :goto_32

    :cond_4f
    move-object/from16 v37, p22

    move/from16 v4, p23

    move-wide/from16 v40, v8

    move-object/from16 v43, v14

    move-object/from16 v42, v15

    move-object/from16 v45, v17

    goto :goto_31

    :goto_32
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_50

    const-string v8, "androidx.compose.material3.Text (Text.kt:228)"

    const v9, 0x116b5779

    invoke-static {v9, v0, v4, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_50
    const v8, 0x63f3c35c

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-wide/16 v8, 0x10

    cmp-long v14, v10, v8

    if-eqz v14, :cond_51

    move-wide/from16 v38, v10

    goto :goto_34

    :cond_51
    const v14, 0x63f3c661

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-virtual/range {v37 .. v37}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v14

    cmp-long v8, v14, v8

    if-eqz v8, :cond_52

    goto :goto_33

    :cond_52
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v8

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v14

    :goto_33
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-wide/from16 v38, v14

    :goto_34
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v8, 0x0

    invoke-static {v5, v8}, Landroidx/compose/material3/TextKt;->rememberTextLinkStyles(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v9

    and-int/lit8 v14, v0, 0xe

    const/4 v15, 0x4

    if-ne v14, v15, :cond_53

    goto :goto_35

    :cond_53
    move/from16 v24, v8

    :goto_35
    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int v8, v24, v8

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v8, :cond_54

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v14, v8, :cond_55

    :cond_54
    invoke-static {v1, v9}, Landroidx/compose/material3/TextKt;->createTextWithLinkStyles(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextLinkStyles;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v14

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_55
    check-cast v14, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v2, :cond_56

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextAlign;->unbox-impl()I

    move-result v8

    :goto_36
    move/from16 v57, v8

    goto :goto_37

    :cond_56
    sget-object v8, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getUnspecified-e0LSkKk()I

    move-result v8

    goto :goto_36

    :goto_37
    const v67, 0xfd6f50

    const/16 v68, 0x0

    const/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const-wide/16 v52, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v58, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    invoke-static/range {v37 .. v68}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/TextMotion;ILjava/lang/Object;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v8

    and-int/lit8 v9, v0, 0x70

    shr-int/lit8 v15, v4, 0xc

    and-int/lit16 v15, v15, 0x1c00

    or-int/2addr v9, v15

    shl-int/lit8 v4, v4, 0x6

    const v15, 0xe000

    and-int/2addr v15, v4

    or-int/2addr v9, v15

    const/high16 v15, 0x70000

    and-int/2addr v15, v4

    or-int/2addr v9, v15

    const/high16 v15, 0x380000

    and-int/2addr v15, v4

    or-int/2addr v9, v15

    const/high16 v15, 0x1c00000

    and-int/2addr v15, v4

    or-int/2addr v9, v15

    const/high16 v15, 0xe000000

    and-int/2addr v4, v15

    or-int/2addr v4, v9

    shr-int/lit8 v0, v0, 0x9

    and-int/lit8 v0, v0, 0xe

    const/16 v9, 0x200

    const/4 v15, 0x0

    move/from16 p14, v0

    move-object/from16 p4, v3

    move/from16 p13, v4

    move-object/from16 p12, v5

    move/from16 p7, v6

    move/from16 p5, v7

    move-object/from16 p3, v8

    move/from16 p15, v9

    move-object/from16 p2, v12

    move-object/from16 p11, v13

    move-object/from16 p1, v14

    move-object/from16 p10, v15

    move/from16 p6, v16

    move/from16 p8, v18

    move-object/from16 p9, v19

    invoke-static/range {p1 .. p15}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-CL7eQgs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lnl3;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v0, p12

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_57
    move-object v14, v2

    move-object/from16 v22, v3

    move/from16 v17, v7

    move-wide v3, v10

    move-object v2, v12

    move-object v5, v13

    move/from16 v20, v18

    move-object/from16 v21, v19

    move-object/from16 v23, v37

    move-object/from16 v9, v42

    move-object/from16 v8, v43

    move-object/from16 v10, v45

    move-wide/from16 v11, v47

    move-object/from16 v13, v54

    move/from16 v19, v6

    move/from16 v18, v16

    move-wide/from16 v6, v40

    move-wide/from16 v15, v59

    goto :goto_38

    :cond_58
    move-object v0, v5

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v5, p4

    move-object/from16 v13, p12

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move/from16 v17, v7

    move-wide v6, v8

    move-wide v3, v10

    move-object v2, v12

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    move-object/from16 v14, p13

    move-wide/from16 v15, p14

    :goto_38
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_59

    move-object/from16 v24, v0

    new-instance v0, Lms8;

    move/from16 v25, p25

    move/from16 v26, p26

    move-object/from16 v69, v24

    move/from16 v24, p24

    invoke-direct/range {v0 .. v26}, Lms8;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;III)V

    move-object v1, v0

    move-object/from16 v0, v69

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_59
    return-void
.end method

.method public static final synthetic Text-fLXpl1I(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILnl3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V
    .locals 43
    .annotation runtime Lul2;
    .end annotation

    move/from16 v0, p21

    move/from16 v1, p22

    move/from16 v2, p23

    const v3, 0x7559451d

    move-object/from16 v4, p20

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

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v13, v2, 0x4

    if-eqz v13, :cond_6

    or-int/lit16 v8, v8, 0x180

    move-wide/from16 v10, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v0, 0x180

    move-wide/from16 v10, p2

    if-nez v6, :cond_8

    invoke-interface {v4, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x100

    goto :goto_4

    :cond_7
    const/16 v17, 0x80

    :goto_4
    or-int v8, v8, v17

    :cond_8
    :goto_5
    and-int/lit8 v17, v2, 0x8

    const/16 v18, 0x400

    const/16 v19, 0x800

    if-eqz v17, :cond_9

    or-int/lit16 v8, v8, 0xc00

    move-wide/from16 v14, p4

    goto :goto_7

    :cond_9
    and-int/lit16 v6, v0, 0xc00

    move-wide/from16 v14, p4

    if-nez v6, :cond_b

    invoke-interface {v4, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v22

    if-eqz v22, :cond_a

    move/from16 v22, v19

    goto :goto_6

    :cond_a
    move/from16 v22, v18

    :goto_6
    or-int v8, v8, v22

    :cond_b
    :goto_7
    and-int/lit8 v22, v2, 0x10

    const/16 v23, 0x2000

    const/16 v24, 0x4000

    if-eqz v22, :cond_d

    or-int/lit16 v8, v8, 0x6000

    :cond_c
    move-object/from16 v6, p6

    goto :goto_9

    :cond_d
    and-int/lit16 v6, v0, 0x6000

    if-nez v6, :cond_c

    move-object/from16 v6, p6

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    move/from16 v26, v24

    goto :goto_8

    :cond_e
    move/from16 v26, v23

    :goto_8
    or-int v8, v8, v26

    :goto_9
    and-int/lit8 v26, v2, 0x20

    const/high16 v27, 0x10000

    const/high16 v28, 0x20000

    const/high16 v29, 0x30000

    if-eqz v26, :cond_f

    or-int v8, v8, v29

    move-object/from16 v3, p7

    goto :goto_b

    :cond_f
    and-int v30, v0, v29

    move-object/from16 v3, p7

    if-nez v30, :cond_11

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    move/from16 v31, v28

    goto :goto_a

    :cond_10
    move/from16 v31, v27

    :goto_a
    or-int v8, v8, v31

    :cond_11
    :goto_b
    and-int/lit8 v31, v2, 0x40

    const/high16 v32, 0x180000

    if-eqz v31, :cond_12

    or-int v8, v8, v32

    move-object/from16 v7, p8

    goto :goto_d

    :cond_12
    and-int v32, v0, v32

    move-object/from16 v7, p8

    if-nez v32, :cond_14

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_13

    const/high16 v33, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v33, 0x80000

    :goto_c
    or-int v8, v8, v33

    :cond_14
    :goto_d
    and-int/lit16 v0, v2, 0x80

    const/high16 v33, 0xc00000

    if-eqz v0, :cond_15

    or-int v8, v8, v33

    move-wide/from16 v5, p9

    goto :goto_f

    :cond_15
    and-int v33, p21, v33

    move-wide/from16 v5, p9

    if-nez v33, :cond_17

    invoke-interface {v4, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v33

    if-eqz v33, :cond_16

    const/high16 v33, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v33, 0x400000

    :goto_e
    or-int v8, v8, v33

    :cond_17
    :goto_f
    move/from16 v33, v0

    and-int/lit16 v0, v2, 0x100

    const/high16 v34, 0x6000000

    if-eqz v0, :cond_19

    or-int v8, v8, v34

    :cond_18
    move/from16 v34, v0

    move-object/from16 v0, p11

    goto :goto_11

    :cond_19
    and-int v34, p21, v34

    if-nez v34, :cond_18

    move/from16 v34, v0

    move-object/from16 v0, p11

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1a

    const/high16 v35, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v35, 0x2000000

    :goto_10
    or-int v8, v8, v35

    :goto_11
    and-int/lit16 v0, v2, 0x200

    const/high16 v35, 0x30000000

    if-eqz v0, :cond_1c

    or-int v8, v8, v35

    :cond_1b
    move/from16 v35, v0

    move-object/from16 v0, p12

    goto :goto_13

    :cond_1c
    and-int v35, p21, v35

    if-nez v35, :cond_1b

    move/from16 v35, v0

    move-object/from16 v0, p12

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1d

    const/high16 v36, 0x20000000

    goto :goto_12

    :cond_1d
    const/high16 v36, 0x10000000

    :goto_12
    or-int v8, v8, v36

    :goto_13
    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_1e

    or-int/lit8 v36, v1, 0x6

    move-wide/from16 v5, p13

    goto :goto_15

    :cond_1e
    and-int/lit8 v36, v1, 0x6

    move-wide/from16 v5, p13

    if-nez v36, :cond_20

    invoke-interface {v4, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v36

    if-eqz v36, :cond_1f

    const/16 v36, 0x4

    goto :goto_14

    :cond_1f
    const/16 v36, 0x2

    :goto_14
    or-int v36, v1, v36

    goto :goto_15

    :cond_20
    move/from16 v36, v1

    :goto_15
    move/from16 p20, v0

    and-int/lit16 v0, v2, 0x800

    if-eqz v0, :cond_21

    or-int/lit8 v36, v36, 0x30

    move/from16 v37, v0

    :goto_16
    move/from16 v0, v36

    goto :goto_18

    :cond_21
    and-int/lit8 v37, v1, 0x30

    if-nez v37, :cond_23

    move/from16 v37, v0

    move/from16 v0, p15

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v38

    if-eqz v38, :cond_22

    const/16 v16, 0x20

    goto :goto_17

    :cond_22
    const/16 v16, 0x10

    :goto_17
    or-int v36, v36, v16

    goto :goto_16

    :cond_23
    move/from16 v37, v0

    move/from16 v0, p15

    goto :goto_16

    :goto_18
    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_24

    or-int/lit16 v0, v0, 0x180

    goto :goto_1b

    :cond_24
    move/from16 v16, v0

    and-int/lit16 v0, v1, 0x180

    if-nez v0, :cond_26

    move/from16 v0, p16

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v20

    if-eqz v20, :cond_25

    const/16 v25, 0x100

    goto :goto_19

    :cond_25
    const/16 v25, 0x80

    :goto_19
    or-int v16, v16, v25

    :goto_1a
    move/from16 v0, v16

    goto :goto_1b

    :cond_26
    move/from16 v0, p16

    goto :goto_1a

    :goto_1b
    move/from16 v16, v3

    and-int/lit16 v3, v2, 0x2000

    if-eqz v3, :cond_27

    or-int/lit16 v0, v0, 0xc00

    goto :goto_1c

    :cond_27
    move/from16 v20, v0

    and-int/lit16 v0, v1, 0xc00

    if-nez v0, :cond_29

    move/from16 v0, p17

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v21

    if-eqz v21, :cond_28

    move/from16 v18, v19

    :cond_28
    or-int v18, v20, v18

    move/from16 v0, v18

    goto :goto_1c

    :cond_29
    move/from16 v0, p17

    move/from16 v0, v20

    :goto_1c
    move/from16 v18, v3

    and-int/lit16 v3, v2, 0x4000

    if-eqz v3, :cond_2b

    or-int/lit16 v0, v0, 0x6000

    move/from16 v19, v0

    :cond_2a
    move-object/from16 v0, p18

    goto :goto_1d

    :cond_2b
    move/from16 v19, v0

    and-int/lit16 v0, v1, 0x6000

    if-nez v0, :cond_2a

    move-object/from16 v0, p18

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2c

    move/from16 v23, v24

    :cond_2c
    or-int v19, v19, v23

    :goto_1d
    and-int v20, v1, v29

    const v21, 0x8000

    if-nez v20, :cond_2e

    and-int v20, v2, v21

    move-object/from16 v0, p19

    if-nez v20, :cond_2d

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2d

    move/from16 v27, v28

    :cond_2d
    or-int v19, v19, v27

    goto :goto_1e

    :cond_2e
    move-object/from16 v0, p19

    :goto_1e
    const v20, 0x12492493

    and-int v0, v8, v20

    const v1, 0x12492492

    const/16 v20, 0x1

    if-ne v0, v1, :cond_30

    const v0, 0x12493

    and-int v0, v19, v0

    const v1, 0x12492

    if-eq v0, v1, :cond_2f

    goto :goto_1f

    :cond_2f
    const/4 v0, 0x0

    goto :goto_20

    :cond_30
    :goto_1f
    move/from16 v0, v20

    :goto_20
    and-int/lit8 v1, v8, 0x1

    invoke-interface {v4, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, p21, 0x1

    const v1, -0x70001

    if-eqz v0, :cond_33

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_21

    :cond_31
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int v0, v2, v21

    if-eqz v0, :cond_32

    and-int v19, v19, v1

    :cond_32
    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move/from16 v20, p15

    move/from16 v21, p16

    move/from16 v22, p17

    move-object/from16 v24, p18

    move-object/from16 v25, p19

    move-object v13, v7

    move/from16 v0, v19

    move-wide/from16 v18, v5

    move-wide v6, v10

    move-object v5, v12

    move-wide v9, v14

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-wide/from16 v14, p9

    goto/16 :goto_2e

    :cond_33
    :goto_21
    if-eqz v9, :cond_34

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v12, v0

    :cond_34
    if-eqz v13, :cond_35

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v9

    goto :goto_22

    :cond_35
    move-wide v9, v10

    :goto_22
    if-eqz v17, :cond_36

    sget-object v0, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v13

    goto :goto_23

    :cond_36
    move-wide v13, v14

    :goto_23
    const/4 v0, 0x0

    if-eqz v22, :cond_37

    move-object v11, v0

    goto :goto_24

    :cond_37
    move-object/from16 v11, p6

    :goto_24
    if-eqz v26, :cond_38

    move-object v15, v0

    goto :goto_25

    :cond_38
    move-object/from16 v15, p7

    :goto_25
    if-eqz v31, :cond_39

    move-object v7, v0

    :cond_39
    if-eqz v33, :cond_3a

    sget-object v17, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v22

    goto :goto_26

    :cond_3a
    move-wide/from16 v22, p9

    :goto_26
    if-eqz v34, :cond_3b

    move-object/from16 v17, v0

    goto :goto_27

    :cond_3b
    move-object/from16 v17, p11

    :goto_27
    if-eqz v35, :cond_3c

    goto :goto_28

    :cond_3c
    move-object/from16 v0, p12

    :goto_28
    if-eqz p20, :cond_3d

    sget-object v5, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v5

    :cond_3d
    if-eqz v37, :cond_3e

    sget-object v24, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v24

    goto :goto_29

    :cond_3e
    move/from16 v24, p15

    :goto_29
    if-eqz v16, :cond_3f

    goto :goto_2a

    :cond_3f
    move/from16 v20, p16

    :goto_2a
    if-eqz v18, :cond_40

    const v16, 0x7fffffff

    goto :goto_2b

    :cond_40
    move/from16 v16, p17

    :goto_2b
    if-eqz v3, :cond_42

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p20, v1

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_41

    new-instance v3, Lh04;

    const/4 v1, 0x4

    invoke-direct {v3, v1}, Lh04;-><init>(I)V

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_41
    move-object v1, v3

    check-cast v1, Lnl3;

    goto :goto_2c

    :cond_42
    move/from16 p20, v1

    move-object/from16 v1, p18

    :goto_2c
    and-int v3, v2, v21

    if-eqz v3, :cond_43

    sget-object v3, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/TextStyle;

    and-int v19, v19, p20

    move-object/from16 v25, v3

    :goto_2d
    move/from16 v21, v20

    move/from16 v20, v24

    move-object/from16 v24, v1

    move-object/from16 v40, v17

    move-object/from16 v17, v0

    move/from16 v0, v19

    move-wide/from16 v18, v5

    move-object v5, v12

    move-object v12, v15

    move-wide/from16 v41, v13

    move-object v13, v7

    move-wide v6, v9

    move-wide/from16 v9, v41

    move-wide/from16 v14, v22

    move/from16 v22, v16

    move-object/from16 v16, v40

    goto :goto_2e

    :cond_43
    move-object/from16 v25, p19

    goto :goto_2d

    :goto_2e
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "androidx.compose.material3.Text (Text.kt:373)"

    const v3, 0x7559451d

    invoke-static {v3, v8, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_44
    and-int/lit16 v1, v8, 0x3fe

    shl-int/lit8 v3, v8, 0x3

    const v23, 0xe000

    and-int v26, v3, v23

    or-int v1, v1, v26

    const/high16 v26, 0x70000

    and-int v26, v3, v26

    or-int v1, v1, v26

    const/high16 v26, 0x380000

    and-int v27, v3, v26

    or-int v1, v1, v27

    const/high16 v27, 0x1c00000

    and-int v28, v3, v27

    or-int v1, v1, v28

    const/high16 v28, 0xe000000

    and-int v28, v3, v28

    or-int v1, v1, v28

    const/high16 v28, 0x70000000

    and-int v3, v3, v28

    or-int/2addr v1, v3

    shr-int/lit8 v3, v8, 0x1b

    and-int/lit8 v3, v3, 0xe

    or-int v3, v3, v29

    shl-int/lit8 v8, v0, 0x3

    and-int/lit8 v28, v8, 0x70

    or-int v3, v3, v28

    move/from16 v28, v0

    and-int/lit16 v0, v8, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v3, v8, 0x1c00

    or-int/2addr v0, v3

    and-int v3, v8, v23

    or-int/2addr v0, v3

    shl-int/lit8 v3, v28, 0x6

    and-int v8, v3, v26

    or-int/2addr v0, v8

    and-int v3, v3, v27

    or-int v28, v0, v3

    const/16 v29, 0x8

    const/4 v8, 0x0

    const/16 v23, 0x1

    move/from16 v27, v1

    move-object/from16 v26, v4

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v29}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILnl3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_45
    move-wide v3, v6

    move-object v7, v11

    move-object v8, v12

    move-object v12, v5

    move-wide v5, v9

    move-object v9, v13

    move-wide v10, v14

    move-object/from16 v13, v17

    move-wide/from16 v14, v18

    move/from16 v17, v21

    move/from16 v18, v22

    move-object/from16 v19, v24

    goto :goto_2f

    :cond_46
    move-object/from16 v26, v4

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-wide v3, v14

    move-wide v14, v5

    move-wide v5, v3

    move-object/from16 v8, p7

    move-object/from16 v16, p11

    move-object/from16 v13, p12

    move/from16 v20, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v25, p19

    move-object v9, v7

    move-wide v3, v10

    move-object/from16 v7, p6

    move-wide/from16 v10, p9

    :goto_2f
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_47

    move-object v1, v0

    new-instance v0, Lns8;

    move/from16 v21, p21

    move/from16 v22, p22

    move-object/from16 v39, v1

    move/from16 v23, v2

    move-object v2, v12

    move-object/from16 v12, v16

    move/from16 v16, v20

    move-object/from16 v20, v25

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v23}, Lns8;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILnl3;Landroidx/compose/ui/text/TextStyle;III)V

    move-object/from16 v1, v39

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_47
    return-void
.end method

.method private static final Text_IbK3jfQ$lambda$11$lambda$10(Landroidx/compose/ui/text/TextLayoutResult;)Lj59;
    .locals 0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Text_IbK3jfQ$lambda$12(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 27

    or-int/lit8 v0, p22, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v24

    invoke-static/range {p23 .. p23}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-wide/from16 v14, p13

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move/from16 v26, p24

    move-object/from16 v23, p25

    invoke-static/range {v1 .. v26}, Landroidx/compose/material3/TextKt;->Text-IbK3jfQ(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final Text_Nvy7gAk$lambda$2(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 27

    or-int/lit8 v0, p22, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v24

    invoke-static/range {p23 .. p23}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-wide/from16 v15, p14

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move/from16 v26, p24

    move-object/from16 v23, p25

    invoke-static/range {v1 .. v26}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILnl3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final Text_Z58ophY$lambda$4$lambda$3(Landroidx/compose/ui/text/TextLayoutResult;)Lj59;
    .locals 0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Text_Z58ophY$lambda$8(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 28

    or-int/lit8 v0, p23, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v25

    invoke-static/range {p24 .. p24}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-wide/from16 v15, p14

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move/from16 v27, p25

    move-object/from16 v24, p26

    invoke-static/range {v1 .. v27}, Landroidx/compose/material3/TextKt;->Text-Z58ophY(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final Text__4IGK_g$lambda$17$lambda$16(Landroidx/compose/ui/text/TextLayoutResult;)Lj59;
    .locals 0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Text__4IGK_g$lambda$18(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 26

    or-int/lit8 v0, p21, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v23

    invoke-static/range {p22 .. p22}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-wide/from16 v14, p13

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move/from16 v25, p23

    move-object/from16 v22, p24

    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final Text__4IGK_g$lambda$9(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 26

    or-int/lit8 v0, p21, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v23

    invoke-static/range {p22 .. p22}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-wide/from16 v14, p13

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move/from16 v25, p23

    move-object/from16 v22, p24

    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILnl3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final Text_fLXpl1I$lambda$14$lambda$13(Landroidx/compose/ui/text/TextLayoutResult;)Lj59;
    .locals 0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Text_fLXpl1I$lambda$15(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 25

    or-int/lit8 v0, p20, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v22

    invoke-static/range {p21 .. p21}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-wide/from16 v14, p13

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move/from16 v24, p22

    move-object/from16 v21, p23

    invoke-static/range {v1 .. v24}, Landroidx/compose/material3/TextKt;->Text-fLXpl1I(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILnl3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method public static synthetic a(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p27}, Landroidx/compose/material3/TextKt;->Text_Z58ophY$lambda$8(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p26}, Landroidx/compose/material3/TextKt;->Text_IbK3jfQ$lambda$12(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Landroidx/compose/ui/text/TextStyle;
    .locals 1

    invoke-static {}, Landroidx/compose/material3/TextKt;->LocalTextStyle$lambda$19()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    return-object v0
.end method

.method private static final createTextWithLinkStyles(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextLinkStyles;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 2

    new-instance v0, Lwf3;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lwf3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/AnnotatedString;->mapAnnotations(Lnl3;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    return-object p0
.end method

.method private static final createTextWithLinkStyles$lambda$21(Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/AnnotatedString$Range;)Landroidx/compose/ui/text/AnnotatedString$Range;
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Annotation;

    instance-of v1, v0, Landroidx/compose/ui/text/LinkAnnotation$Url;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/text/LinkAnnotation$Url;

    invoke-virtual {v2}, Landroidx/compose/ui/text/LinkAnnotation$Url;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/text/LinkAnnotation$Url;->copy$default(Landroidx/compose/ui/text/LinkAnnotation$Url;Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;ILjava/lang/Object;)Landroidx/compose/ui/text/LinkAnnotation$Url;

    move-result-object v9

    const/16 v13, 0xe

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    invoke-static/range {v8 .. v14}, Landroidx/compose/ui/text/AnnotatedString$Range;->copy$default(Landroidx/compose/ui/text/AnnotatedString$Range;Ljava/lang/Object;IILjava/lang/String;ILjava/lang/Object;)Landroidx/compose/ui/text/AnnotatedString$Range;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v1, v0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    invoke-virtual {v0}, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->copy$default(Landroidx/compose/ui/text/LinkAnnotation$Clickable;Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;ILjava/lang/Object;)Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    move-result-object v2

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/text/AnnotatedString$Range;->copy$default(Landroidx/compose/ui/text/AnnotatedString$Range;Ljava/lang/Object;IILjava/lang/String;ILjava/lang/Object;)Landroidx/compose/ui/text/AnnotatedString$Range;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static synthetic d(Landroidx/compose/ui/text/TextStyle;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/TextKt;->ProvideTextStyle$lambda$20(Landroidx/compose/ui/text/TextStyle;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/compose/ui/text/TextLayoutResult;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/TextKt;->Text__4IGK_g$lambda$17$lambda$16(Landroidx/compose/ui/text/TextLayoutResult;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p25}, Landroidx/compose/material3/TextKt;->Text__4IGK_g$lambda$18(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILjava/util/Map;Lnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/AnnotatedString$Range;)Landroidx/compose/ui/text/AnnotatedString$Range;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/TextKt;->createTextWithLinkStyles$lambda$21(Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/AnnotatedString$Range;)Landroidx/compose/ui/text/AnnotatedString$Range;

    move-result-object p0

    return-object p0
.end method

.method public static final getLocalTextStyle()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/ui/text/TextStyle;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static synthetic h(Landroidx/compose/ui/text/TextLayoutResult;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/TextKt;->Text_IbK3jfQ$lambda$11$lambda$10(Landroidx/compose/ui/text/TextLayoutResult;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p26}, Landroidx/compose/material3/TextKt;->Text_Nvy7gAk$lambda$2(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p24}, Landroidx/compose/material3/TextKt;->Text_fLXpl1I$lambda$15(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p25}, Landroidx/compose/material3/TextKt;->Text__4IGK_g$lambda$9(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroidx/compose/ui/text/TextLayoutResult;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/TextKt;->Text_Z58ophY$lambda$4$lambda$3(Landroidx/compose/ui/text/TextLayoutResult;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Landroidx/compose/ui/text/TextLayoutResult;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/TextKt;->Text_fLXpl1I$lambda$14$lambda$13(Landroidx/compose/ui/text/TextLayoutResult;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final rememberTextLinkStyles(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/text/TextLinkStyles;
    .locals 25

    move-object/from16 v0, p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.rememberTextLinkStyles (Text.kt:481)"

    const v3, 0x425c0efb

    move/from16 v4, p1

    invoke-static {v3, v4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_2

    :cond_1
    new-instance v1, Landroidx/compose/ui/text/TextLinkStyles;

    new-instance v2, Landroidx/compose/ui/text/SpanStyle;

    sget-object v5, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getUnderline()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v19

    const v23, 0xeffe

    const/16 v24, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v2 .. v24}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILjh2;)V

    const/16 v10, 0xe

    move-object v5, v1

    move-object v6, v2

    invoke-direct/range {v5 .. v11}, Landroidx/compose/ui/text/TextLinkStyles;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;ILjh2;)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v2, v5

    :cond_2
    check-cast v2, Landroidx/compose/ui/text/TextLinkStyles;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    return-object v2
.end method
