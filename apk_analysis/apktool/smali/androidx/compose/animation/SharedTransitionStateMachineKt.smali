.class public final Landroidx/compose/animation/SharedTransitionStateMachineKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SharedTransitionDebug:Z = false


# direct methods
.method public static final synthetic access$obtainBoundsFromLastTarget(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsProvider;)Landroidx/compose/ui/geometry/Rect;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/animation/SharedTransitionStateMachineKt;->obtainBoundsFromLastTarget(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsProvider;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateTargetData-BGTQxF0(Landroidx/compose/animation/TargetData;JJJZ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Landroidx/compose/animation/SharedTransitionStateMachineKt;->updateTargetData-BGTQxF0(Landroidx/compose/animation/TargetData;JJJZ)V

    return-void
.end method

.method public static final calculateOffsetFromDirectManipulation(Landroidx/compose/animation/TargetData;Landroidx/compose/ui/geometry/Rect;)J
    .locals 4

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/compose/animation/TargetData;->getInitialMfrOffset-F1C5BW0()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/compose/animation/TargetData;->getCurrentMfrOffset-F1C5BW0()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getTargetBounds(Landroidx/compose/animation/TargetData;)Landroidx/compose/ui/geometry/Rect;
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/animation/TargetData;->getInitialMfrOffset-F1C5BW0()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/compose/animation/TargetData;->getTargetStructuralOffset-F1C5BW0()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/compose/animation/TargetData;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method private static final obtainBoundsFromLastTarget(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsProvider;)Landroidx/compose/ui/geometry/Rect;
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElement;->getAllEntries()Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v2}, Landroidx/compose/animation/SharedElementEntry;->getBoundsProvider()Landroidx/compose/animation/BoundsProvider;

    move-result-object v2

    invoke-static {v2, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Landroidx/compose/animation/BoundsProvider;->getLastBoundsInSharedTransitionScope()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final sharedTransitionDebug(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method private static final updateTargetData-BGTQxF0(Landroidx/compose/animation/TargetData;JJJZ)V
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/animation/TargetData;->getTargetStructuralOffset-F1C5BW0()J

    move-result-wide v0

    invoke-static {v0, v1, p5, p6}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/TargetData;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p7, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/TargetData;->setSize-uvyYCjk(J)V

    invoke-virtual {p0, p5, p6}, Landroidx/compose/animation/TargetData;->setTargetStructuralOffset-k-4lQ0M(J)V

    if-eqz p7, :cond_1

    invoke-static {p3, p4, p5, p6}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide p1

    invoke-virtual {p0}, Landroidx/compose/animation/TargetData;->getCurrentMfrOffset-F1C5BW0()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/compose/animation/TargetData;->getInitialMfrOffset-F1C5BW0()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/TargetData;->setInitialMfrOffset-k-4lQ0M(J)V

    :cond_1
    invoke-static {p3, p4, p5, p6}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/TargetData;->setCurrentMfrOffset-k-4lQ0M(J)V

    return-void
.end method
