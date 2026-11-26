.class public final Landroidx/compose/animation/SharedTransitionScope$SharedContentState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/SharedTransitionScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedContentState"
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final config$delegate:Landroidx/compose/runtime/MutableState;

.field private final internalState$delegate:Landroidx/compose/runtime/MutableState;

.field private final key:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->key:Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-static {p2, p1, v0, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->config$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1, p1, v0, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->internalState$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;ILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 20
    sget-object p2, Landroidx/compose/animation/SharedTransitionDefaults$SharedContentConfig;->INSTANCE:Landroidx/compose/animation/SharedTransitionDefaults$SharedContentConfig;

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;-><init>(Ljava/lang/Object;Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;)V

    return-void
.end method

.method private final getNonNullInternalState()Landroidx/compose/animation/SharedElementEntry;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->getInternalState$animation()Landroidx/compose/animation/SharedElementEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Error: SharedContentState has not been added to a sharedElement/sharedBoundsmodifier yet. Therefore the internal state has not been initialized."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getClipPathInOverlay()Landroidx/compose/ui/graphics/Path;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->getNonNullInternalState()Landroidx/compose/animation/SharedElementEntry;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getClipPathInOverlay$animation()Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public final getConfig$animation()Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->config$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;

    return-object p0
.end method

.method public final getInternalState$animation()Landroidx/compose/animation/SharedElementEntry;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->internalState$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/SharedElementEntry;

    return-object p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public final getParentSharedContentState()Landroidx/compose/animation/SharedTransitionScope$SharedContentState;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->getNonNullInternalState()Landroidx/compose/animation/SharedElementEntry;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getParentState()Landroidx/compose/animation/SharedElementEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getUserState()Landroidx/compose/animation/SharedTransitionScope$SharedContentState;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAnimating$animation()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->getInternalState$animation()Landroidx/compose/animation/SharedElementEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getBoundsAnimation()Landroidx/compose/animation/BoundsAnimation;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/BoundsAnimation;->getAnimationState()Landroidx/compose/runtime/State;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isEnabledByUser$animation()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->getConfig$animation()Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;->isEnabled(Landroidx/compose/animation/SharedTransitionScope$SharedContentState;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->isAnimating$animation()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;->getShouldKeepEnabledForOngoingAnimation()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isMatchFound()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->getInternalState$animation()Landroidx/compose/animation/SharedElementEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElement;->getFoundMatch()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final prepareTransitionWithInitialVelocity-TH1AsA0(J)V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->getNonNullInternalState()Landroidx/compose/animation/SharedElementEntry;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->getConfig$animation()Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;

    move-result-object v1

    invoke-interface {v1, p0}, Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;->isEnabled(Landroidx/compose/animation/SharedTransitionScope$SharedContentState;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/SharedElement;->updateExitVelocity-TH1AsA0$animation(J)V

    return-void
.end method

.method public final setConfig$animation(Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->config$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setInternalState$animation(Landroidx/compose/animation/SharedElementEntry;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->internalState$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
