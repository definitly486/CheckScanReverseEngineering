.class public final Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lul2;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Ldm3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)Lbm3;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;->expandOrCollapseIndicator__jt2gSs$lambda$1$1(Ldm3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)Lbm3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ldm3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)Lbm3;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;->expandIndicator$lambda$0(Ldm3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)Lbm3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ldm3;Landroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;->expandOrCollapseIndicator__jt2gSs$lambda$1$1$0(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ldm3;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ldm3;Landroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;->expandOrCollapseIndicator__jt2gSs$lambda$1$0$0(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ldm3;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ldm3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)Lbm3;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;->expandOrCollapseIndicator__jt2gSs$lambda$1$0(Ldm3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)Lbm3;

    move-result-object p0

    return-object p0
.end method

.method private static final expandIndicator$lambda$0(Ldm3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)Lbm3;
    .locals 2

    new-instance v0, Lxz1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0}, Lxz1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const p0, 0x45f806f1

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p0

    return-object p0
.end method

.method private static final expandIndicator$lambda$0$0(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ldm3;Landroidx/compose/runtime/Composer;I)Lj59;
    .locals 4

    and-int/lit8 v0, p3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v1, p3, 0x1

    invoke-interface {p2, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.layout.ContextualFlowRowOverflow.Companion.expandIndicator.<anonymous>.<anonymous> (FlowLayoutOverflow.kt:366)"

    const v3, 0x45f806f1

    invoke-static {v3, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    new-instance p3, Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScopeImpl;

    invoke-direct {p3, p0}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScopeImpl;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p3, p2, p0}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_3
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final expandOrCollapseIndicator__jt2gSs$lambda$1$0(Ldm3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)Lbm3;
    .locals 2

    new-instance v0, Lc02;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0}, Lc02;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const p0, 0x779a2468

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p0

    return-object p0
.end method

.method private static final expandOrCollapseIndicator__jt2gSs$lambda$1$0$0(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ldm3;Landroidx/compose/runtime/Composer;I)Lj59;
    .locals 4

    and-int/lit8 v0, p3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v1, p3, 0x1

    invoke-interface {p2, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.layout.ContextualFlowRowOverflow.Companion.expandOrCollapseIndicator.<anonymous>.<anonymous>.<anonymous> (FlowLayoutOverflow.kt:416)"

    const v3, 0x779a2468

    invoke-static {v3, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    new-instance p3, Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScopeImpl;

    invoke-direct {p3, p0}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScopeImpl;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p3, p2, p0}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_3
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final expandOrCollapseIndicator__jt2gSs$lambda$1$1(Ldm3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)Lbm3;
    .locals 2

    new-instance v0, Lb02;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lb02;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ldm3;I)V

    const p0, -0x257ac07f

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p0

    return-object p0
.end method

.method private static final expandOrCollapseIndicator__jt2gSs$lambda$1$1$0(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ldm3;Landroidx/compose/runtime/Composer;I)Lj59;
    .locals 4

    and-int/lit8 v0, p3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v1, p3, 0x1

    invoke-interface {p2, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.layout.ContextualFlowRowOverflow.Companion.expandOrCollapseIndicator.<anonymous>.<anonymous>.<anonymous> (FlowLayoutOverflow.kt:423)"

    const v3, -0x257ac07f

    invoke-static {v3, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    new-instance p3, Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScopeImpl;

    invoke-direct {p3, p0}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScopeImpl;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p3, p2, p0}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_3
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic f(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ldm3;Landroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;->expandIndicator$lambda$0$0(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ldm3;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getClip$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getVisible$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final expandIndicator(Ldm3;)Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)",
            "Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;"
        }
    .end annotation

    new-instance v4, Lyz1;

    const/4 p0, 0x0

    invoke-direct {v4, p1, p0}, Lyz1;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;

    sget-object v1, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    const/16 v6, 0x16

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;IILnl3;Lnl3;ILjh2;)V

    return-object v0
.end method

.method public final expandOrCollapseIndicator--jt2gSs(Ldm3;Ldm3;IFLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/ContextualFlowRowOverflowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;IF",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;"
        }
    .end annotation

    and-int/lit8 p0, p7, 0x4

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p3

    :goto_0
    and-int/lit8 p0, p7, 0x8

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p4

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, -0x1

    const-string p3, "androidx.compose.foundation.layout.ContextualFlowRowOverflow.Companion.expandOrCollapseIndicator (FlowLayoutOverflow.kt:405)"

    const p7, 0x6b6f7116

    invoke-static {p7, p6, p0, p3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p0

    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, p4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    and-int/lit16 p0, p6, 0x380

    xor-int/lit16 p0, p0, 0x180

    const/16 p3, 0x100

    const/4 p4, 0x0

    if-le p0, p3, :cond_3

    invoke-interface {p5, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    and-int/lit16 p0, p6, 0x180

    if-ne p0, p3, :cond_5

    :cond_4
    move p0, v0

    goto :goto_1

    :cond_5
    move p0, p4

    :goto_1
    invoke-interface {p5, v4}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result p3

    or-int/2addr p0, p3

    and-int/lit8 p3, p6, 0xe

    xor-int/lit8 p3, p3, 0x6

    const/4 p7, 0x4

    if-le p3, p7, :cond_6

    invoke-interface {p5, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    :cond_6
    and-int/lit8 p3, p6, 0x6

    if-ne p3, p7, :cond_8

    :cond_7
    move p3, v0

    goto :goto_2

    :cond_8
    move p3, p4

    :goto_2
    or-int/2addr p0, p3

    and-int/lit8 p3, p6, 0x70

    xor-int/lit8 p3, p3, 0x30

    const/16 p7, 0x20

    if-le p3, p7, :cond_9

    invoke-interface {p5, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    :cond_9
    and-int/lit8 p3, p6, 0x30

    if-ne p3, p7, :cond_a

    goto :goto_3

    :cond_a
    move v0, p4

    :cond_b
    :goto_3
    or-int/2addr p0, v0

    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p3

    if-nez p0, :cond_c

    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    if-ne p3, p0, :cond_d

    :cond_c
    new-instance v5, Lzz1;

    invoke-direct {v5, p1, p4}, Lzz1;-><init>(Ldm3;I)V

    new-instance v6, La02;

    invoke-direct {v6, p2, p4}, La02;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;

    sget-object v2, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandOrCollapseIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;IILnl3;Lnl3;Ljh2;)V

    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object p3, v1

    :cond_d
    check-cast p3, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_e
    return-object p3
.end method

.method public final getClip()Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;
    .locals 0

    invoke-static {}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;->access$getClip$cp()Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;

    move-result-object p0

    return-object p0
.end method

.method public final getVisible()Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;
    .locals 0

    invoke-static {}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;->access$getVisible$cp()Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;

    move-result-object p0

    return-object p0
.end method
