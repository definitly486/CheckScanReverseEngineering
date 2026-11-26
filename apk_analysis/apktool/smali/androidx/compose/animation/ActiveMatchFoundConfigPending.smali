.class public final Landroidx/compose/animation/ActiveMatchFoundConfigPending;
.super Landroidx/compose/animation/SharedTransitionStateMachine$State;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final currentBounds$delegate:Landroidx/compose/runtime/MutableState;

.field private targetBoundsProviderBeforeConfig:Landroidx/compose/animation/BoundsProvider;

.field private final targetData:Landroidx/compose/animation/TargetData;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/BoundsProvider;Landroidx/compose/animation/TargetData;Landroidx/compose/ui/geometry/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/animation/SharedTransitionStateMachine$State;-><init>(Ljh2;)V

    iput-object p1, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->targetBoundsProviderBeforeConfig:Landroidx/compose/animation/BoundsProvider;

    iput-object p2, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->targetData:Landroidx/compose/animation/TargetData;

    const/4 p1, 0x2

    invoke-static {p3, v0, p1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->currentBounds$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/BoundsProvider;Landroidx/compose/animation/TargetData;Landroidx/compose/ui/geometry/Rect;ILjh2;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/ActiveMatchFoundConfigPending;-><init>(Landroidx/compose/animation/BoundsProvider;Landroidx/compose/animation/TargetData;Landroidx/compose/ui/geometry/Rect;)V

    return-void
.end method

.method private setCurrentBounds(Landroidx/compose/ui/geometry/Rect;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->currentBounds$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public configureActiveMatch-38uP1EE(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsProvider;JJJ)Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .locals 10

    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->getTargetData()Landroidx/compose/animation/TargetData;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroidx/compose/animation/TargetData;

    invoke-static/range {p5 .. p8}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v4

    const/4 v8, 0x0

    move-wide v2, p3

    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v8}, Landroidx/compose/animation/TargetData;-><init>(JJJLjh2;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->getCurrentBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object p0, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->targetBoundsProviderBeforeConfig:Landroidx/compose/animation/BoundsProvider;

    if-nez p0, :cond_4

    invoke-virtual {p1}, Landroidx/compose/animation/SharedElement;->getAllEntries()Ljava/util/List;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v1, :cond_2

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {p1}, Landroidx/compose/animation/SharedElement;->getEnabledEntries()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v6, v5

    :goto_1
    check-cast v6, Landroidx/compose/animation/SharedElementEntry;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroidx/compose/animation/SharedElementEntry;->getBoundsProvider()Landroidx/compose/animation/BoundsProvider;

    move-result-object p0

    goto :goto_2

    :cond_3
    move-object p0, v5

    :cond_4
    :goto_2
    invoke-static {p1, p0}, Landroidx/compose/animation/SharedTransitionStateMachineKt;->access$obtainBoundsFromLastTarget(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsProvider;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    if-nez v1, :cond_5

    move-wide v5, p5

    invoke-static {v5, v6, p3, p4}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    goto :goto_3

    :cond_5
    move-wide v5, p5

    :goto_3
    const/4 v9, 0x1

    move-wide v3, p3

    move-wide/from16 v7, p7

    move-object v2, v0

    invoke-static/range {v2 .. v9}, Landroidx/compose/animation/SharedTransitionStateMachineKt;->access$updateTargetData-BGTQxF0(Landroidx/compose/animation/TargetData;JJJZ)V

    new-instance p0, Landroidx/compose/animation/ActiveMatchConfigured;

    invoke-direct {p0, v2, p2, v1}, Landroidx/compose/animation/ActiveMatchConfigured;-><init>(Landroidx/compose/animation/TargetData;Landroidx/compose/animation/BoundsProvider;Landroidx/compose/ui/geometry/Rect;)V

    return-object p0
.end method

.method public getActiveMatchFound()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getCurrentBounds()Landroidx/compose/ui/geometry/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->currentBounds$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Rect;

    return-object p0
.end method

.method public final getTargetBoundsProviderBeforeConfig()Landroidx/compose/animation/BoundsProvider;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->targetBoundsProviderBeforeConfig:Landroidx/compose/animation/BoundsProvider;

    return-object p0
.end method

.method public getTargetData()Landroidx/compose/animation/TargetData;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->targetData:Landroidx/compose/animation/TargetData;

    return-object p0
.end method

.method public initializeCurrentBounds(Landroidx/compose/animation/SharedElement;)Landroidx/compose/ui/geometry/Rect;
    .locals 7

    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->getCurrentBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->getCurrentBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->targetBoundsProviderBeforeConfig:Landroidx/compose/animation/BoundsProvider;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroidx/compose/animation/SharedElement;->getAllEntries()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {p1}, Landroidx/compose/animation/SharedElement;->getEnabledEntries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_1
    check-cast v4, Landroidx/compose/animation/SharedElementEntry;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroidx/compose/animation/SharedElementEntry;->getBoundsProvider()Landroidx/compose/animation/BoundsProvider;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v3

    :cond_4
    :goto_2
    invoke-static {p1, v0}, Landroidx/compose/animation/SharedTransitionStateMachineKt;->access$obtainBoundsFromLastTarget(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsProvider;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->setCurrentBounds(Landroidx/compose/ui/geometry/Rect;)V

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->getCurrentBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public onMatchFound(Landroidx/compose/animation/BoundsProvider;)Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->targetBoundsProviderBeforeConfig:Landroidx/compose/animation/BoundsProvider;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->targetBoundsProviderBeforeConfig:Landroidx/compose/animation/BoundsProvider;

    :cond_0
    return-object p0
.end method

.method public onVisibleContentRemovedDuringTransition()Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .locals 0

    sget-object p0, Landroidx/compose/animation/NoMatchFound;->INSTANCE:Landroidx/compose/animation/NoMatchFound;

    return-object p0
.end method

.method public final setTargetBoundsProviderBeforeConfig(Landroidx/compose/animation/BoundsProvider;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->targetBoundsProviderBeforeConfig:Landroidx/compose/animation/BoundsProvider;

    return-void
.end method

.method public updateBounds(Landroidx/compose/ui/geometry/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->setCurrentBounds(Landroidx/compose/ui/geometry/Rect;)V

    return-void
.end method
