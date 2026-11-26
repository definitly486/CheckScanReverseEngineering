.class public final Landroidx/compose/animation/ActiveMatchRemovedDuringTransition;
.super Landroidx/compose/animation/MatchIsOrHasBeenConfigured;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private alternativeTargetConfigured:Z

.field private final currentBounds$delegate:Landroidx/compose/runtime/MutableState;

.field private final targetData:Landroidx/compose/animation/TargetData;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/TargetData;Landroidx/compose/ui/geometry/Rect;)V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/animation/MatchIsOrHasBeenConfigured;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/ActiveMatchRemovedDuringTransition;->targetData:Landroidx/compose/animation/TargetData;

    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-static {p2, p1, v0, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/ActiveMatchRemovedDuringTransition;->currentBounds$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method private setCurrentBounds(Landroidx/compose/ui/geometry/Rect;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ActiveMatchRemovedDuringTransition;->currentBounds$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getAlternativeTargetConfigured()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/animation/ActiveMatchRemovedDuringTransition;->alternativeTargetConfigured:Z

    return p0
.end method

.method public getCurrentBounds()Landroidx/compose/ui/geometry/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ActiveMatchRemovedDuringTransition;->currentBounds$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Rect;

    return-object p0
.end method

.method public getTargetData()Landroidx/compose/animation/TargetData;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ActiveMatchRemovedDuringTransition;->targetData:Landroidx/compose/animation/TargetData;

    return-object p0
.end method

.method public onMatchFound(Landroidx/compose/animation/BoundsProvider;)Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .locals 2

    new-instance v0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;

    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchRemovedDuringTransition;->getTargetData()Landroidx/compose/animation/TargetData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchRemovedDuringTransition;->getCurrentBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Landroidx/compose/animation/ActiveMatchFoundConfigPending;-><init>(Landroidx/compose/animation/BoundsProvider;Landroidx/compose/animation/TargetData;Landroidx/compose/ui/geometry/Rect;)V

    return-object v0
.end method

.method public onVisibleContentRemovedDuringTransition()Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .locals 0

    return-object p0
.end method

.method public final setAlternativeTargetConfigured(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/animation/ActiveMatchRemovedDuringTransition;->alternativeTargetConfigured:Z

    return-void
.end method

.method public updateBounds(Landroidx/compose/ui/geometry/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/animation/ActiveMatchRemovedDuringTransition;->setCurrentBounds(Landroidx/compose/ui/geometry/Rect;)V

    return-void
.end method
