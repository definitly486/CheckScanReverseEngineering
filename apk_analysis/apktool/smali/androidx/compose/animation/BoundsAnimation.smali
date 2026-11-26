.class public final Landroidx/compose/animation/BoundsAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final animation$delegate:Landroidx/compose/runtime/MutableState;

.field private animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final animationState$delegate:Landroidx/compose/runtime/MutableState;

.field private final boundsTransform$delegate:Landroidx/compose/runtime/MutableState;

.field private final momentumOffset:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field private final transition:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final transitionScope:Landroidx/compose/animation/SharedTransitionScope;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SharedTransitionScope;Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/BoundsTransform;Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/SharedTransitionScope;",
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Boolean;",
            ">.DeferredAnimation<",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/animation/core/AnimationVector4D;",
            ">;",
            "Landroidx/compose/animation/BoundsTransform;",
            "Lll3<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/BoundsAnimation;->transitionScope:Landroidx/compose/animation/SharedTransitionScope;

    iput-object p2, p0, Landroidx/compose/animation/BoundsAnimation;->transition:Landroidx/compose/animation/core/Transition;

    iput-object p5, p0, Landroidx/compose/animation/BoundsAnimation;->momentumOffset:Lll3;

    const/4 p1, 0x0

    const/4 p2, 0x2

    invoke-static {p3, p1, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/animation/BoundsAnimation;->animation$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p4, p1, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/animation/BoundsAnimation;->boundsTransform$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {}, Landroidx/compose/animation/BoundsAnimationKt;->access$getDefaultBoundsAnimation$p()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/animation/BoundsAnimation;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/BoundsAnimation;->animationState$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public static synthetic animate$default(Landroidx/compose/animation/BoundsAnimation;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/animation/BoundsTransform;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/animation/BoundsAnimation;->animate(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/animation/BoundsTransform;)V

    return-void
.end method

.method private final getBoundsTransform()Landroidx/compose/animation/BoundsTransform;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimation;->boundsTransform$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/BoundsTransform;

    return-object p0
.end method

.method private final setAnimation(Landroidx/compose/animation/core/Transition$DeferredAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Boolean;",
            ">.DeferredAnimation<",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/animation/core/AnimationVector4D;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimation;->animation$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setBoundsTransform(Landroidx/compose/animation/BoundsTransform;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimation;->boundsTransform$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final animate(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/animation/BoundsTransform;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/animation/BoundsAnimation;->transitionScope:Landroidx/compose/animation/SharedTransitionScope;

    invoke-interface {v0}, Landroidx/compose/animation/SharedTransitionScope;->isTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/animation/BoundsAnimation;->getAnimationState()Landroidx/compose/runtime/State;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    invoke-direct {p0}, Landroidx/compose/animation/BoundsAnimation;->getBoundsTransform()Landroidx/compose/animation/BoundsTransform;

    move-result-object p3

    :cond_0
    invoke-interface {p3, p1, p2}, Landroidx/compose/animation/BoundsTransform;->createAnimationSpec(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/animation/BoundsAnimation;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/animation/BoundsAnimation;->getAnimation()Landroidx/compose/animation/core/Transition$DeferredAnimation;

    move-result-object p3

    new-instance v0, Landroidx/compose/animation/BoundsAnimation$animate$1;

    invoke-direct {v0, p0}, Landroidx/compose/animation/BoundsAnimation$animate$1;-><init>(Landroidx/compose/animation/BoundsAnimation;)V

    new-instance v1, Landroidx/compose/animation/BoundsAnimation$animate$2;

    invoke-direct {v1, p0, p2, p1}, Landroidx/compose/animation/BoundsAnimation$animate$2;-><init>(Landroidx/compose/animation/BoundsAnimation;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)V

    invoke-virtual {p3, v0, v1}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lnl3;Lnl3;)Landroidx/compose/runtime/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/animation/BoundsAnimation;->setAnimationState(Landroidx/compose/runtime/State;)V

    :cond_2
    return-void
.end method

.method public final getAnimation()Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Boolean;",
            ">.DeferredAnimation<",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/animation/core/AnimationVector4D;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimation;->animation$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    return-object p0
.end method

.method public final getAnimationSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimation;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-object p0
.end method

.method public final getAnimationState()Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimation;->animationState$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/State;

    return-object p0
.end method

.method public final getMomentumOffset()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimation;->momentumOffset:Lll3;

    return-object p0
.end method

.method public final getTarget()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimation;->transition:Landroidx/compose/animation/core/Transition;

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getTransition()Landroidx/compose/animation/core/Transition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimation;->transition:Landroidx/compose/animation/core/Transition;

    return-object p0
.end method

.method public final getTransitionScope()Landroidx/compose/animation/SharedTransitionScope;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimation;->transitionScope:Landroidx/compose/animation/SharedTransitionScope;

    return-object p0
.end method

.method public final getValue()Landroidx/compose/ui/geometry/Rect;
    .locals 5

    iget-object v0, p0, Landroidx/compose/animation/BoundsAnimation;->transitionScope:Landroidx/compose/animation/SharedTransitionScope;

    invoke-interface {v0}, Landroidx/compose/animation/SharedTransitionScope;->isTransitionActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/animation/BoundsAnimation;->getAnimationState()Landroidx/compose/runtime/State;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimation;->momentumOffset:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v1

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0

    :cond_1
    return-object v1
.end method

.method public final isRunning()Z
    .locals 1

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimation;->transition:Landroidx/compose/animation/core/Transition;

    :goto_0
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getParentTransition()Landroidx/compose/animation/core/Transition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getParentTransition()Landroidx/compose/animation/core/Transition;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final setAnimationSpec(Landroidx/compose/animation/core/FiniteAnimationSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/BoundsAnimation;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-void
.end method

.method public final setAnimationState(Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimation;->animationState$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateAnimation(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/BoundsTransform;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Boolean;",
            ">.DeferredAnimation<",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/animation/core/AnimationVector4D;",
            ">;",
            "Landroidx/compose/animation/BoundsTransform;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/animation/BoundsAnimation;->getAnimation()Landroidx/compose/animation/core/Transition$DeferredAnimation;

    move-result-object v0

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/compose/animation/BoundsAnimation;->setAnimation(Landroidx/compose/animation/core/Transition$DeferredAnimation;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/compose/animation/BoundsAnimation;->setAnimationState(Landroidx/compose/runtime/State;)V

    invoke-static {}, Landroidx/compose/animation/BoundsAnimationKt;->access$getDefaultBoundsAnimation$p()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/BoundsAnimation;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/animation/BoundsAnimation;->setBoundsTransform(Landroidx/compose/animation/BoundsTransform;)V

    return-void
.end method
