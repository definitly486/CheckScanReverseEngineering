.class final Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.foundation.gestures.TrackpadScrollingLogic$startReceivingEvents$1"
    f = "TrackpadScrollingLogic.kt"
    l = {
        0x63,
        0x63
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->startReceivingEvents(Ly22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;",
            "Le02<",
            "-",
            "Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->this$0:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->this$0:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;-><init>(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Le02;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ly22;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ly22;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->L$2:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v5, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->L$1:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    iget-object v6, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ly22;

    :try_start_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ly22;

    :goto_0
    :try_start_2
    invoke-interface {p1}, Ly22;->getCoroutineContext()Lo22;

    move-result-object v1

    invoke-static {v1}, Lqb4;->h(Lo22;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v5, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->this$0:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    if-eqz v1, :cond_5

    :try_start_3
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->getScrollingLogic()Landroidx/compose/foundation/gestures/ScrollingLogic;

    move-result-object v1

    iget-object v6, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->this$0:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    invoke-static {v6}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->access$getChannel$p(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;)Lx81;

    move-result-object v6

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->label:I

    invoke-interface {v6, p0}, Lqz6;->b(Le02;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v7, v6

    move-object v6, p1

    move-object p1, v7

    :goto_1
    check-cast p1, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    iput-object v6, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->label:I

    invoke-static {v5, v1, p1, p0}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->access$dispatchTrackpadScroll(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;Le02;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p1, v0, :cond_4

    :goto_2
    return-object v0

    :cond_4
    move-object p1, v6

    goto :goto_0

    :cond_5
    invoke-static {v5, v4}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->access$setReceivingPanEventsJob$p(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Lmb4;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_3
    iget-object p0, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->this$0:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    invoke-static {p0, v4}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->access$setReceivingPanEventsJob$p(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Lmb4;)V

    throw p1
.end method
