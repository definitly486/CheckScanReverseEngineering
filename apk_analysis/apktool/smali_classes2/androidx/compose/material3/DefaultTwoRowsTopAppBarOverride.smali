.class public final Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/TwoRowsTopAppBarOverride;


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;

    invoke-direct {v0}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;-><init>()V

    sput-object v0, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->INSTANCE:Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final TwoRowsTopAppBar$lambda$10$lambda$9(Lll3;)F
    .locals 1

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    return v0
.end method

.method private static final TwoRowsTopAppBar$lambda$12$lambda$11(Lll3;)Z
    .locals 1

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final TwoRowsTopAppBar$lambda$13(Landroidx/compose/runtime/State;)Z
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

.method private static final TwoRowsTopAppBar$lambda$15$lambda$14(Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;F)Lj59;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getScrollBehavior()Landroidx/compose/material3/TopAppBarScrollBehavior;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getHeightOffset()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/compose/material3/TopAppBarState;->setHeightOffset(F)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final TwoRowsTopAppBar$lambda$18$lambda$17(Lll3;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 13

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v1

    const/16 v11, 0x7e

    const/4 v12, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final TwoRowsTopAppBar$lambda$20$lambda$19(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setTraversalGroup(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Z)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final TwoRowsTopAppBar$lambda$27$lambda$26$lambda$23$lambda$22()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static final TwoRowsTopAppBar$lambda$27$lambda$26$lambda$25$lambda$24(Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;)F
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getScrollBehavior()Landroidx/compose/material3/TopAppBarScrollBehavior;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getHeightOffset()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final TwoRowsTopAppBar$lambda$28(Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p1, p3, p2}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->TwoRowsTopAppBar(Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final TwoRowsTopAppBar$lambda$5$lambda$4(Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;)F
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getScrollBehavior()Landroidx/compose/material3/TopAppBarScrollBehavior;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getCollapsedFraction()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final TwoRowsTopAppBar$lambda$8$lambda$7(Lll3;)F
    .locals 1

    invoke-static {}, Landroidx/compose/material3/AppBarKt;->getTopTitleAlphaEasing()Landroidx/compose/animation/core/CubicBezierEasing;

    move-result-object v0

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/compose/animation/core/CubicBezierEasing;->transform(F)F

    move-result p0

    return p0
.end method

.method public static synthetic a(Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;F)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->TwoRowsTopAppBar$lambda$15$lambda$14(Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;F)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->TwoRowsTopAppBar$lambda$28(Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lll3;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->TwoRowsTopAppBar$lambda$12$lambda$11(Lll3;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->TwoRowsTopAppBar$lambda$20$lambda$19(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e()F
    .locals 1

    invoke-static {}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->TwoRowsTopAppBar$lambda$27$lambda$26$lambda$23$lambda$22()F

    move-result v0

    return v0
.end method

.method public static synthetic f(Lll3;)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->TwoRowsTopAppBar$lambda$8$lambda$7(Lll3;)F

    move-result p0

    return p0
.end method

.method public static synthetic g(Lll3;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->TwoRowsTopAppBar$lambda$18$lambda$17(Lll3;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->TwoRowsTopAppBar$lambda$27$lambda$26$lambda$25$lambda$24(Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;)F

    move-result p0

    return p0
.end method

.method public static synthetic i(Lll3;)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->TwoRowsTopAppBar$lambda$10$lambda$9(Lll3;)F

    move-result p0

    return p0
.end method

.method public static synthetic j(Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->TwoRowsTopAppBar$lambda$5$lambda$4(Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;)F

    move-result p0

    return p0
.end method


# virtual methods
.method public TwoRowsTopAppBar(Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;Landroidx/compose/runtime/Composer;I)V
    .locals 43

    move-object/from16 v0, p1

    const v2, -0x61ca9250

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    and-int/lit8 v4, p3, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-nez v4, :cond_1

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    or-int v4, p3, v4

    goto :goto_1

    :cond_1
    move/from16 v4, p3

    :goto_1
    and-int/lit8 v7, v4, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v7, v5, :cond_2

    move v7, v8

    goto :goto_2

    :cond_2
    move v7, v9

    :goto_2
    and-int/lit8 v10, v4, 0x1

    invoke-interface {v3, v7, v10}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, -0x1

    const-string v10, "androidx.compose.material3.DefaultTwoRowsTopAppBarOverride.TwoRowsTopAppBar (AppBar.kt:2732)"

    invoke-static {v2, v4, v7, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getCollapsedHeight-D9Ej5fM()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getCollapsedHeight-D9Ej5fM()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    const v7, 0x7fffffff

    and-int/2addr v2, v7

    const/high16 v10, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v2, v10, :cond_29

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getExpandedHeight-D9Ej5fM()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getExpandedHeight-D9Ej5fM()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    and-int/2addr v2, v7

    if-ge v2, v10, :cond_28

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getExpandedHeight-D9Ej5fM()F

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getCollapsedHeight-D9Ej5fM()F

    move-result v7

    invoke-static {v2, v7}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    move-result v2

    if-ltz v2, :cond_27

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Density;

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getTitleBottomPadding-D9Ej5fM()F

    move-result v7

    invoke-interface {v2, v7}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    and-int/lit8 v4, v4, 0xe

    if-ne v4, v6, :cond_4

    move v7, v8

    goto :goto_3

    :cond_4
    move v7, v9

    :goto_3
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v7, :cond_5

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v10, v7, :cond_6

    :cond_5
    new-instance v10, Lpg0;

    const/4 v7, 0x3

    invoke-direct {v10, v0, v7}, Lpg0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v10, Lll3;

    if-ne v4, v6, :cond_7

    move v7, v8

    goto :goto_4

    :cond_7
    move v7, v9

    :goto_4
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v7, v11

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v7, :cond_8

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v11, v7, :cond_9

    :cond_8
    new-instance v11, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride$TwoRowsTopAppBar$appBarContainerColor$1$1;

    invoke-direct {v11, v0, v10}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride$TwoRowsTopAppBar$appBarContainerColor$1$1;-><init>(Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;Lll3;)V

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    check-cast v11, Lll3;

    new-instance v7, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride$TwoRowsTopAppBar$actionsRow$1;

    invoke-direct {v7, v0}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride$TwoRowsTopAppBar$actionsRow$1;-><init>(Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;)V

    const/16 v12, 0x36

    const v13, -0x4f7e3ec7

    invoke-static {v13, v8, v7, v3, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v23

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v7, :cond_a

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v12, v7, :cond_b

    :cond_a
    new-instance v12, Lg22;

    invoke-direct {v12, v10, v8}, Lg22;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v17, v12

    check-cast v17, Lll3;

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v7, :cond_c

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v12, v7, :cond_d

    :cond_c
    new-instance v12, Lsk;

    invoke-direct {v12, v10, v8}, Lsk;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_d
    move-object/from16 v28, v12

    check-cast v28, Lll3;

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v7, :cond_e

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v12, v7, :cond_f

    :cond_e
    new-instance v7, Lrg0;

    invoke-direct {v7, v10, v8}, Lrg0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v7}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lll3;)Landroidx/compose/runtime/State;

    move-result-object v12

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    check-cast v12, Landroidx/compose/runtime/State;

    invoke-static {v12}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->TwoRowsTopAppBar$lambda$13(Landroidx/compose/runtime/State;)Z

    move-result v7

    xor-int/lit8 v29, v7, 0x1

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getScrollBehavior()Landroidx/compose/material3/TopAppBarScrollBehavior;

    move-result-object v7

    const/4 v10, 0x0

    if-eqz v7, :cond_16

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getScrollBehavior()Landroidx/compose/material3/TopAppBarScrollBehavior;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/material3/TopAppBarScrollBehavior;->isPinned()Z

    move-result v7

    if-nez v7, :cond_16

    const v7, -0x145563a1

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget-object v30, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v32, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v4, v6, :cond_10

    move v7, v8

    goto :goto_5

    :cond_10
    move v7, v9

    :goto_5
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v7, :cond_11

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v13, v7, :cond_12

    :cond_11
    new-instance v13, Lj22;

    invoke-direct {v13, v0, v8}, Lj22;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_12
    check-cast v13, Lnl3;

    invoke-static {v13, v3, v9}, Landroidx/compose/foundation/gestures/DraggableKt;->rememberDraggableState(Lnl3;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/DraggableState;

    move-result-object v31

    if-ne v4, v6, :cond_13

    move v7, v8

    goto :goto_6

    :cond_13
    move v7, v9

    :goto_6
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v7, :cond_14

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v13, v7, :cond_15

    :cond_14
    new-instance v13, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride$TwoRowsTopAppBar$appBarDragModifier$2$1;

    invoke-direct {v13, v0, v10}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride$TwoRowsTopAppBar$appBarDragModifier$2$1;-><init>(Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;Le02;)V

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_15
    move-object/from16 v37, v13

    check-cast v37, Ldm3;

    const/16 v39, 0xbc

    const/16 v40, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    invoke-static/range {v30 .. v40}, Landroidx/compose/foundation/gestures/DraggableKt;->draggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLdm3;Ldm3;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 v13, v30

    goto :goto_7

    :cond_16
    const v7, -0x144b9db6

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v30, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v7, v30

    move-object v13, v7

    :goto_7
    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getModifier()Landroidx/compose/ui/Modifier;

    move-result-object v14

    invoke-interface {v14, v7}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_17

    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v15, v14, :cond_18

    :cond_17
    new-instance v15, Luo;

    invoke-direct {v15, v11, v8}, Luo;-><init>(Lll3;I)V

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    check-cast v15, Lnl3;

    invoke-static {v7, v15}, Landroidx/compose/ui/draw/DrawModifierKt;->drawBehind(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    sget-object v30, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v11, v14, :cond_19

    new-instance v11, Lis0;

    invoke-direct {v11, v5}, Lis0;-><init>(I)V

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_19
    check-cast v11, Lnl3;

    invoke-static {v7, v9, v11, v8, v10}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLnl3;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v7, Lj59;->a:Lj59;

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v10, v11, :cond_1a

    sget-object v10, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride$TwoRowsTopAppBar$6$1;->INSTANCE:Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride$TwoRowsTopAppBar$6$1;

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1a
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v5, v7, v10}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v10

    invoke-static {v10, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    invoke-static {v3, v9}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v11

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v14

    invoke-static {v3, v5}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lll3;

    move-result-object v6

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v16

    if-nez v16, :cond_1b

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    :cond_1b
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v16

    if-eqz v16, :cond_1c

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->createNode(Lll3;)V

    goto :goto_8

    :cond_1c
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    :goto_8
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    invoke-static {v15, v6, v10, v6, v14}, Lcc;->b(Landroidx/compose/ui/node/ComposeUiNode$Companion;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/CompositionLocalMap;)Lbm3;

    move-result-object v10

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v14

    if-nez v14, :cond_1d

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    :cond_1d
    invoke-static {v10, v11, v6, v11}, Ldc;->b(Lbm3;ILandroidx/compose/runtime/Composer;I)V

    :cond_1e
    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lbm3;

    move-result-object v8

    invoke-static {v6, v5, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lbm3;)V

    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    sget-object v31, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v5

    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v6

    invoke-static {v5, v6, v3, v9}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    invoke-static {v3, v9}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v6

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v7

    invoke-static {v3, v13}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lll3;

    move-result-object v10

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v11

    if-nez v11, :cond_1f

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    :cond_1f
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->createNode(Lll3;)V

    goto :goto_9

    :cond_20
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    :goto_9
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v10

    invoke-static {v15, v10, v5, v10, v7}, Lcc;->b(Landroidx/compose/ui/node/ComposeUiNode$Companion;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/CompositionLocalMap;)Lbm3;

    move-result-object v5

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v7

    if-nez v7, :cond_21

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7, v11}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    :cond_21
    invoke-static {v5, v6, v10, v6}, Ldc;->b(Lbm3;ILandroidx/compose/runtime/Composer;I)V

    :cond_22
    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lbm3;

    move-result-object v5

    invoke-static {v10, v8, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lbm3;)V

    sget-object v5, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getWindowInsets()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v5

    invoke-static {v13, v5}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_23

    new-instance v6, Lfk2;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_23
    check-cast v6, Landroidx/compose/material3/internal/FloatProducer;

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getColors()Landroidx/compose/material3/TopAppBarColors;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material3/TopAppBarColors;->getNavigationIconContentColor-0d7_KjU()J

    move-result-wide v7

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getColors()Landroidx/compose/material3/TopAppBarColors;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/material3/TopAppBarColors;->getTitleContentColor-0d7_KjU()J

    move-result-wide v10

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getColors()Landroidx/compose/material3/TopAppBarColors;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/compose/material3/TopAppBarColors;->getActionIconContentColor-0d7_KjU()J

    move-result-wide v14

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getColors()Landroidx/compose/material3/TopAppBarColors;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/material3/TopAppBarColors;->getSubtitleContentColor-0d7_KjU()J

    move-result-wide v18

    move-object/from16 v20, v13

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getSmallTitle()Lbm3;

    move-result-object v13

    move-object/from16 v25, v3

    move-object v3, v5

    move-wide/from16 v41, v14

    move v15, v4

    move-object v4, v6

    move-wide v5, v7

    move-wide v7, v10

    move-object v10, v12

    move-wide/from16 v11, v41

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getSmallTitleTextStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v14

    move/from16 v21, v15

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getSmallSubtitle()Lbm3;

    move-result-object v15

    const/16 v22, 0x1

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getSmallSubtitleTextStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v16

    move/from16 v24, v9

    move-wide/from16 v41, v18

    move-object/from16 v19, v10

    move-wide/from16 v9, v41

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/foundation/layout/Arrangement;->getCenter()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v18

    move-object/from16 v26, v19

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getTitleHorizontalAlignment()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v19

    invoke-static/range {v26 .. v26}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->TwoRowsTopAppBar$lambda$13(Landroidx/compose/runtime/State;)Z

    move-result v26

    move/from16 v27, v22

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getNavigationIcon()Lbm3;

    move-result-object v22

    move/from16 v32, v24

    invoke-virtual {v0}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getCollapsedHeight-D9Ej5fM()F

    move-result v24

    move/from16 v33, v21

    move/from16 v21, v26

    const/16 v26, 0x0

    move/from16 v34, v27

    const v27, 0x180c30

    move-object/from16 v35, v20

    const/16 v20, 0x0

    move/from16 p2, v2

    move/from16 v2, v33

    move-object/from16 v1, v35

    const/4 v0, 0x4

    invoke-static/range {v3 .. v27}, Landroidx/compose/material3/AppBarKt;->access$TopAppBarLayout-lyUyIHI(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/FloatProducer;JJJJLbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/ui/text/TextStyle;Lll3;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;IZLbm3;Lbm3;FLandroidx/compose/runtime/Composer;II)V

    move-object/from16 v3, v25

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getWindowInsets()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v4

    sget-object v5, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {v5}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getHorizontal-JoeWqyM()I

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/WindowInsetsKt;->only-bOOhFvg(Landroidx/compose/foundation/layout/WindowInsets;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v4

    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getScrollBehavior()Landroidx/compose/material3/TopAppBarScrollBehavior;

    move-result-object v4

    invoke-static {v1, v4}, Landroidx/compose/material3/AppBarKt;->access$adjustHeightOffsetLimit(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TopAppBarScrollBehavior;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-ne v2, v0, :cond_24

    move/from16 v8, v34

    goto :goto_a

    :cond_24
    move/from16 v8, v32

    :goto_a
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v8, :cond_26

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_25

    goto :goto_b

    :cond_25
    move-object/from16 v2, p1

    goto :goto_c

    :cond_26
    :goto_b
    new-instance v0, Lgk2;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lgk2;-><init>(Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;)V

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_c
    move-object v4, v0

    check-cast v4, Landroidx/compose/material3/internal/FloatProducer;

    invoke-virtual {v2}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getColors()Landroidx/compose/material3/TopAppBarColors;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/TopAppBarColors;->getNavigationIconContentColor-0d7_KjU()J

    move-result-wide v5

    invoke-virtual {v2}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getColors()Landroidx/compose/material3/TopAppBarColors;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/TopAppBarColors;->getTitleContentColor-0d7_KjU()J

    move-result-wide v7

    invoke-virtual {v2}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getColors()Landroidx/compose/material3/TopAppBarColors;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/TopAppBarColors;->getActionIconContentColor-0d7_KjU()J

    move-result-wide v11

    invoke-virtual {v2}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getColors()Landroidx/compose/material3/TopAppBarColors;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/TopAppBarColors;->getSubtitleContentColor-0d7_KjU()J

    move-result-wide v9

    invoke-virtual {v2}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getTitle()Lbm3;

    move-result-object v13

    invoke-virtual {v2}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getTitleTextStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v14

    invoke-virtual {v2}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getSubtitle()Lbm3;

    move-result-object v15

    invoke-virtual {v2}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getSubtitleTextStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v16

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/foundation/layout/Arrangement;->getBottom()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v18

    invoke-virtual {v2}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getTitleHorizontalAlignment()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v19

    invoke-virtual {v2}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getExpandedHeight-D9Ej5fM()F

    move-result v0

    invoke-virtual {v2}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->getCollapsedHeight-D9Ej5fM()F

    move-result v17

    sub-float v0, v0, v17

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v24

    sget-object v0, Landroidx/compose/material3/ComposableSingletons$AppBarKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$AppBarKt;

    invoke-virtual {v0}, Landroidx/compose/material3/ComposableSingletons$AppBarKt;->getLambda$-2101264077$material3()Lbm3;

    move-result-object v22

    invoke-virtual {v0}, Landroidx/compose/material3/ComposableSingletons$AppBarKt;->getLambda$37575796$material3()Lbm3;

    move-result-object v23

    const/16 v26, 0x0

    const v27, 0x1b0030

    move/from16 v20, p2

    move-object/from16 v25, v3

    move-object/from16 v17, v28

    move/from16 v21, v29

    move-object v3, v1

    invoke-static/range {v3 .. v27}, Landroidx/compose/material3/AppBarKt;->access$TopAppBarLayout-lyUyIHI(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/FloatProducer;JJJJLbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/ui/text/TextStyle;Lll3;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;IZLbm3;Lbm3;FLandroidx/compose/runtime/Composer;II)V

    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->endNode()V

    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->endNode()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_d

    :cond_27
    const-string v0, "The expandedHeight is expected to be greater or equal to the collapsedHeight"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_28
    const-string v0, "The expandedHeight is expected to be specified and finite"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_29
    const-string v0, "The collapsedHeight is expected to be specified and finite"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_2a
    move-object v2, v0

    move-object/from16 v25, v3

    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_2b
    :goto_d
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_2c

    new-instance v1, Lhk2;

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct {v1, v3, v2, v4}, Lhk2;-><init>(Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_2c
    return-void
.end method
