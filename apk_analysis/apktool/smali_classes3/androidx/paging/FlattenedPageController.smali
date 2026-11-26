.class final Landroidx/paging/FlattenedPageController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final list:Landroidx/paging/FlattenedPageEventStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/FlattenedPageEventStorage<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final lock:Lyg5;

.field private maxEventIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/paging/FlattenedPageEventStorage;

    invoke-direct {v0}, Landroidx/paging/FlattenedPageEventStorage;-><init>()V

    iput-object v0, p0, Landroidx/paging/FlattenedPageController;->list:Landroidx/paging/FlattenedPageEventStorage;

    new-instance v0, Lch5;

    invoke-direct {v0}, Lch5;-><init>()V

    iput-object v0, p0, Landroidx/paging/FlattenedPageController;->lock:Lyg5;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/paging/FlattenedPageController;->maxEventIndex:I

    return-void
.end method


# virtual methods
.method public final getCachedEvent()Landroidx/paging/PageEvent$Insert;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PageEvent$Insert<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/FlattenedPageController;->list:Landroidx/paging/FlattenedPageEventStorage;

    invoke-virtual {p0}, Landroidx/paging/FlattenedPageEventStorage;->getAsEvents()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/paging/PageEvent;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    instance-of v1, p0, Landroidx/paging/PageEvent$Insert;

    if-eqz v1, :cond_0

    check-cast p0, Landroidx/paging/PageEvent$Insert;

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getLoadType()Landroidx/paging/LoadType;

    move-result-object v1

    sget-object v2, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-ne v1, v2, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final getStateAsEvents(Le02;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lj44<",
            "+",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/paging/FlattenedPageController$getStateAsEvents$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/paging/FlattenedPageController$getStateAsEvents$1;

    iget v1, v0, Landroidx/paging/FlattenedPageController$getStateAsEvents$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/FlattenedPageController$getStateAsEvents$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/FlattenedPageController$getStateAsEvents$1;

    invoke-direct {v0, p0, p1}, Landroidx/paging/FlattenedPageController$getStateAsEvents$1;-><init>(Landroidx/paging/FlattenedPageController;Le02;)V

    :goto_0
    iget-object p1, v0, Landroidx/paging/FlattenedPageController$getStateAsEvents$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/paging/FlattenedPageController$getStateAsEvents$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Landroidx/paging/FlattenedPageController$getStateAsEvents$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lyg5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/paging/FlattenedPageController;->lock:Lyg5;

    iput-object p1, v0, Landroidx/paging/FlattenedPageController$getStateAsEvents$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/paging/FlattenedPageController$getStateAsEvents$1;->label:I

    invoke-interface {p1, v4, v0}, Lyg5;->lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    :goto_1
    :try_start_0
    iget-object p1, p0, Landroidx/paging/FlattenedPageController;->list:Landroidx/paging/FlattenedPageEventStorage;

    invoke-virtual {p1}, Landroidx/paging/FlattenedPageEventStorage;->getAsEvents()Ljava/util/List;

    move-result-object p1

    iget p0, p0, Landroidx/paging/FlattenedPageController;->maxEventIndex:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p0, v1

    add-int/2addr p0, v3

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    if-ltz v2, :cond_4

    check-cast v3, Landroidx/paging/PageEvent;

    new-instance v6, Lj44;

    add-int/2addr v2, p0

    invoke-direct {v6, v2, v3}, Lj44;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    invoke-static {}, Lu96;->o()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    invoke-interface {v0, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    return-object v1

    :goto_3
    invoke-interface {v0, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public final record(Lj44;Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj44<",
            "+",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/paging/FlattenedPageController$record$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/paging/FlattenedPageController$record$1;

    iget v1, v0, Landroidx/paging/FlattenedPageController$record$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/FlattenedPageController$record$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/FlattenedPageController$record$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/FlattenedPageController$record$1;-><init>(Landroidx/paging/FlattenedPageController;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/paging/FlattenedPageController$record$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/paging/FlattenedPageController$record$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/paging/FlattenedPageController$record$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lyg5;

    iget-object v0, v0, Landroidx/paging/FlattenedPageController$record$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lj44;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/paging/FlattenedPageController;->lock:Lyg5;

    iput-object p1, v0, Landroidx/paging/FlattenedPageController$record$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/paging/FlattenedPageController$record$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/paging/FlattenedPageController$record$1;->label:I

    invoke-interface {p2, v4, v0}, Lyg5;->lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    :try_start_0
    iget v0, p1, Lj44;->a:I

    iput v0, p0, Landroidx/paging/FlattenedPageController;->maxEventIndex:I

    iget-object p0, p0, Landroidx/paging/FlattenedPageController;->list:Landroidx/paging/FlattenedPageEventStorage;

    iget-object p1, p1, Lj44;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/paging/PageEvent;

    invoke-virtual {p0, p1}, Landroidx/paging/FlattenedPageEventStorage;->add(Landroidx/paging/PageEvent;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p2, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    throw p0
.end method
