.class public final Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;
.super Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final channel:Lx81;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx81<",
            "Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;",
            ">;"
        }
    .end annotation
.end field

.field private receivingPanEventsJob:Lmb4;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lbm3;Landroidx/compose/ui/unit/Density;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/unit/Density;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lbm3;Landroidx/compose/ui/unit/Density;)V

    const/4 p1, 0x0

    const/4 p2, 0x6

    const p3, 0x7fffffff

    invoke-static {p3, p1, p1, p2}, Ll91;->a(ILcu0;Lnl3;I)Lmu0;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->channel:Lx81;

    return-void
.end method

.method public static synthetic a(Lx81;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->sumOrNull$lambda$0(Lx81;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$dispatchTrackpadScroll(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Landroidx/compose/foundation/gestures/NestedScrollScope;F)F
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->dispatchTrackpadScroll(Landroidx/compose/foundation/gestures/NestedScrollScope;F)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$dispatchTrackpadScroll(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;Le02;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->dispatchTrackpadScroll(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getChannel$p(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;)Lx81;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->channel:Lx81;

    return-object p0
.end method

.method public static final synthetic access$setReceivingPanEventsJob$p(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Lmb4;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->receivingPanEventsJob:Lmb4;

    return-void
.end method

.method public static final synthetic access$sumOrNull(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Lx81;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->sumOrNull(Lx81;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$trackVelocity(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->trackVelocity(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;)V

    return-void
.end method

.method private final canConsumeDelta-Uv8p0NA(Landroidx/compose/foundation/gestures/ScrollingLogic;J)Z
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toSingleAxisDeltaFromAngle-k-4lQ0M(J)F

    move-result p0

    const/4 p1, 0x0

    cmpg-float p0, p0, p1

    const/4 p1, 0x1

    if-nez p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, p1

    return p0
.end method

.method private final dispatchTrackpadScroll(Landroidx/compose/foundation/gestures/NestedScrollScope;F)F
    .locals 2

    .line 129
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->getScrollingLogic()Landroidx/compose/foundation/gestures/ScrollingLogic;

    move-result-object p0

    .line 130
    invoke-virtual {p0, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    move-result-wide v0

    .line 131
    sget-object p2, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getUserInput-WNlRxjI()I

    move-result p2

    invoke-interface {p1, v0, v1, p2}, Landroidx/compose/foundation/gestures/NestedScrollScope;->scrollByWithOverscroll-OzD1aCk(JI)J

    move-result-wide p1

    .line 132
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    move-result p0

    return p0
.end method

.method private final dispatchTrackpadScroll(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;Le02;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            "Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;-><init>(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Le02;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p3, Lr07;

    invoke-direct {p3}, Lr07;-><init>()V

    iput-object p2, p3, Lr07;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->trackVelocity(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;)V

    iget-object p2, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->channel:Lx81;

    invoke-direct {p0, p2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->sumOrNull(Lx81;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-direct {p0, p2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->trackVelocity(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;)V

    iget-object v2, p3, Lr07;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    invoke-virtual {v2, p2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->plus(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    move-result-object p2

    iput-object p2, p3, Lr07;->b:Ljava/lang/Object;

    :cond_4
    new-instance p2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;

    invoke-direct {p2, p0, p1, p3, v3}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;-><init>(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Landroidx/compose/foundation/gestures/ScrollingLogic;Lr07;Le02;)V

    iput v5, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;->label:I

    invoke-virtual {p0, p2, v0}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->userScroll$foundation(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->getOnScrollStopped()Lbm3;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->getVelocityTracker$foundation()Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->calculateVelocity-9UxMQ8M()J

    move-result-wide p2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object p0

    iput v4, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;->label:I

    invoke-interface {p1, p0, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final onPan(Landroidx/compose/ui/input/pointer/PointerEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    sget-boolean v1, Landroidx/compose/foundation/ComposeFoundationFlags;->isTrackpadGestureHandlingEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getHistorical()Ljava/util/List;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    move v6, v2

    move v7, v6

    :goto_0
    const-wide v8, -0x7fffffff80000000L    # -1.0609978955E-314

    if-ge v6, v5, :cond_4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/input/pointer/HistoricalChange;

    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getPanOffset-F1C5BW0()J

    move-result-wide v11

    xor-long/2addr v8, v11

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v12

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->getScrollingLogic()Landroidx/compose/foundation/gestures/ScrollingLogic;

    move-result-object v8

    invoke-direct {v0, v8, v12, v13}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->canConsumeDelta-Uv8p0NA(Landroidx/compose/foundation/gestures/ScrollingLogic;J)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->channel:Lx81;

    new-instance v11, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getUptimeMillis()J

    move-result-wide v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v11 .. v17}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;-><init>(JJZLjh2;)V

    invoke-interface {v8, v11}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lp91$b;

    if-eqz v8, :cond_2

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v3

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPanOffset-F1C5BW0()J

    move-result-wide v4

    xor-long/2addr v4, v8

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v4

    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getPanEnd-7fucELk()I

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v13

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->getScrollingLogic()Landroidx/compose/foundation/gestures/ScrollingLogic;

    move-result-object v4

    invoke-direct {v0, v4, v9, v10}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->canConsumeDelta-Uv8p0NA(Landroidx/compose/foundation/gestures/ScrollingLogic;J)Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v13, :cond_8

    :cond_5
    iget-object v4, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->channel:Lx81;

    new-instance v8, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    move-result-wide v11

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;-><init>(JJZLjh2;)V

    invoke-interface {v4, v8}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lp91$b;

    if-eqz v1, :cond_6

    if-eqz v7, :cond_7

    :cond_6
    move v7, v3

    goto :goto_3

    :cond_7
    move v7, v2

    :cond_8
    :goto_3
    if-nez v7, :cond_a

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->isScrolling$foundation()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    return v2

    :cond_a
    :goto_5
    return v3
.end method

.method private final sumOrNull(Lx81;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx81<",
            "Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;",
            ">;)",
            "Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;"
        }
    .end annotation

    new-instance p0, Log8;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Log8;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt;->untilNull(Lll3;)Lzo7;

    move-result-object p0

    invoke-interface {p0}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->plus(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private static final sumOrNull$lambda$0(Lx81;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;
    .locals 0

    invoke-interface {p0}, Lqz6;->i()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lp91;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    return-object p0
.end method

.method private final trackVelocity(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->getVelocityTracker$foundation()Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->getTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->getValue-F1C5BW0()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->addDelta-Uv8p0NA(JJ)V

    return-void
.end method


# virtual methods
.method public onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 2

    sget-boolean p3, Landroidx/compose/foundation/ComposeFoundationFlags;->isTrackpadGestureHandlingEnabled:Z

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result p3

    sget-object p4, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {p4}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getPanStart-7fucELk()I

    move-result v0

    invoke-static {p3, v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result p3

    invoke-virtual {p4}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getPanMove-7fucELk()I

    move-result v0

    invoke-static {p3, v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result p3

    invoke-virtual {p4}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getPanEnd-7fucELk()I

    move-result p4

    invoke-static {p3, p4}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_2

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object p3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne p2, p3, :cond_3

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->isScrolling$foundation()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-direct {p0, p1}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->onPan(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->consume$foundation(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    :cond_3
    sget-object p3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne p2, p3, :cond_4

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->isScrolling$foundation()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-direct {p0, p1}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->onPan(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->consume$foundation(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public startReceivingEvents(Ly22;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->receivingPanEventsJob:Lmb4;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;-><init>(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Le02;)V

    const/4 v2, 0x3

    invoke-static {p1, v1, v1, v0, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->receivingPanEventsJob:Lmb4;

    :cond_0
    return-void
.end method
