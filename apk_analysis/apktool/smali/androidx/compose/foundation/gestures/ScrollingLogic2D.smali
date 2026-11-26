.class final Landroidx/compose/foundation/gestures/ScrollingLogic2D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollLogic;


# instance fields
.field private flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field private isFlinging:Z

.field private final isScrollableNodeAttached:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private latestScrollSource:I

.field private nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

.field private final nestedScrollScope:Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;

.field private outerStateScope:Landroidx/compose/foundation/gestures/Scroll2DScope;

.field private overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

.field private final performScrollForOverscroll:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field private scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/Scrollable2DState;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/Scrollable2DState;",
            "Landroidx/compose/foundation/OverscrollEffect;",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iput-object p5, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->isScrollableNodeAttached:Lll3;

    sget-object p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getUserInput-WNlRxjI()I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->latestScrollSource:I

    invoke-static {}, Landroidx/compose/foundation/gestures/Scrollable2DKt;->access$getNoOpScrollScope$p()Landroidx/compose/foundation/gestures/Scroll2DScope;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->outerStateScope:Landroidx/compose/foundation/gestures/Scroll2DScope;

    new-instance p1, Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->nestedScrollScope:Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;

    new-instance p1, Landroidx/compose/foundation/gestures/z;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/gestures/z;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->performScrollForOverscroll:Lnl3;

    return-void
.end method

.method public static synthetic a(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Landroidx/compose/ui/geometry/Offset;)Landroidx/compose/ui/geometry/Offset;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->performScrollForOverscroll$lambda$0(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Landroidx/compose/ui/geometry/Offset;)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$doFlingAnimation_QWom1Mo$toDecomposedOffset(FJ)J
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->doFlingAnimation_QWom1Mo$toDecomposedOffset(FJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$doFlingAnimation_QWom1Mo$toDecomposedVelocity(FJ)J
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->doFlingAnimation_QWom1Mo$toDecomposedVelocity(FJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$doFlingAnimation_QWom1Mo$toMagnitudeFloat(J)F
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->doFlingAnimation_QWom1Mo$toMagnitudeFloat(J)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getFlingBehavior$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Landroidx/compose/foundation/gestures/FlingBehavior;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    return-object p0
.end method

.method public static final synthetic access$getLatestScrollSource$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->latestScrollSource:I

    return p0
.end method

.method public static final synthetic access$getNestedScrollDispatcher$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    return-object p0
.end method

.method public static final synthetic access$getNestedScrollScope$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->nestedScrollScope:Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;

    return-object p0
.end method

.method public static final synthetic access$getOuterStateScope$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Landroidx/compose/foundation/gestures/Scroll2DScope;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->outerStateScope:Landroidx/compose/foundation/gestures/Scroll2DScope;

    return-object p0
.end method

.method public static final synthetic access$getOverscrollEffect$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Landroidx/compose/foundation/OverscrollEffect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    return-object p0
.end method

.method public static final synthetic access$getPerformScrollForOverscroll$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Lnl3;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->performScrollForOverscroll:Lnl3;

    return-object p0
.end method

.method public static final synthetic access$isScrollableNodeAttached$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Lll3;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->isScrollableNodeAttached:Lll3;

    return-object p0
.end method

.method public static final synthetic access$performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Landroidx/compose/foundation/gestures/Scroll2DScope;JI)J
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/Scroll2DScope;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$setLatestScrollSource$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->latestScrollSource:I

    return-void
.end method

.method public static final synthetic access$setOuterStateScope$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Landroidx/compose/foundation/gestures/Scroll2DScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->outerStateScope:Landroidx/compose/foundation/gestures/Scroll2DScope;

    return-void
.end method

.method private final dispatchRawDelta-MK-Hz9U(J)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    invoke-interface {p0, p1, p2}, Landroidx/compose/foundation/gestures/Scrollable2DState;->dispatchRawDelta-MK-Hz9U(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final doFlingAnimation_QWom1Mo$toDecomposedOffset(FJ)J
    .locals 7

    invoke-static {p1, p2}, Landroidx/compose/foundation/gestures/Scrollable2DKt;->access$getAngle-TH1AsA0(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v4, p0

    shl-long p0, p1, v3

    and-long v0, v4, v1

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/foundation/gestures/Scrollable2DKt;->access$getAngle-TH1AsA0(J)F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    mul-float/2addr v4, v0

    invoke-static {p1, p2}, Landroidx/compose/foundation/gestures/Scrollable2DKt;->access$getAngle-TH1AsA0(J)F

    move-result v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v0, v5

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr p1, p0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v4, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    shl-long v3, v4, v3

    and-long/2addr p0, v1

    or-long/2addr p0, v3

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final doFlingAnimation_QWom1Mo$toDecomposedVelocity(FJ)J
    .locals 4

    invoke-static {p1, p2}, Landroidx/compose/foundation/gestures/Scrollable2DKt;->access$getAngle-TH1AsA0(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/foundation/gestures/Scrollable2DKt;->access$getAngle-TH1AsA0(J)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {p1, p2}, Landroidx/compose/foundation/gestures/Scrollable2DKt;->access$getAngle-TH1AsA0(J)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr p1, p0

    invoke-static {v1, p1}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final doFlingAnimation_QWom1Mo$toMagnitudeFloat(J)F
    .locals 6

    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const-wide v4, 0xffffffffL

    and-long/2addr p0, v4

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    add-float/2addr v0, p0

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private final performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/Scroll2DScope;JI)J
    .locals 8

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {v0, p2, p3, p4}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->dispatchPreScroll-OzD1aCk(JI)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Landroidx/compose/foundation/gestures/Scroll2DScope;->scrollBy-MK-Hz9U(J)J

    move-result-wide v3

    invoke-static {p2, p3, v3, v4}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v5

    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->dispatchPostScroll-DzOQY0M(JJI)J

    move-result-wide p0

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p2

    invoke-static {p2, p3, p0, p1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final performScrollForOverscroll$lambda$0(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Landroidx/compose/ui/geometry/Offset;)Landroidx/compose/ui/geometry/Offset;
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->outerStateScope:Landroidx/compose/foundation/gestures/Scroll2DScope;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v1

    iget p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->latestScrollSource:I

    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/Scroll2DScope;JI)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic scroll$default(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Landroidx/compose/foundation/MutatePriority;Lbm3;Le02;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scroll(Landroidx/compose/foundation/MutatePriority;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public doFlingAnimation-QWom1Mo(JLe02;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Le02<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Le02;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lq07;

    :try_start_0
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, p0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v6, p0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    new-instance v9, Lq07;

    invoke-direct {v9}, Lq07;-><init>()V

    iput-wide p1, v9, Lq07;->b:J

    iput-boolean v4, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->isFlinging:Z

    :try_start_1
    sget-object p3, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    new-instance v5, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v10, 0x0

    move-object v6, p0

    move-wide v7, p1

    :try_start_2
    invoke-direct/range {v5 .. v10}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$2;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic2D;JLq07;Le02;)V

    iput-object v9, v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$doFlingAnimation$1;->label:I

    invoke-virtual {v6, p3, v5, v0}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scroll(Landroidx/compose/foundation/MutatePriority;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, v9

    :goto_1
    iput-boolean v3, v6, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->isFlinging:Z

    iget-wide p0, p1, Lq07;->b:J

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception v0

    :goto_2
    move-object p1, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, p0

    goto :goto_2

    :goto_3
    iput-boolean v3, v6, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->isFlinging:Z

    throw p1
.end method

.method public final getScrollableState()Landroidx/compose/foundation/gestures/Scrollable2DState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    return-object p0
.end method

.method public isFlinging()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->isFlinging:Z

    return p0
.end method

.method public final onScrollStopped-sF-c-tU(JLe02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$onScrollStopped$performFling$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$onScrollStopped$performFling$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Le02;)V

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->shouldDispatchOverscroll-TH1AsA0(J)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v1, p1, p2, v0, p3}, Landroidx/compose/foundation/OverscrollEffect;->applyToFling-BMRW4eQ(JLbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object p0

    invoke-interface {v0, p0, p3}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public performRawScroll-MK-Hz9U(J)J
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    invoke-interface {v0}, Landroidx/compose/foundation/gestures/Scrollable2DState;->isScrollInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->dispatchRawDelta-MK-Hz9U(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final scroll(Landroidx/compose/foundation/MutatePriority;Lbm3;Le02;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/MutatePriority;",
            "Lbm3<",
            "-",
            "Landroidx/compose/foundation/gestures/NestedScrollScope;",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    new-instance v1, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic2D$scroll$2;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Lbm3;Le02;)V

    invoke-interface {v0, p1, v1, p3}, Landroidx/compose/foundation/gestures/Scrollable2DState;->scroll(Landroidx/compose/foundation/MutatePriority;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final setScrollableState(Landroidx/compose/foundation/gestures/Scrollable2DState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    return-void
.end method

.method public final shouldDispatchOverscroll-TH1AsA0(J)Z
    .locals 4

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long v0, p2

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Landroidx/compose/foundation/gestures/Scrollable2DState;->canScroll-k-4lQ0M(J)Z

    move-result p0

    return p0
.end method

.method public final shouldDispatchOverscroll-k-4lQ0M(J)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    invoke-interface {p0, p1, p2}, Landroidx/compose/foundation/gestures/Scrollable2DState;->canScroll-k-4lQ0M(J)Z

    move-result p0

    return p0
.end method

.method public final shouldScrollImmediately()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    invoke-interface {v0}, Landroidx/compose/foundation/gestures/Scrollable2DState;->isScrollInProgress()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/foundation/OverscrollEffect;->isInProgress()Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final update(Landroidx/compose/foundation/gestures/Scrollable2DState;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->scrollableState:Landroidx/compose/foundation/gestures/Scrollable2DState;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    return p1
.end method
