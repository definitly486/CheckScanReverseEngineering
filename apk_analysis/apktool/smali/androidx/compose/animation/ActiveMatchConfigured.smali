.class public final Landroidx/compose/animation/ActiveMatchConfigured;
.super Landroidx/compose/animation/MatchIsOrHasBeenConfigured;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final currentBounds$delegate:Landroidx/compose/runtime/MutableState;

.field private final targetBoundsProvider$delegate:Landroidx/compose/runtime/MutableState;

.field private final targetData:Landroidx/compose/animation/TargetData;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/TargetData;Landroidx/compose/animation/BoundsProvider;Landroidx/compose/ui/geometry/Rect;)V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/animation/MatchIsOrHasBeenConfigured;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/ActiveMatchConfigured;->targetData:Landroidx/compose/animation/TargetData;

    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-static {p2, p1, v0, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/animation/ActiveMatchConfigured;->targetBoundsProvider$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p3, p1, v0, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/ActiveMatchConfigured;->currentBounds$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method private setCurrentBounds(Landroidx/compose/ui/geometry/Rect;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ActiveMatchConfigured;->currentBounds$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public configureActiveMatch-38uP1EE(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsProvider;JJJ)Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .locals 8

    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchConfigured;->getTargetBoundsProvider()Landroidx/compose/animation/BoundsProvider;

    move-result-object p1

    invoke-static {p1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 v7, p1, 0x1

    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchConfigured;->getTargetData()Landroidx/compose/animation/TargetData;

    move-result-object v0

    move-wide v1, p3

    move-wide v3, p5

    move-wide v5, p7

    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/SharedTransitionStateMachineKt;->access$updateTargetData-BGTQxF0(Landroidx/compose/animation/TargetData;JJJZ)V

    invoke-virtual {p0, p2}, Landroidx/compose/animation/ActiveMatchConfigured;->setTargetBoundsProvider(Landroidx/compose/animation/BoundsProvider;)V

    return-object p0
.end method

.method public getActiveMatchFound()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getCurrentBounds()Landroidx/compose/ui/geometry/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ActiveMatchConfigured;->currentBounds$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Rect;

    return-object p0
.end method

.method public final getTargetBoundsProvider()Landroidx/compose/animation/BoundsProvider;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ActiveMatchConfigured;->targetBoundsProvider$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/BoundsProvider;

    return-object p0
.end method

.method public getTargetData()Landroidx/compose/animation/TargetData;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ActiveMatchConfigured;->targetData:Landroidx/compose/animation/TargetData;

    return-object p0
.end method

.method public onMatchFound(Landroidx/compose/animation/BoundsProvider;)Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .locals 0

    return-object p0
.end method

.method public onVisibleContentRemovedDuringTransition()Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .locals 10

    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchConfigured;->getTargetData()Landroidx/compose/animation/TargetData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/TargetData;->getCurrentMfrOffset-F1C5BW0()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchConfigured;->getTargetData()Landroidx/compose/animation/TargetData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/animation/TargetData;->getTargetStructuralOffset-F1C5BW0()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchConfigured;->getTargetData()Landroidx/compose/animation/TargetData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/animation/TargetData;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchConfigured;->getTargetBoundsProvider()Landroidx/compose/animation/BoundsProvider;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/compose/animation/BoundsProvider;->calculateAlternativeTargetBounds(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Landroidx/compose/animation/NoMatchFound;->INSTANCE:Landroidx/compose/animation/NoMatchFound;

    return-object p0

    :cond_0
    move-object v1, v0

    new-instance v0, Landroidx/compose/animation/TargetData;

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v1

    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchConfigured;->getTargetData()Landroidx/compose/animation/TargetData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/animation/TargetData;->getInitialMfrOffset-F1C5BW0()J

    move-result-wide v4

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v6

    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchConfigured;->getTargetData()Landroidx/compose/animation/TargetData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/animation/TargetData;->getCurrentMfrOffset-F1C5BW0()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v6

    move-wide v3, v4

    move-wide v5, v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/TargetData;-><init>(JJJLjh2;)V

    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchConfigured;->getTargetData()Landroidx/compose/animation/TargetData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/animation/TargetData;->getCurrentMfrOffset-F1C5BW0()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/animation/TargetData;->setCurrentMfrOffset-k-4lQ0M(J)V

    new-instance v1, Landroidx/compose/animation/ActiveMatchRemovedDuringTransition;

    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchConfigured;->getCurrentBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Landroidx/compose/animation/ActiveMatchRemovedDuringTransition;-><init>(Landroidx/compose/animation/TargetData;Landroidx/compose/ui/geometry/Rect;)V

    return-object v1
.end method

.method public final setTargetBoundsProvider(Landroidx/compose/animation/BoundsProvider;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ActiveMatchConfigured;->targetBoundsProvider$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public updateBounds(Landroidx/compose/ui/geometry/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/animation/ActiveMatchConfigured;->setCurrentBounds(Landroidx/compose/ui/geometry/Rect;)V

    return-void
.end method
