.class public final Landroidx/compose/animation/BoundsTransformDeferredAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private additionalOffset:J

.field private animatable:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/animation/core/AnimationVector4D;",
            ">;"
        }
    .end annotation
.end field

.field private final animatedValue$delegate:Landroidx/compose/runtime/MutableState;

.field private currentPosition:J

.field private currentSize:J

.field private directManipulationParents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;"
        }
    .end annotation
.end field

.field private isPending:Z

.field private lookaheadAnimationVisualDebugHelper:Landroidx/compose/animation/LookaheadAnimationVisualDebugHelper;

.field private targetOffset:J

.field private targetSize:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetSize:J

    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetOffset:J

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentPosition:J

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentSize:J

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v0, v2, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->animatedValue$delegate:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->additionalOffset:J

    return-void
.end method

.method private final animate(Ly22;Landroidx/compose/animation/BoundsTransform;)Landroidx/compose/ui/geometry/Rect;
    .locals 12

    iget-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetOffset:J

    const-wide v2, 0x7fffffff7fffffffL

    and-long/2addr v2, v0

    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetSize:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v6

    iget-object v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->animatable:Landroidx/compose/animation/core/Animatable;

    if-nez v0, :cond_0

    new-instance v5, Landroidx/compose/animation/core/Animatable;

    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-static {v0}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v7

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;ILjh2;)V

    move-object v0, v5

    :cond_0
    iput-object v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->animatable:Landroidx/compose/animation/core/Animatable;

    iget-boolean v1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->isPending:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->isPending:Z

    invoke-static {}, Landroidx/compose/animation/IsLookaheadAnimationVisualDebuggingEnabledKt;->isLookaheadAnimationVisualDebuggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->lookaheadAnimationVisualDebugHelper:Landroidx/compose/animation/LookaheadAnimationVisualDebugHelper;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->getCurrentBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, v2, v6}, Landroidx/compose/animation/BoundsTransform;->createAnimationSpec(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->getCurrentBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getVelocity()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v1, v2, v3, v6, v4}, Landroidx/compose/animation/LookaheadAnimationVisualDebugHelper;->calculatePath$animation(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)V

    :cond_1
    sget-object v1, Lc32;->UNDISPATCHED:Lc32;

    new-instance v5, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;

    const/4 v10, 0x0

    move-object v9, p0

    move-object v8, p2

    move-object v7, v6

    move-object v6, v0

    invoke-direct/range {v5 .. v10}, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/animation/BoundsTransform;Landroidx/compose/animation/BoundsTransformDeferredAnimation;Le02;)V

    const/4 p0, 0x1

    const/4 p2, 0x0

    invoke-static {p1, p2, v1, v5, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    goto :goto_0

    :cond_2
    move-object v9, p0

    :goto_0
    iget-object p0, v9, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->animatable:Landroidx/compose/animation/core/Animatable;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Rect;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    sget-object p0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method private final getAnimatedValue()Landroidx/compose/ui/geometry/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->animatedValue$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Rect;

    return-object p0
.end method

.method private final setAnimatedValue(Landroidx/compose/ui/geometry/Rect;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->animatedValue$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final updateTargetOffset-k-4lQ0M(J)V
    .locals 8

    iget-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetOffset:J

    const-wide v2, 0x7fffffff7fffffffL

    and-long/2addr v0, v2

    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide v0

    iget-wide v6, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetOffset:J

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->isPending:Z

    :cond_0
    iput-wide p1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetOffset:J

    iget-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentPosition:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iput-wide p1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentPosition:J

    :cond_1
    return-void
.end method


# virtual methods
.method public final getCurrentBounds()Landroidx/compose/ui/geometry/Rect;
    .locals 8

    iget-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentSize:J

    iget-wide v2, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentPosition:J

    const-wide v4, 0x7fffffff7fffffffL

    and-long/2addr v4, v2

    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long p0, v4, v6

    if-eqz p0, :cond_0

    cmp-long p0, v0, v6

    if-eqz p0, :cond_0

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCurrentSize-NH-jbRc()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentSize:J

    return-wide v0
.end method

.method public final getLookaheadAnimationVisualDebugHelper()Landroidx/compose/animation/LookaheadAnimationVisualDebugHelper;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->lookaheadAnimationVisualDebugHelper:Landroidx/compose/animation/LookaheadAnimationVisualDebugHelper;

    return-object p0
.end method

.method public final getTargetOffset-F1C5BW0()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetOffset:J

    return-wide v0
.end method

.method public final getTargetSize-NH-jbRc()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetSize:J

    return-wide v0
.end method

.method public final getValue()Landroidx/compose/ui/geometry/Rect;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->getAnimatedValue()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final isIdle()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->isPending:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->animatable:Landroidx/compose/animation/core/Animatable;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->isRunning()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setCurrentSize-uvyYCjk(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentSize:J

    return-void
.end method

.method public final setLookaheadAnimationVisualDebugHelper(Landroidx/compose/animation/LookaheadAnimationVisualDebugHelper;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->lookaheadAnimationVisualDebugHelper:Landroidx/compose/animation/LookaheadAnimationVisualDebugHelper;

    return-void
.end method

.method public final updateCurrentBounds-tz77jQw(JJ)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentPosition:J

    iput-wide p3, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentSize:J

    return-void
.end method

.method public final updateTargetOffsetAndAnimate(Landroidx/compose/ui/layout/LookaheadScope;Landroidx/compose/ui/layout/Placeable$PlacementScope;Ly22;ZZLandroidx/compose/animation/BoundsTransform;)V
    .locals 8

    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {p1, p2}, Landroidx/compose/ui/layout/LookaheadScope;->getLookaheadScopeCoordinates(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    sget-object p2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v3

    if-nez p5, :cond_7

    if-eqz p4, :cond_7

    iget-object p2, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->directManipulationParents:Ljava/util/List;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 p4, 0x0

    move-object v0, v2

    :cond_1
    invoke-interface {p1, v0}, Landroidx/compose/ui/layout/LookaheadScope;->toLookaheadCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v5

    invoke-static {v5, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getIntroducesMotionFrameOfReference()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, p4, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v3

    goto :goto_0

    :cond_2
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v3

    invoke-interface {p2, p4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v3

    :cond_3
    :goto_0
    add-int/lit8 p4, p4, 0x1

    :cond_4
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p4, v0, :cond_6

    :goto_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-eq v0, p4, :cond_6

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    iput-object p2, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->directManipulationParents:Ljava/util/List;

    :cond_7
    iget-wide v5, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->additionalOffset:J

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->additionalOffset:J

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p1

    move v5, p5

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/layout/LookaheadScope;->localLookaheadPositionOf-au-aQtc$default(Landroidx/compose/ui/layout/LookaheadScope;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;JZILjava/lang/Object;)J

    move-result-wide p1

    iget-wide p4, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->additionalOffset:J

    invoke-static {p1, p2, p4, p5}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->updateTargetOffset-k-4lQ0M(J)V

    invoke-direct {p0, p3, p6}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->animate(Ly22;Landroidx/compose/animation/BoundsTransform;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    iget-wide p2, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->additionalOffset:J

    const-wide p4, -0x7fffffff80000000L    # -1.0609978955E-314

    xor-long/2addr p2, p4

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->setAnimatedValue(Landroidx/compose/ui/geometry/Rect;)V

    :cond_8
    return-void
.end method

.method public final updateTargetSize-uvyYCjk(J)V
    .locals 6

    iget-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetSize:J

    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSizeKt;->roundToIntSize-uvyYCjk(J)J

    move-result-wide v0

    iget-wide v4, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetSize:J

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSizeKt;->roundToIntSize-uvyYCjk(J)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->isPending:Z

    :cond_0
    iput-wide p1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->targetSize:J

    iget-wide v0, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iput-wide p1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->currentSize:J

    :cond_1
    return-void
.end method
