.class public final Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/ModalWideNavigationRailOverride;


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;

    invoke-direct {v0}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;-><init>()V

    sput-object v0, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;->INSTANCE:Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final ModalWideNavigationRail$lambda$16$lambda$15(Lx81;Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;)Lj59;
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getState()Landroidx/compose/material3/WideNavigationRailState;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/material3/WideNavigationRailState;->getTargetValue()Landroidx/compose/material3/WideNavigationRailValue;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/material3/WideNavigationRailStateKt;->isExpanded(Landroidx/compose/material3/WideNavigationRailValue;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalWideNavigationRail$lambda$18$lambda$17(Ly22;Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;)Lj59;
    .locals 2

    new-instance v0, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$4$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$4$1$1;-><init>(Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;Le02;)V

    const/4 p1, 0x3

    invoke-static {p0, v1, v1, v0, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalWideNavigationRail$lambda$20$lambda$19(Ly22;Landroidx/compose/animation/core/Animatable;F)Lj59;
    .locals 2

    new-instance v0, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$5$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$5$1$1;-><init>(Landroidx/compose/animation/core/Animatable;FLe02;)V

    const/4 p1, 0x3

    invoke-static {p0, v1, v1, v0, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalWideNavigationRail$lambda$22$lambda$21(Ly22;Landroidx/compose/animation/core/Animatable;)Lj59;
    .locals 2

    new-instance v0, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$6$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$6$1$1;-><init>(Landroidx/compose/animation/core/Animatable;Le02;)V

    const/4 p1, 0x3

    invoke-static {p0, v1, v1, v0, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalWideNavigationRail$lambda$23(Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p1, p3, p2}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;->ModalWideNavigationRail(Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ModalWideNavigationRail$lambda$3$lambda$2(Landroidx/compose/runtime/State;)Z
    .locals 1

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final ModalWideNavigationRail$lambda$4(Landroidx/compose/runtime/State;)Z
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

.method private static final ModalWideNavigationRail$lambda$6$lambda$5(Landroidx/compose/runtime/State;)Z
    .locals 1

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const v0, 0x3e99999a    # 0.3f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final ModalWideNavigationRail$lambda$7(Landroidx/compose/runtime/State;)Z
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

.method public static synthetic a(Landroidx/compose/runtime/State;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;->ModalWideNavigationRail$lambda$6$lambda$5(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$ModalWideNavigationRail$lambda$7(Landroidx/compose/runtime/State;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;->ModalWideNavigationRail$lambda$7(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;->ModalWideNavigationRail$lambda$23(Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ly22;Landroidx/compose/animation/core/Animatable;F)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;->ModalWideNavigationRail$lambda$20$lambda$19(Ly22;Landroidx/compose/animation/core/Animatable;F)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/runtime/State;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;->ModalWideNavigationRail$lambda$3$lambda$2(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Ly22;Landroidx/compose/animation/core/Animatable;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;->ModalWideNavigationRail$lambda$22$lambda$21(Ly22;Landroidx/compose/animation/core/Animatable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lx81;Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;->ModalWideNavigationRail$lambda$16$lambda$15(Lx81;Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ly22;Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;->ModalWideNavigationRail$lambda$18$lambda$17(Ly22;Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;)Lj59;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public ModalWideNavigationRail(Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;Landroidx/compose/runtime/Composer;I)V
    .locals 30

    move-object/from16 v1, p1

    move/from16 v9, p3

    const v0, 0x6861bc89

    move-object/from16 v2, p2

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    and-int/lit8 v2, v9, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-nez v2, :cond_2

    and-int/lit8 v2, v9, 0x8

    if-nez v2, :cond_0

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_0
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    or-int/2addr v2, v9

    goto :goto_2

    :cond_2
    move v2, v9

    :goto_2
    and-int/lit8 v5, v2, 0x3

    const/4 v7, 0x0

    if-eq v5, v3, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    move v5, v7

    :goto_3
    and-int/lit8 v8, v2, 0x1

    invoke-interface {v15, v5, v8}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    const/4 v8, -0x1

    if-eqz v5, :cond_4

    const-string v5, "androidx.compose.material3.DefaultModalWideNavigationRailOverride.ModalWideNavigationRail (WideNavigationRail.kt:503)"

    invoke-static {v0, v2, v8, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getShouldHideOnCollapse()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x5b58352

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getContent()Lbm3;

    move-result-object v0

    :goto_4
    move-object/from16 v18, v0

    goto :goto_5

    :cond_5
    const v0, 0x5b632aa

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getContent()Lbm3;

    move-result-object v0

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_6

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v5, v0, :cond_7

    :cond_6
    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getContent()Lbm3;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/MovableContentKt;->movableContentOf(Lbm3;)Lbm3;

    move-result-object v5

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    move-object v0, v5

    check-cast v0, Lbm3;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_4

    :goto_5
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    sget-object v5, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    const/4 v10, 0x6

    invoke-static {v5, v15, v10}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v5

    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getState()Landroidx/compose/material3/WideNavigationRailState;

    move-result-object v11

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_8

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v12, v11, :cond_9

    :cond_8
    new-instance v12, Landroidx/compose/material3/ModalWideNavigationRailState;

    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getState()Landroidx/compose/material3/WideNavigationRailState;

    move-result-object v11

    invoke-direct {v12, v11, v0, v5}, Landroidx/compose/material3/ModalWideNavigationRailState;-><init>(Landroidx/compose/material3/WideNavigationRailState;Landroidx/compose/ui/unit/Density;Landroidx/compose/animation/core/AnimationSpec;)V

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    move-object v0, v12

    check-cast v0, Landroidx/compose/material3/ModalWideNavigationRailState;

    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getState()Landroidx/compose/material3/WideNavigationRailState;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/material3/WideNavigationRailState;->getTargetValue()Landroidx/compose/material3/WideNavigationRailValue;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/material3/WideNavigationRailStateKt;->isExpanded(Landroidx/compose/material3/WideNavigationRailValue;)Z

    move-result v5

    const/4 v11, 0x0

    if-nez v5, :cond_a

    move v5, v11

    goto :goto_6

    :cond_a
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_6
    sget-object v12, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v12, v15, v10}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v12

    const/16 v16, 0x0

    const/16 v17, 0x1c

    move v13, v11

    move-object v11, v12

    const/4 v12, 0x0

    move v14, v13

    const/4 v13, 0x0

    move/from16 v19, v14

    const/4 v14, 0x0

    move v6, v10

    move v10, v5

    move/from16 v5, v19

    invoke-static/range {v10 .. v17}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lnl3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v10

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v11, v12, :cond_b

    new-instance v11, Lxh2;

    invoke-direct {v11, v10, v7}, Lxh2;-><init>(Ljava/lang/Object;I)V

    invoke-static {v11}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lll3;)Landroidx/compose/runtime/State;

    move-result-object v11

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v22, v11

    check-cast v22, Landroidx/compose/runtime/State;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v11, v12, :cond_c

    new-instance v11, Lkca;

    invoke-direct {v11, v10, v6}, Lkca;-><init>(Ljava/lang/Object;I)V

    invoke-static {v11}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lll3;)Landroidx/compose/runtime/State;

    move-result-object v11

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v23, v11

    check-cast v23, Landroidx/compose/runtime/State;

    and-int/lit8 v10, v2, 0xe

    if-eq v10, v4, :cond_e

    and-int/lit8 v11, v2, 0x8

    if-eqz v11, :cond_d

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    goto :goto_7

    :cond_d
    move v11, v7

    goto :goto_8

    :cond_e
    :goto_7
    const/4 v11, 0x1

    :goto_8
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v11, v12

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    if-nez v11, :cond_f

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v12, v11, :cond_10

    :cond_f
    new-instance v12, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$animateToDismiss$1$1;

    invoke-direct {v12, v1, v0, v13}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$animateToDismiss$1$1;-><init>(Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;Landroidx/compose/material3/ModalWideNavigationRailState;Le02;)V

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v24, v12

    check-cast v24, Lnl3;

    if-eq v10, v4, :cond_12

    and-int/lit8 v11, v2, 0x8

    if-eqz v11, :cond_11

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    goto :goto_9

    :cond_11
    move v11, v7

    goto :goto_a

    :cond_12
    :goto_9
    const/4 v11, 0x1

    :goto_a
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v11, v12

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_13

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v12, v11, :cond_14

    :cond_13
    new-instance v12, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$settleToDismiss$1$1;

    invoke-direct {v12, v1, v0, v13}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$settleToDismiss$1$1;-><init>(Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;Landroidx/compose/material3/ModalWideNavigationRailState;Le02;)V

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_14
    move-object/from16 v25, v12

    check-cast v25, Lbm3;

    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getShouldHideOnCollapse()Z

    move-result v11

    if-nez v11, :cond_15

    invoke-static/range {v22 .. v22}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;->ModalWideNavigationRail$lambda$4(Landroidx/compose/runtime/State;)Z

    move-result v11

    if-eqz v11, :cond_15

    const v11, 0x5ce3505

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    move v11, v10

    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getModifier()Landroidx/compose/ui/Modifier;

    move-result-object v10

    move-object v12, v13

    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getColors()Landroidx/compose/material3/WideNavigationRailColors;

    move-result-object v13

    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getCollapsedShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v14

    move-object/from16 v19, v15

    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getHeader()Lbm3;

    move-result-object v15

    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getWindowInsets()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v16

    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getArrangement()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v17

    const/16 v20, 0x1b0

    move/from16 v26, v11

    const/4 v11, 0x0

    move-object/from16 v27, v12

    const/4 v12, 0x0

    move/from16 v28, v26

    move-object/from16 v4, v27

    invoke-static/range {v10 .. v20}, Landroidx/compose/material3/WideNavigationRailKt;->access$WideNavigationRailLayout(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v15, v19

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_b

    :cond_15
    move/from16 v28, v10

    move-object v4, v13

    const v10, 0x5d42199

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_b
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v10, v11, :cond_16

    invoke-static {v8, v4, v4, v6}, Ll91;->a(ILcu0;Lnl3;I)Lmu0;

    move-result-object v10

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_16
    check-cast v10, Lx81;

    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getShouldHideOnCollapse()Z

    move-result v6

    if-eqz v6, :cond_19

    const v6, 0x5d5f6d6

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v6, v8

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_17

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v8, v6, :cond_18

    :cond_17
    new-instance v8, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$1$1;

    invoke-direct {v8, v10, v0, v4}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$1$1;-><init>(Lx81;Landroidx/compose/material3/ModalWideNavigationRailState;Le02;)V

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    check-cast v8, Lbm3;

    invoke-static {v10, v8, v15, v7}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_c

    :cond_19
    const v6, 0x5dc93d9

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_c
    invoke-static/range {v22 .. v22}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;->ModalWideNavigationRail$lambda$4(Landroidx/compose/runtime/State;)Z

    move-result v6

    if-nez v6, :cond_2e

    const v6, 0x5df2d80

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getShouldHideOnCollapse()Z

    move-result v6

    if-nez v6, :cond_1e

    const v6, 0x5de931b

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getColors()Landroidx/compose/material3/WideNavigationRailColors;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/material3/WideNavigationRailColors;->getContainerColor-0d7_KjU()J

    move-result-wide v11

    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getCollapsedShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v8

    invoke-static {v6, v11, v12, v8}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v8, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v8

    invoke-static {v8, v7}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    invoke-static {v15, v7}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v11

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v12

    invoke-static {v15, v6}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lll3;

    move-result-object v14

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v16

    if-nez v16, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    :cond_1a
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v16

    if-eqz v16, :cond_1b

    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->createNode(Lll3;)V

    goto :goto_d

    :cond_1b
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->useNode()V

    :goto_d
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v14

    invoke-static {v13, v14, v8, v14, v12}, Lcc;->b(Landroidx/compose/ui/node/ComposeUiNode$Companion;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/CompositionLocalMap;)Lbm3;

    move-result-object v8

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v12

    if-nez v12, :cond_1c

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v12, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    :cond_1c
    invoke-static {v8, v11, v14, v11}, Ldc;->b(Lbm3;ILandroidx/compose/runtime/Composer;I)V

    :cond_1d
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lbm3;

    move-result-object v7

    invoke-static {v14, v6, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lbm3;)V

    sget-object v6, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getModifier()Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {}, Landroidx/compose/material3/WideNavigationRailKt;->access$getCollapsedRailWidth$p()F

    move-result v7

    invoke-static {v6, v7, v5, v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v5, v7, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxHeight$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v15, v7}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endNode()V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_e

    :cond_1e
    const v6, 0x5e3b4f9

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_e
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_1f

    sget-object v6, Lgx2;->b:Lgx2;

    invoke-static {v6, v15}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lo22;Landroidx/compose/runtime/Composer;)Ly22;

    move-result-object v6

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1f
    check-cast v6, Ly22;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_20

    invoke-static {v5, v5, v3, v4}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v7

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_20
    move-object v4, v7

    check-cast v4, Landroidx/compose/animation/core/Animatable;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_21

    new-instance v3, Landroidx/compose/material3/RailPredictiveBackState;

    invoke-direct {v3}, Landroidx/compose/material3/RailPredictiveBackState;-><init>()V

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_21
    move-object v5, v3

    check-cast v5, Landroidx/compose/material3/RailPredictiveBackState;

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    move/from16 v11, v28

    const/4 v7, 0x4

    if-eq v11, v7, :cond_23

    and-int/lit8 v7, v2, 0x8

    if-eqz v7, :cond_22

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    goto :goto_f

    :cond_22
    const/4 v7, 0x0

    goto :goto_10

    :cond_23
    :goto_f
    const/4 v7, 0x1

    :goto_10
    or-int/2addr v3, v7

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_25

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v7, v3, :cond_24

    goto :goto_11

    :cond_24
    const/4 v3, 0x0

    goto :goto_12

    :cond_25
    :goto_11
    new-instance v7, Lyh2;

    const/4 v3, 0x0

    invoke-direct {v7, v3, v10, v1}, Lyh2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_12
    check-cast v7, Lll3;

    invoke-static {v7, v15, v3}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lll3;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v1}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->getExpandedProperties()Landroidx/compose/material3/ModalWideNavigationRailProperties;

    move-result-object v10

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x4

    if-eq v11, v7, :cond_27

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_26

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_13

    :cond_26
    const/4 v2, 0x0

    goto :goto_14

    :cond_27
    :goto_13
    const/4 v2, 0x1

    :goto_14
    or-int/2addr v2, v3

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_28

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_29

    :cond_28
    new-instance v3, Lx21;

    const/4 v7, 0x1

    invoke-direct {v3, v7, v6, v1}, Lx21;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_29
    move-object v11, v3

    check-cast v11, Lll3;

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_2a

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_2b

    :cond_2a
    new-instance v3, Lzh2;

    const/4 v7, 0x0

    invoke-direct {v3, v7, v6, v4}, Lzh2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2b
    move-object v12, v3

    check-cast v12, Lnl3;

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_2d

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_2c

    goto :goto_15

    :cond_2c
    const/4 v7, 0x1

    goto :goto_16

    :cond_2d
    :goto_15
    new-instance v3, Lwh0;

    const/4 v7, 0x1

    invoke-direct {v3, v7, v6, v4}, Lwh0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_16
    move-object v13, v3

    check-cast v13, Lll3;

    move-object v2, v0

    new-instance v0, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$7;

    move v14, v7

    move-object/from16 v7, v18

    move-object/from16 v8, v23

    move-object/from16 v3, v24

    move-object/from16 v6, v25

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$7;-><init>(Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;Landroidx/compose/material3/ModalWideNavigationRailState;Lnl3;Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;Lbm3;Landroidx/compose/runtime/State;)V

    move-object/from16 v29, v1

    move-object v1, v0

    move-object/from16 v0, v29

    const/16 v2, 0x36

    const v3, 0x502bc4ba

    invoke-static {v3, v14, v1, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    const v8, 0x36000

    move-object v2, v10

    move-object v1, v11

    move-object v3, v12

    move-object v4, v13

    move-object v7, v15

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/WideNavigationRail_androidKt;->ModalWideNavigationRailDialog(Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lnl3;Lll3;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_17

    :cond_2e
    move-object v0, v1

    const v1, 0x60a3eb9    # 2.6000997E-35f

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_17
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_18

    :cond_2f
    move-object v0, v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_30
    :goto_18
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_31

    new-instance v2, Lai2;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v0, v9}, Lai2;-><init>(Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;I)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_31
    return-void
.end method
