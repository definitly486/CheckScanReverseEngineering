.class public final Landroidx/compose/animation/SharedElement;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final _allEntries$delegate:Landroidx/compose/runtime/MutableState;

.field private final _enabledEntries$delegate:Landroidx/compose/runtime/MutableState;

.field private animationSpecFinalized:Z

.field private final key:Ljava/lang/Object;

.field private final momentumAnimation:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation
.end field

.field private final momentumAnimationOffset:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field private final observingVisibilityChange:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final scope:Landroidx/compose/animation/SharedTransitionScopeImpl;

.field private final stateMachine:Landroidx/compose/animation/SharedTransitionStateMachine;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/SharedTransitionScopeImpl;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/SharedElement;->key:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/animation/SharedElement;->scope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    new-instance p1, Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-direct {p1, p0}, Landroidx/compose/animation/SharedTransitionStateMachine;-><init>(Landroidx/compose/animation/SharedElement;)V

    iput-object p1, p0, Landroidx/compose/animation/SharedElement;->stateMachine:Landroidx/compose/animation/SharedTransitionStateMachine;

    sget-object p1, Lkx2;->b:Lkx2;

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/animation/SharedElement;->_allEntries$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/SharedElement;->_enabledEntries$delegate:Landroidx/compose/runtime/MutableState;

    new-instance v0, Landroidx/compose/animation/core/Animatable;

    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    invoke-static {p1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;ILjh2;)V

    iput-object v0, p0, Landroidx/compose/animation/SharedElement;->momentumAnimation:Landroidx/compose/animation/core/Animatable;

    new-instance p1, Landroidx/compose/animation/SharedElement$momentumAnimationOffset$1;

    invoke-direct {p1, p0}, Landroidx/compose/animation/SharedElement$momentumAnimationOffset$1;-><init>(Landroidx/compose/animation/SharedElement;)V

    iput-object p1, p0, Landroidx/compose/animation/SharedElement;->momentumAnimationOffset:Lll3;

    new-instance p1, Landroidx/compose/animation/SharedElement$observingVisibilityChange$1;

    invoke-direct {p1, p0}, Landroidx/compose/animation/SharedElement$observingVisibilityChange$1;-><init>(Landroidx/compose/animation/SharedElement;)V

    iput-object p1, p0, Landroidx/compose/animation/SharedElement;->observingVisibilityChange:Lll3;

    return-void
.end method

.method public static final synthetic access$getAnimationSpecFinalized$p(Landroidx/compose/animation/SharedElement;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/animation/SharedElement;->animationSpecFinalized:Z

    return p0
.end method

.method public static final synthetic access$getMomentumAnimation$p(Landroidx/compose/animation/SharedElement;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->momentumAnimation:Landroidx/compose/animation/core/Animatable;

    return-object p0
.end method

.method public static final synthetic access$setAnimationSpecFinalized$p(Landroidx/compose/animation/SharedElement;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/animation/SharedElement;->animationSpecFinalized:Z

    return-void
.end method

.method private final get_allEntries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/animation/SharedElementEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->_allEntries$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final get_enabledEntries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/animation/SharedElementEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->_enabledEntries$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final set_allEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/animation/SharedElementEntry;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->_allEntries$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final set_enabledEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/animation/SharedElementEntry;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->_enabledEntries$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addEntry(Landroidx/compose/animation/SharedElementEntry;)V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/animation/SharedElement;->get_allEntries()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1, v0}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/animation/SharedElement;->set_allEntries(Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElement;->updateMatch$animation()V

    return-void
.end method

.method public final getAllEntries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/animation/SharedElementEntry;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/animation/SharedElement;->get_allEntries()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getBoundsTransformIsActive()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElement;->getState$animation()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->getMatchIsOrHasBeenConfigured()Z

    move-result p0

    return p0
.end method

.method public final getEnabledEntries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/animation/SharedElementEntry;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/animation/SharedElement;->get_enabledEntries()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getFoundMatch()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElement;->getState$animation()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->getActiveMatchFound()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElement;->getState$animation()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->getMatchIsOrHasBeenConfigured()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->stateMachine:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->getActiveMatchDeferred()Z

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

.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public final getMomentumAnimationOffset()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->momentumAnimationOffset:Lll3;

    return-object p0
.end method

.method public final getObservingVisibilityChange$animation()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->observingVisibilityChange:Lll3;

    return-object p0
.end method

.method public final getScope()Landroidx/compose/animation/SharedTransitionScopeImpl;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->scope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    return-object p0
.end method

.method public final getState$animation()Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->stateMachine:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->getState()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object p0

    return-object p0
.end method

.method public final invalidateTargetBoundsProvider()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->stateMachine:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->invalidateTargetBoundsProvider()V

    return-void
.end method

.method public final isAnimating()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElement;->getEnabledEntries()Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v3}, Landroidx/compose/animation/SharedElementEntry;->getBoundsAnimation()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/animation/BoundsAnimation;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final onLookaheadPlaced(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/animation/SharedElementEntry;)V
    .locals 13

    iget-object v0, p0, Landroidx/compose/animation/SharedElement;->stateMachine:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine;->processPendingRequest()V

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElement;->getState$animation()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    sget-object v1, Landroidx/compose/animation/NoMatchFound;->INSTANCE:Landroidx/compose/animation/NoMatchFound;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroidx/compose/animation/SharedElementEntry;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElement;->getState$animation()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/compose/animation/SharedElementEntry;->getBoundsAnimation()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/animation/BoundsAnimation;->getTarget()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->getActiveMatchFound()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v9

    invoke-virtual {p2}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object p1

    iget-object v1, p1, Landroidx/compose/animation/SharedElement;->scope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {p2}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object p1

    iget-object p1, p1, Landroidx/compose/animation/SharedElement;->scope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {p1}, Landroidx/compose/animation/SharedTransitionScopeImpl;->getLookaheadRoot$animation()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p1

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/layout/LookaheadScope;->localLookaheadPositionOf-au-aQtc$default(Landroidx/compose/ui/layout/LookaheadScope;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;JZILjava/lang/Object;)J

    move-result-wide v11

    move-object v2, v3

    invoke-virtual {p2}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object p1

    iget-object p1, p1, Landroidx/compose/animation/SharedElement;->scope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {p2}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object p1

    iget-object p1, p1, Landroidx/compose/animation/SharedElement;->scope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {p1}, Landroidx/compose/animation/SharedTransitionScopeImpl;->getLookaheadRoot$animation()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-S_NoaFU$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;JZILjava/lang/Object;)J

    move-result-wide p1

    iget-object v3, p0, Landroidx/compose/animation/SharedElement;->stateMachine:Landroidx/compose/animation/SharedTransitionStateMachine;

    move-wide v4, v9

    move-wide v6, v11

    move-wide v8, p1

    invoke-virtual/range {v3 .. v9}, Landroidx/compose/animation/SharedTransitionStateMachine;->configureActiveMatch-L7TYDSY(JJJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSharedTransitionFinished()V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElement;->getEnabledEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElement;->getEnabledEntries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/animation/SharedElementKt;->access$hasVisibleContent(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->stateMachine:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->resetState()V

    return-void
.end method

.method public final removeEntry(Landroidx/compose/animation/SharedElementEntry;)V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/animation/SharedElement;->get_allEntries()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lqn1;->f0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/animation/SharedElement;->set_allEntries(Ljava/util/List;)V

    invoke-direct {p0}, Landroidx/compose/animation/SharedElement;->get_enabledEntries()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lqn1;->f0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/animation/SharedElement;->set_enabledEntries(Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElement;->updateMatch$animation()V

    return-void
.end method

.method public final tryInitializingCurrentBounds()Landroidx/compose/ui/geometry/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->stateMachine:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->tryInitializingCurrentBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final updateExitVelocity-TH1AsA0$animation(J)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/animation/SharedElement;->scope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->getCoroutineScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/compose/animation/SharedElement$updateExitVelocity$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/compose/animation/SharedElement$updateExitVelocity$1;-><init>(Landroidx/compose/animation/SharedElement;JLe02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public final updateMatch$animation()V
    .locals 7

    iget-object v0, p0, Landroidx/compose/animation/SharedElement;->scope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->getTestBlockToRun()Lll3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-direct {p0}, Landroidx/compose/animation/SharedElement;->get_allEntries()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v5}, Landroidx/compose/animation/SharedElementEntry;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroidx/compose/animation/SharedElementEntry;->getBoundsAnimation()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/animation/BoundsAnimation;->getTarget()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Landroidx/compose/animation/SharedElement;->set_enabledEntries(Ljava/util/List;)V

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->stateMachine:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {p0, v4}, Landroidx/compose/animation/SharedTransitionStateMachine;->checkForAndDeferStateUpdates(Z)V

    return-void
.end method
