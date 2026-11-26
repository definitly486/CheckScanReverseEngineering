.class public abstract Landroidx/compose/material3/ExposedDropdownMenuBoxScope;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;-><init>()V

    return-void
.end method

.method private static final ExposedDropdownMenu$lambda$9(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 10

    or-int/lit8 v0, p6, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v9, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v1 .. v9}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->ExposedDropdownMenu(ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ldm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ExposedDropdownMenu_kbRbctU$lambda$8(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 19

    or-int/lit8 v0, p14, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v16

    invoke-static/range {p15 .. p15}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v18, p16

    move-object/from16 v15, p17

    invoke-virtual/range {v1 .. v18}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->ExposedDropdownMenu-kbRbctU(ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final ExposedDropdownMenu_vNxi1II$lambda$2$lambda$1(Landroidx/compose/runtime/MutableState;)Lj59;
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static final ExposedDropdownMenu_vNxi1II$lambda$6$lambda$5(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/unit/IntRect;)Lj59;
    .locals 0

    invoke-static {p1, p2}, Landroidx/compose/material3/MenuKt;->calculateTransformOrigin(Landroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/unit/IntRect;)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/TransformOrigin;->box-impl(J)Landroidx/compose/ui/graphics/TransformOrigin;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ExposedDropdownMenu_vNxi1II$lambda$7(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 18

    or-int/lit8 v0, p13, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    invoke-static/range {p14 .. p14}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v17, p15

    move-object/from16 v14, p16

    invoke-virtual/range {v1 .. v17}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->ExposedDropdownMenu-vNxi1II(ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method public static synthetic a(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p9}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->ExposedDropdownMenu$lambda$9(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p18}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->ExposedDropdownMenu_kbRbctU$lambda$8(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/runtime/MutableState;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->ExposedDropdownMenu_vNxi1II$lambda$2$lambda$1(Landroidx/compose/runtime/MutableState;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p17}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->ExposedDropdownMenu_vNxi1II$lambda$7(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/unit/IntRect;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->ExposedDropdownMenu_vNxi1II$lambda$6$lambda$5(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/unit/IntRect;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic exposedDropdownSize$default(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;Landroidx/compose/ui/Modifier;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    if-nez p4, :cond_1

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->exposedDropdownSize(Landroidx/compose/ui/Modifier;Z)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: exposedDropdownSize"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic menuAnchor-2Hz36ac$default(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->menuAnchor-2Hz36ac(Landroidx/compose/ui/Modifier;Ljava/lang/String;Z)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: menuAnchor-2Hz36ac"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final synthetic ExposedDropdownMenu(ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ldm3;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .annotation runtime Lul2;
    .end annotation

    move/from16 v7, p7

    const v0, -0x597e1f51

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v7, 0x6

    move/from16 v9, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v7, 0x6

    move/from16 v9, p1

    if-nez v2, :cond_2

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v7

    goto :goto_1

    :cond_2
    move v2, v7

    :goto_1
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v10, p2

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v7, 0x30

    move-object/from16 v10, p2

    if-nez v3, :cond_5

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit8 v3, p8, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v2, v2, 0x180

    :cond_6
    move-object/from16 v4, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v4, v7, 0x180

    if-nez v4, :cond_6

    move-object/from16 v4, p3

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x100

    goto :goto_4

    :cond_8
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v2, v5

    :goto_5
    and-int/lit16 v5, v7, 0xc00

    if-nez v5, :cond_b

    and-int/lit8 v5, p8, 0x8

    if-nez v5, :cond_9

    move-object/from16 v5, p4

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v5, p4

    :cond_a
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v2, v6

    goto :goto_7

    :cond_b
    move-object/from16 v5, p4

    :goto_7
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_d

    or-int/lit16 v2, v2, 0x6000

    :cond_c
    move-object/from16 v6, p5

    goto :goto_9

    :cond_d
    and-int/lit16 v6, v7, 0x6000

    if-nez v6, :cond_c

    move-object/from16 v6, p5

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/16 v8, 0x4000

    goto :goto_8

    :cond_e
    const/16 v8, 0x2000

    :goto_8
    or-int/2addr v2, v8

    :goto_9
    and-int/lit8 v8, p8, 0x20

    const/high16 v11, 0x30000

    if-eqz v8, :cond_10

    or-int/2addr v2, v11

    :cond_f
    move-object/from16 v8, p0

    goto :goto_b

    :cond_10
    and-int v8, v7, v11

    if-nez v8, :cond_f

    move-object/from16 v8, p0

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    const/high16 v11, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v11, 0x10000

    :goto_a
    or-int/2addr v2, v11

    :goto_b
    const v11, 0x12493

    and-int/2addr v11, v2

    const v12, 0x12492

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v11, v12, :cond_12

    move v11, v14

    goto :goto_c

    :cond_12
    move v11, v13

    :goto_c
    and-int/lit8 v12, v2, 0x1

    invoke-interface {v1, v11, v12}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v11, v7, 0x1

    if-eqz v11, :cond_15

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v11

    if-eqz v11, :cond_13

    goto :goto_e

    :cond_13
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_14

    and-int/lit16 v2, v2, -0x1c01

    :cond_14
    move-object v11, v4

    :goto_d
    move-object v12, v5

    goto :goto_10

    :cond_15
    :goto_e
    if-eqz v3, :cond_16

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_f

    :cond_16
    move-object v3, v4

    :goto_f
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_17

    invoke-static {v13, v1, v13, v14}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v4

    and-int/lit16 v2, v2, -0x1c01

    move-object v11, v3

    move-object v12, v4

    goto :goto_10

    :cond_17
    move-object v11, v3

    goto :goto_d

    :goto_10
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, -0x1

    const-string v4, "androidx.compose.material3.ExposedDropdownMenuBoxScope.ExposedDropdownMenu (ExposedDropdownMenu.kt:430)"

    invoke-static {v0, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_18
    sget-object v0, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v3}, Landroidx/compose/material3/MenuDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v15

    invoke-virtual {v0, v1, v3}, Landroidx/compose/material3/MenuDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v16

    invoke-virtual {v0}, Landroidx/compose/material3/MenuDefaults;->getTonalElevation-D9Ej5fM()F

    move-result v18

    invoke-virtual {v0}, Landroidx/compose/material3/MenuDefaults;->getShadowElevation-D9Ej5fM()F

    move-result v19

    and-int/lit8 v0, v2, 0xe

    const/high16 v4, 0x36030000

    or-int/2addr v0, v4

    and-int/lit8 v4, v2, 0x70

    or-int/2addr v0, v4

    and-int/lit16 v4, v2, 0x380

    or-int/2addr v0, v4

    and-int/lit16 v4, v2, 0x1c00

    or-int v23, v0, v4

    shr-int/lit8 v0, v2, 0x9

    and-int/lit8 v2, v0, 0x70

    or-int/2addr v2, v3

    and-int/lit16 v0, v0, 0x380

    or-int v24, v2, v0

    const/16 v25, 0x10

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v20, 0x0

    move-object/from16 v22, v1

    move-object/from16 v21, v6

    invoke-virtual/range {v8 .. v25}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->ExposedDropdownMenu-kbRbctU(ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_19
    move-object v4, v11

    move-object v5, v12

    goto :goto_11

    :cond_1a
    move-object/from16 v22, v1

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :goto_11
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_1b

    new-instance v0, Ly33;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Ly33;-><init>(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ldm3;II)V

    invoke-interface {v9, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_1b
    return-void
.end method

.method public final ExposedDropdownMenu-kbRbctU(ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;Landroidx/compose/runtime/Composer;III)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/ScrollState;",
            "ZZ",
            "Landroidx/compose/ui/graphics/Shape;",
            "JFF",
            "Landroidx/compose/foundation/BorderStroke;",
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

    .annotation runtime Lul2;
    .end annotation

    move/from16 v15, p15

    move/from16 v0, p16

    move/from16 v1, p17

    const v2, -0x69aadd9f

    move-object/from16 v3, p14

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v4, v15, 0x6

    move v7, v4

    move/from16 v4, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v15, 0x6

    if-nez v4, :cond_2

    move/from16 v4, p1

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v15

    goto :goto_1

    :cond_2
    move/from16 v4, p1

    move v7, v15

    :goto_1
    and-int/lit8 v8, v1, 0x2

    if-eqz v8, :cond_4

    or-int/lit8 v7, v7, 0x30

    :cond_3
    move-object/from16 v8, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v8, v15, 0x30

    if-nez v8, :cond_3

    move-object/from16 v8, p2

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v11, 0x20

    goto :goto_2

    :cond_5
    const/16 v11, 0x10

    :goto_2
    or-int/2addr v7, v11

    :goto_3
    and-int/lit8 v11, v1, 0x4

    if-eqz v11, :cond_7

    or-int/lit16 v7, v7, 0x180

    :cond_6
    move-object/from16 v14, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v14, v15, 0x180

    if-nez v14, :cond_6

    move-object/from16 v14, p3

    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    const/16 v16, 0x80

    :goto_4
    or-int v7, v7, v16

    :goto_5
    and-int/lit16 v5, v15, 0xc00

    if-nez v5, :cond_b

    and-int/lit8 v5, v1, 0x8

    if-nez v5, :cond_9

    move-object/from16 v5, p4

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/16 v16, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v5, p4

    :cond_a
    const/16 v16, 0x400

    :goto_6
    or-int v7, v7, v16

    goto :goto_7

    :cond_b
    move-object/from16 v5, p4

    :goto_7
    and-int/lit8 v16, v1, 0x20

    const/high16 v17, 0x30000

    if-eqz v16, :cond_c

    or-int v7, v7, v17

    move/from16 v6, p6

    goto :goto_9

    :cond_c
    and-int v17, v15, v17

    move/from16 v6, p6

    if-nez v17, :cond_e

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_d

    const/high16 v18, 0x20000

    goto :goto_8

    :cond_d
    const/high16 v18, 0x10000

    :goto_8
    or-int v7, v7, v18

    :cond_e
    :goto_9
    const/high16 v18, 0x180000

    and-int v18, v15, v18

    if-nez v18, :cond_10

    and-int/lit8 v18, v1, 0x40

    move-object/from16 v9, p7

    if-nez v18, :cond_f

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    const/high16 v19, 0x100000

    goto :goto_a

    :cond_f
    const/high16 v19, 0x80000

    :goto_a
    or-int v7, v7, v19

    goto :goto_b

    :cond_10
    move-object/from16 v9, p7

    :goto_b
    const/high16 v19, 0xc00000

    and-int v19, v15, v19

    if-nez v19, :cond_12

    and-int/lit16 v10, v1, 0x80

    move-wide/from16 v12, p8

    if-nez v10, :cond_11

    invoke-interface {v3, v12, v13}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v21

    if-eqz v21, :cond_11

    const/high16 v21, 0x800000

    goto :goto_c

    :cond_11
    const/high16 v21, 0x400000

    :goto_c
    or-int v7, v7, v21

    goto :goto_d

    :cond_12
    move-wide/from16 v12, p8

    :goto_d
    and-int/lit16 v10, v1, 0x100

    const/high16 v22, 0x6000000

    if-eqz v10, :cond_13

    or-int v7, v7, v22

    move/from16 v2, p10

    goto :goto_f

    :cond_13
    and-int v22, v15, v22

    move/from16 v2, p10

    if-nez v22, :cond_15

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v23

    if-eqz v23, :cond_14

    const/high16 v23, 0x4000000

    goto :goto_e

    :cond_14
    const/high16 v23, 0x2000000

    :goto_e
    or-int v7, v7, v23

    :cond_15
    :goto_f
    and-int/lit16 v2, v1, 0x200

    const/high16 v23, 0x30000000

    if-eqz v2, :cond_17

    or-int v7, v7, v23

    :cond_16
    move/from16 v23, v2

    move/from16 v2, p11

    goto :goto_11

    :cond_17
    and-int v23, v15, v23

    if-nez v23, :cond_16

    move/from16 v23, v2

    move/from16 v2, p11

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v24

    if-eqz v24, :cond_18

    const/high16 v24, 0x20000000

    goto :goto_10

    :cond_18
    const/high16 v24, 0x10000000

    :goto_10
    or-int v7, v7, v24

    :goto_11
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_19

    or-int/lit8 v17, v0, 0x6

    move/from16 v24, v2

    move-object/from16 v2, p12

    goto :goto_13

    :cond_19
    and-int/lit8 v24, v0, 0x6

    if-nez v24, :cond_1b

    move/from16 v24, v2

    move-object/from16 v2, p12

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1a

    const/16 v17, 0x4

    goto :goto_12

    :cond_1a
    const/16 v17, 0x2

    :goto_12
    or-int v17, v0, v17

    goto :goto_13

    :cond_1b
    move/from16 v24, v2

    move-object/from16 v2, p12

    move/from16 v17, v0

    :goto_13
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_1c

    or-int/lit8 v17, v17, 0x30

    :goto_14
    move/from16 v2, v17

    goto :goto_16

    :cond_1c
    and-int/lit8 v2, v0, 0x30

    if-nez v2, :cond_1e

    move-object/from16 v2, p13

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1d

    const/16 v18, 0x20

    goto :goto_15

    :cond_1d
    const/16 v18, 0x10

    :goto_15
    or-int v17, v17, v18

    goto :goto_14

    :cond_1e
    move-object/from16 v2, p13

    goto :goto_14

    :goto_16
    and-int/lit16 v4, v1, 0x1000

    if-eqz v4, :cond_20

    or-int/lit16 v2, v2, 0x180

    :cond_1f
    move-object/from16 v4, p0

    goto :goto_18

    :cond_20
    and-int/lit16 v4, v0, 0x180

    if-nez v4, :cond_1f

    move-object/from16 v4, p0

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_21

    const/16 v20, 0x100

    goto :goto_17

    :cond_21
    const/16 v20, 0x80

    :goto_17
    or-int v2, v2, v20

    :goto_18
    const v17, 0x12490493

    and-int v0, v7, v17

    const v4, 0x12490492

    const/4 v5, 0x1

    if-ne v0, v4, :cond_23

    and-int/lit16 v0, v2, 0x93

    const/16 v4, 0x92

    if-eq v0, v4, :cond_22

    goto :goto_19

    :cond_22
    const/4 v0, 0x0

    goto :goto_1a

    :cond_23
    :goto_19
    move v0, v5

    :goto_1a
    and-int/lit8 v4, v7, 0x1

    invoke-interface {v3, v0, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v15, 0x1

    const v4, -0x1c00001

    const v17, -0x380001

    if-eqz v0, :cond_28

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_1c

    :cond_24
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_25

    and-int/lit16 v7, v7, -0x1c01

    :cond_25
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_26

    and-int v7, v7, v17

    :cond_26
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_27

    and-int/2addr v7, v4

    :cond_27
    move-object/from16 v20, p4

    move/from16 v11, p5

    move/from16 v25, p10

    move/from16 v26, p11

    move-object/from16 v27, p12

    move/from16 v21, v6

    move-object/from16 v22, v9

    :goto_1b
    move-wide/from16 v23, v12

    move-object/from16 v19, v14

    const v0, -0x69aadd9f

    goto/16 :goto_23

    :cond_28
    :goto_1c
    if-eqz v11, :cond_29

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v14, v0

    :cond_29
    and-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    invoke-static {v0, v3, v0, v5}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v0

    and-int/lit16 v7, v7, -0x1c01

    goto :goto_1d

    :cond_2a
    move-object/from16 v0, p4

    :goto_1d
    and-int/lit8 v11, v1, 0x10

    if-eqz v11, :cond_2b

    move v11, v5

    goto :goto_1e

    :cond_2b
    move/from16 v11, p5

    :goto_1e
    if-eqz v16, :cond_2c

    goto :goto_1f

    :cond_2c
    move v5, v6

    :goto_1f
    and-int/lit8 v6, v1, 0x40

    move/from16 p14, v4

    const/4 v4, 0x6

    if-eqz v6, :cond_2d

    sget-object v6, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    invoke-virtual {v6, v3, v4}, Landroidx/compose/material3/MenuDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    and-int v7, v7, v17

    goto :goto_20

    :cond_2d
    move-object v6, v9

    :goto_20
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_2e

    sget-object v9, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    invoke-virtual {v9, v3, v4}, Landroidx/compose/material3/MenuDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    and-int v4, v7, p14

    move v7, v4

    :cond_2e
    if-eqz v10, :cond_2f

    sget-object v4, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    invoke-virtual {v4}, Landroidx/compose/material3/MenuDefaults;->getTonalElevation-D9Ej5fM()F

    move-result v4

    goto :goto_21

    :cond_2f
    move/from16 v4, p10

    :goto_21
    if-eqz v23, :cond_30

    sget-object v9, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    invoke-virtual {v9}, Landroidx/compose/material3/MenuDefaults;->getShadowElevation-D9Ej5fM()F

    move-result v9

    goto :goto_22

    :cond_30
    move/from16 v9, p11

    :goto_22
    if-eqz v24, :cond_31

    const/4 v10, 0x0

    move-object/from16 v20, v0

    move/from16 v25, v4

    move/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v26, v9

    move-object/from16 v27, v10

    goto :goto_1b

    :cond_31
    move-object/from16 v27, p12

    move-object/from16 v20, v0

    move/from16 v25, v4

    move/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v26, v9

    goto :goto_1b

    :goto_23
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_32

    const-string v4, "androidx.compose.material3.ExposedDropdownMenuBoxScope.ExposedDropdownMenu (ExposedDropdownMenu.kt:401)"

    invoke-static {v0, v7, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_32
    and-int/lit16 v0, v7, 0x1ffe

    shr-int/lit8 v4, v7, 0x3

    const v5, 0xe000

    and-int/2addr v5, v4

    or-int/2addr v0, v5

    const/high16 v5, 0x70000

    and-int/2addr v5, v4

    or-int/2addr v0, v5

    const/high16 v5, 0x380000

    and-int/2addr v5, v4

    or-int/2addr v0, v5

    const/high16 v5, 0x1c00000

    and-int/2addr v5, v4

    or-int/2addr v0, v5

    const/high16 v5, 0xe000000

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    shl-int/lit8 v4, v2, 0x1b

    const/high16 v5, 0x70000000

    and-int/2addr v4, v5

    or-int v30, v0, v4

    shr-int/lit8 v0, v2, 0x3

    and-int/lit8 v31, v0, 0x7e

    const/16 v32, 0x0

    move-object/from16 v16, p0

    move/from16 v17, p1

    move-object/from16 v28, p13

    move-object/from16 v29, v3

    move-object/from16 v18, v8

    invoke-virtual/range {v16 .. v32}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->ExposedDropdownMenu-vNxi1II(ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_33
    move v6, v11

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    move-wide/from16 v9, v23

    move/from16 v11, v25

    move/from16 v12, v26

    move-object/from16 v13, v27

    goto :goto_24

    :cond_34
    move-object/from16 v29, v3

    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v5, p4

    move/from16 v11, p10

    move v7, v6

    move-object v8, v9

    move-wide v9, v12

    move-object v4, v14

    move/from16 v6, p5

    move/from16 v12, p11

    move-object/from16 v13, p12

    :goto_24
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_35

    move-object v2, v0

    new-instance v0, Lz33;

    move-object/from16 v3, p2

    move-object/from16 v14, p13

    move/from16 v16, p16

    move/from16 v17, v1

    move-object/from16 v33, v2

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct/range {v0 .. v17}, Lz33;-><init>(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;III)V

    move-object/from16 v2, v33

    invoke-interface {v2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_35
    return-void
.end method

.method public final ExposedDropdownMenu-vNxi1II(ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;Landroidx/compose/runtime/Composer;III)V
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/ScrollState;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JFF",
            "Landroidx/compose/foundation/BorderStroke;",
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

    move/from16 v2, p1

    move/from16 v14, p14

    move/from16 v0, p16

    const v1, -0x78f8dc3

    move-object/from16 v3, p13

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v4, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v14, 0x6

    if-nez v4, :cond_2

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v14

    goto :goto_1

    :cond_2
    move v4, v14

    :goto_1
    and-int/lit8 v7, v0, 0x2

    if-eqz v7, :cond_4

    or-int/lit8 v4, v4, 0x30

    :cond_3
    move-object/from16 v7, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v7, v14, 0x30

    if-nez v7, :cond_3

    move-object/from16 v7, p2

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x20

    goto :goto_2

    :cond_5
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v4, v10

    :goto_3
    and-int/lit8 v10, v0, 0x4

    if-eqz v10, :cond_7

    or-int/lit16 v4, v4, 0x180

    :cond_6
    move-object/from16 v11, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v11, v14, 0x180

    if-nez v11, :cond_6

    move-object/from16 v11, p3

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x100

    goto :goto_4

    :cond_8
    const/16 v12, 0x80

    :goto_4
    or-int/2addr v4, v12

    :goto_5
    and-int/lit16 v12, v14, 0xc00

    if-nez v12, :cond_b

    and-int/lit8 v12, v0, 0x8

    if-nez v12, :cond_9

    move-object/from16 v12, p4

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v12, p4

    :cond_a
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v4, v13

    goto :goto_7

    :cond_b
    move-object/from16 v12, p4

    :goto_7
    and-int/lit8 v13, v0, 0x10

    if-eqz v13, :cond_d

    or-int/lit16 v4, v4, 0x6000

    :cond_c
    move/from16 v15, p5

    goto :goto_9

    :cond_d
    and-int/lit16 v15, v14, 0x6000

    if-nez v15, :cond_c

    move/from16 v15, p5

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_e

    const/16 v16, 0x4000

    goto :goto_8

    :cond_e
    const/16 v16, 0x2000

    :goto_8
    or-int v4, v4, v16

    :goto_9
    const/high16 v16, 0x30000

    and-int v16, v14, v16

    if-nez v16, :cond_10

    and-int/lit8 v16, v0, 0x20

    move-object/from16 v5, p6

    if-nez v16, :cond_f

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v16, 0x10000

    :goto_a
    or-int v4, v4, v16

    goto :goto_b

    :cond_10
    move-object/from16 v5, p6

    :goto_b
    const/high16 v16, 0x180000

    and-int v16, v14, v16

    if-nez v16, :cond_12

    and-int/lit8 v16, v0, 0x40

    move-wide/from16 v8, p7

    if-nez v16, :cond_11

    invoke-interface {v3, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v18

    if-eqz v18, :cond_11

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_11
    const/high16 v18, 0x80000

    :goto_c
    or-int v4, v4, v18

    goto :goto_d

    :cond_12
    move-wide/from16 v8, p7

    :goto_d
    and-int/lit16 v6, v0, 0x80

    const/high16 v19, 0xc00000

    if-eqz v6, :cond_13

    or-int v4, v4, v19

    move/from16 v1, p9

    goto :goto_f

    :cond_13
    and-int v19, v14, v19

    move/from16 v1, p9

    if-nez v19, :cond_15

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v20

    if-eqz v20, :cond_14

    const/high16 v20, 0x800000

    goto :goto_e

    :cond_14
    const/high16 v20, 0x400000

    :goto_e
    or-int v4, v4, v20

    :cond_15
    :goto_f
    and-int/lit16 v1, v0, 0x100

    const/high16 v20, 0x6000000

    if-eqz v1, :cond_17

    or-int v4, v4, v20

    :cond_16
    move/from16 v20, v1

    move/from16 v1, p10

    goto :goto_11

    :cond_17
    and-int v20, v14, v20

    if-nez v20, :cond_16

    move/from16 v20, v1

    move/from16 v1, p10

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v21

    if-eqz v21, :cond_18

    const/high16 v21, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v21, 0x2000000

    :goto_10
    or-int v4, v4, v21

    :goto_11
    and-int/lit16 v1, v0, 0x200

    const/high16 v21, 0x30000000

    if-eqz v1, :cond_1a

    or-int v4, v4, v21

    :cond_19
    move/from16 v21, v1

    move-object/from16 v1, p11

    goto :goto_13

    :cond_1a
    and-int v21, v14, v21

    if-nez v21, :cond_19

    move/from16 v21, v1

    move-object/from16 v1, p11

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    const/high16 v22, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v22, 0x10000000

    :goto_12
    or-int v4, v4, v22

    :goto_13
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_1c

    or-int/lit8 v1, p15, 0x6

    move/from16 v22, v1

    move-object/from16 v1, p12

    goto :goto_15

    :cond_1c
    and-int/lit8 v1, p15, 0x6

    if-nez v1, :cond_1e

    move-object/from16 v1, p12

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d

    const/16 v22, 0x4

    goto :goto_14

    :cond_1d
    const/16 v22, 0x2

    :goto_14
    or-int v22, p15, v22

    goto :goto_15

    :cond_1e
    move-object/from16 v1, p12

    move/from16 v22, p15

    :goto_15
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_20

    or-int/lit8 v22, v22, 0x30

    :cond_1f
    move-object/from16 v1, p0

    :goto_16
    move/from16 v0, v22

    goto :goto_18

    :cond_20
    and-int/lit8 v1, p15, 0x30

    if-nez v1, :cond_1f

    move-object/from16 v1, p0

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_21

    const/16 v16, 0x20

    goto :goto_17

    :cond_21
    const/16 v16, 0x10

    :goto_17
    or-int v22, v22, v16

    goto :goto_16

    :goto_18
    const v16, 0x12492493

    and-int v1, v4, v16

    const v2, 0x12492492

    const/4 v5, 0x1

    if-ne v1, v2, :cond_23

    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    if-eq v1, v2, :cond_22

    goto :goto_19

    :cond_22
    const/4 v1, 0x0

    goto :goto_1a

    :cond_23
    :goto_19
    move v1, v5

    :goto_1a
    and-int/lit8 v2, v4, 0x1

    invoke-interface {v3, v1, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, v14, 0x1

    const v16, -0x70001

    const v17, -0x380001

    const/4 v2, 0x6

    if-eqz v1, :cond_28

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_1c

    :cond_24
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, p16, 0x8

    if-eqz v1, :cond_25

    and-int/lit16 v4, v4, -0x1c01

    :cond_25
    and-int/lit8 v1, p16, 0x20

    if-eqz v1, :cond_26

    and-int v4, v4, v16

    :cond_26
    and-int/lit8 v1, p16, 0x40

    if-eqz v1, :cond_27

    and-int v4, v4, v17

    :cond_27
    move-object/from16 v29, p6

    move/from16 v32, p9

    move/from16 v33, p10

    move-object/from16 v34, p11

    move-wide/from16 v30, v8

    move-object/from16 v24, v11

    move-object/from16 v28, v12

    :goto_1b
    move/from16 v25, v15

    goto/16 :goto_22

    :cond_28
    :goto_1c
    if-eqz v10, :cond_29

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1d

    :cond_29
    move-object v1, v11

    :goto_1d
    and-int/lit8 v10, p16, 0x8

    if-eqz v10, :cond_2a

    const/4 v10, 0x0

    invoke-static {v10, v3, v10, v5}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v11

    and-int/lit16 v4, v4, -0x1c01

    goto :goto_1e

    :cond_2a
    move-object v11, v12

    :goto_1e
    if-eqz v13, :cond_2b

    move v15, v5

    :cond_2b
    and-int/lit8 v10, p16, 0x20

    if-eqz v10, :cond_2c

    sget-object v10, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    invoke-virtual {v10, v3, v2}, Landroidx/compose/material3/MenuDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v10

    and-int v4, v4, v16

    goto :goto_1f

    :cond_2c
    move-object/from16 v10, p6

    :goto_1f
    and-int/lit8 v12, p16, 0x40

    if-eqz v12, :cond_2d

    sget-object v8, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    invoke-virtual {v8, v3, v2}, Landroidx/compose/material3/MenuDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v8

    and-int v4, v4, v17

    :cond_2d
    if-eqz v6, :cond_2e

    sget-object v6, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    invoke-virtual {v6}, Landroidx/compose/material3/MenuDefaults;->getTonalElevation-D9Ej5fM()F

    move-result v6

    goto :goto_20

    :cond_2e
    move/from16 v6, p9

    :goto_20
    if-eqz v20, :cond_2f

    sget-object v12, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    invoke-virtual {v12}, Landroidx/compose/material3/MenuDefaults;->getShadowElevation-D9Ej5fM()F

    move-result v12

    goto :goto_21

    :cond_2f
    move/from16 v12, p10

    :goto_21
    if-eqz v21, :cond_30

    move-object/from16 v24, v1

    move/from16 v32, v6

    move-wide/from16 v30, v8

    move-object/from16 v29, v10

    move-object/from16 v28, v11

    move/from16 v33, v12

    move/from16 v25, v15

    const/16 v34, 0x0

    goto :goto_22

    :cond_30
    move-object/from16 v34, p11

    move-object/from16 v24, v1

    move/from16 v32, v6

    move-wide/from16 v30, v8

    move-object/from16 v29, v10

    move-object/from16 v28, v11

    move/from16 v33, v12

    goto :goto_1b

    :goto_22
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "androidx.compose.material3.ExposedDropdownMenuBoxScope.ExposedDropdownMenu (ExposedDropdownMenu.kt:321)"

    const v6, -0x78f8dc3

    invoke-static {v6, v4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_31
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v0, v6, :cond_32

    sget-object v0, Lj59;->a:Lj59;

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v6

    invoke-static {v0, v6}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_32
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v6

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/unit/Density;

    sget-object v8, Landroidx/compose/foundation/layout/WindowInsets;->Companion:Landroidx/compose/foundation/layout/WindowInsets$Companion;

    invoke-static {v8, v3, v2}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->getStatusBars(Landroidx/compose/foundation/layout/WindowInsets$Companion;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v8

    invoke-interface {v8, v6}, Landroidx/compose/foundation/layout/WindowInsets;->getTop(Landroidx/compose/ui/unit/Density;)I

    move-result v8

    if-eqz p1, :cond_34

    const v9, 0x258ce8ec

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v9, v10, :cond_33

    new-instance v9, La43;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10}, La43;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_33
    check-cast v9, Lll3;

    invoke-static {v9, v3, v2}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->OnPlatformWindowBoundsChange(Lll3;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_23

    :cond_34
    const v2, 0x258e3705

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_23
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v2, v9, :cond_35

    new-instance v2, Landroidx/compose/animation/core/MutableTransitionState;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v9}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_35
    check-cast v2, Landroidx/compose/animation/core/MutableTransitionState;

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroidx/compose/animation/core/MutableTransitionState;->setTargetState(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/compose/animation/core/MutableTransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_37

    invoke-virtual {v2}, Landroidx/compose/animation/core/MutableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_36

    goto :goto_24

    :cond_36
    const v0, 0x25a89d05

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object v0, v3

    goto/16 :goto_25

    :cond_37
    :goto_24
    const v9, 0x25931649

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v9, v10, :cond_38

    sget-object v9, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/TransformOrigin;->box-impl(J)Landroidx/compose/ui/graphics/TransformOrigin;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v9, v10, v11, v10}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_38
    check-cast v9, Landroidx/compose/runtime/MutableState;

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v11

    or-int/2addr v10, v11

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_39

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v11, v1, :cond_3a

    :cond_39
    new-instance v1, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;

    new-instance v10, Lb43;

    invoke-direct {v10, v9}, Lb43;-><init>(Landroidx/compose/runtime/MutableState;)V

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 p6, v0

    move-object/from16 p3, v1

    move-object/from16 p4, v6

    move/from16 p5, v8

    move-object/from16 p8, v10

    move/from16 p9, v11

    move-object/from16 p10, v12

    move/from16 p7, v13

    invoke-direct/range {p3 .. p10}, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;-><init>(Landroidx/compose/ui/unit/Density;ILandroidx/compose/runtime/State;ILbm3;ILjh2;)V

    move-object/from16 v11, p3

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3a
    check-cast v11, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->getAnchorType-oYjWRB4$material3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->getAlwaysFocusable$material3()Z

    move-result v1

    const/4 v10, 0x0

    invoke-static {v0, v1, v3, v10}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->popupPropertiesForAnchorType-BTG8-q0(Ljava/lang/String;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/window/PopupProperties;

    move-result-object v0

    new-instance v22, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;

    move-object/from16 v23, p0

    move-object/from16 v35, p12

    move-object/from16 v26, v2

    move-object/from16 v27, v9

    invoke-direct/range {v22 .. v35}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;-><init>(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;Landroidx/compose/ui/Modifier;ZLandroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;)V

    move-object/from16 v1, v22

    const/16 v2, 0x36

    const v6, 0x7af8b32d

    invoke-static {v6, v5, v1, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    and-int/lit8 v2, v4, 0x70

    or-int/lit16 v2, v2, 0xc00

    const/4 v4, 0x0

    move-object/from16 p5, v0

    move-object/from16 p6, v1

    move/from16 p8, v2

    move-object/from16 p7, v3

    move/from16 p9, v4

    move-object/from16 p4, v7

    move-object/from16 p3, v11

    invoke-static/range {p3 .. p9}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lll3;Landroidx/compose/ui/window/PopupProperties;Lbm3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v0, p7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_25
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3b
    move-object/from16 v4, v24

    move/from16 v6, v25

    move-object/from16 v5, v28

    move-object/from16 v7, v29

    move-wide/from16 v8, v30

    move/from16 v10, v32

    move/from16 v11, v33

    move-object/from16 v12, v34

    goto :goto_26

    :cond_3c
    move-object v0, v3

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v7, p6

    move/from16 v10, p9

    move-object v4, v11

    move-object v5, v12

    move v6, v15

    move/from16 v11, p10

    move-object/from16 v12, p11

    :goto_26
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_3d

    move-object v1, v0

    new-instance v0, Lc43;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v13, p12

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v36, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v16}, Lc43;-><init>(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;III)V

    move-object/from16 v1, v36

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_3d
    return-void
.end method

.method public abstract exposedDropdownSize(Landroidx/compose/ui/Modifier;Z)Landroidx/compose/ui/Modifier;
.end method

.method public abstract getAlwaysFocusable$material3()Z
.end method

.method public abstract getAnchorType-oYjWRB4$material3()Ljava/lang/String;
.end method

.method public final menuAnchor(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 7
    .annotation runtime Lul2;
    .end annotation

    sget-object v0, Landroidx/compose/material3/ExposedDropdownMenuAnchorType;->Companion:Landroidx/compose/material3/ExposedDropdownMenuAnchorType$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/ExposedDropdownMenuAnchorType$Companion;->getPrimaryNotEditable-oYjWRB4()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->menuAnchor-2Hz36ac$default(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public abstract menuAnchor-2Hz36ac(Landroidx/compose/ui/Modifier;Ljava/lang/String;Z)Landroidx/compose/ui/Modifier;
.end method
