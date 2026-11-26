.class public final Lio/appmetrica/analytics/impl/I5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/R8;
.implements Lio/appmetrica/analytics/impl/e9;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Y6;

.field public final b:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Y6;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/I5;->a:Lio/appmetrica/analytics/impl/Y6;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lio/appmetrica/analytics/impl/no;->a()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/impl/Y6;->a(Ljava/util/Set;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/I5;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/impl/Y6;->a(Lio/appmetrica/analytics/impl/e9;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 61
    iget-object v0, p0, Lio/appmetrica/analytics/impl/I5;->a:Lio/appmetrica/analytics/impl/Y6;

    .line 62
    sget-object v1, Lio/appmetrica/analytics/impl/no;->a:Ljava/util/Set;

    .line 63
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Y6;->a(Ljava/util/Set;)J

    move-result-wide v0

    .line 64
    iget-object p0, p0, Lio/appmetrica/analytics/impl/I5;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v2, Lio/appmetrica/analytics/impl/no;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lu96;->n()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/I5;->b:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v0, v1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v2, Lio/appmetrica/analytics/impl/no;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lu96;->n()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/I5;->b:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v0, v1

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public final b()Z
    .locals 4

    .line 62
    iget-object p0, p0, Lio/appmetrica/analytics/impl/I5;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
