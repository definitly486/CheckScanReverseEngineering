.class public final Lk18;
.super Lmz7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk18$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lmz7<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public final c:Lxq;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lxq;)V
    .locals 0

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p1, p0, Lk18;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lk18;->c:Lxq;

    return-void
.end method


# virtual methods
.method public final h(Lt08;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TR;>;)V"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Lc18;

    :try_start_0
    iget-object v1, p0, Lk18;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc18;

    if-nez v4, :cond_0

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "One of the sources is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    sget-object v0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, v0}, Lt08;->onSubscribe(Lcp2;)V

    invoke-interface {p1, p0}, Lt08;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    array-length v5, v0

    if-ne v3, v5, :cond_1

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc18;

    :cond_1
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    sget-object v0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, v0}, Lt08;->onSubscribe(Lcp2;)V

    invoke-interface {p1, p0}, Lt08;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    const/4 v1, 0x1

    if-ne v3, v1, :cond_4

    aget-object v0, v0, v2

    new-instance v1, Lp08$a;

    new-instance v2, Lk18$a;

    invoke-direct {v2, p0}, Lk18$a;-><init>(Lk18;)V

    invoke-direct {v1, p1, v2}, Lp08$a;-><init>(Lt08;Lxl3;)V

    invoke-interface {v0, v1}, Lc18;->d(Lt08;)V

    return-void

    :cond_4
    new-instance v1, Lj18$b;

    iget-object p0, p0, Lk18;->c:Lxq;

    invoke-direct {v1, p1, v3, p0}, Lj18$b;-><init>(Lt08;ILxl3;)V

    invoke-interface {p1, v1}, Lt08;->onSubscribe(Lcp2;)V

    :goto_1
    if-ge v2, v3, :cond_6

    invoke-virtual {v1}, Lj18$b;->isDisposed()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    aget-object p0, v0, v2

    iget-object p1, v1, Lj18$b;->d:[Lj18$c;

    aget-object p1, p1, v2

    invoke-interface {p0, p1}, Lc18;->d(Lt08;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return-void

    :goto_3
    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    sget-object v0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, v0}, Lt08;->onSubscribe(Lcp2;)V

    invoke-interface {p1, p0}, Lt08;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
