.class public final Lwq5$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwq5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lcp2;"
    }
.end annotation


# instance fields
.field public final b:Lls5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls5<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field public final d:[Lwq5$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lwq5$a<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public e:[Ljava/lang/Object;

.field public final f:Ln68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln68<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile g:Z

.field public volatile h:Z

.field public final i:Lpt;

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Lls5;Lxl3;II)V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Lpt;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lwq5$b;->i:Lpt;

    iput-object p1, p0, Lwq5$b;->b:Lls5;

    iput-object p2, p0, Lwq5$b;->c:Lxl3;

    new-array p1, p3, [Ljava/lang/Object;

    iput-object p1, p0, Lwq5$b;->e:[Ljava/lang/Object;

    new-array p1, p3, [Lwq5$a;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    new-instance v0, Lwq5$a;

    invoke-direct {v0, p0, p2}, Lwq5$a;-><init>(Lwq5$b;I)V

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lwq5$b;->d:[Lwq5$a;

    new-instance p1, Ln68;

    invoke-direct {p1, p4}, Ln68;-><init>(I)V

    iput-object p1, p0, Lwq5$b;->f:Ln68;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object p0, p0, Lwq5$b;->d:[Lwq5$a;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ln68;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln68<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lwq5$b;->e:[Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ln68;->clear()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d()V
    .locals 7

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lwq5$b;->f:Ln68;

    iget-object v1, p0, Lwq5$b;->b:Lls5;

    const/4 v2, 0x1

    move v3, v2

    :cond_1
    :goto_0
    iget-boolean v4, p0, Lwq5$b;->g:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0, v0}, Lwq5$b;->b(Ln68;)V

    return-void

    :cond_2
    iget-object v4, p0, Lwq5$b;->i:Lpt;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lwq5$b;->a()V

    invoke-virtual {p0, v0}, Lwq5$b;->b(Ln68;)V

    iget-object p0, p0, Lwq5$b;->i:Lpt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v1, p0}, Lls5;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-boolean v4, p0, Lwq5$b;->h:Z

    invoke-virtual {v0}, Ln68;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    if-nez v5, :cond_4

    move v6, v2

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-eqz v4, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {p0, v0}, Lwq5$b;->b(Ln68;)V

    iget-object p0, p0, Lwq5$b;->i:Lpt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_5

    invoke-interface {v1}, Lls5;->onComplete()V

    return-void

    :cond_5
    invoke-interface {v1, p0}, Lls5;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    if-eqz v6, :cond_7

    neg-int v3, v3

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    :goto_2
    return-void

    :cond_7
    :try_start_0
    iget-object v4, p0, Lwq5$b;->c:Lxl3;

    invoke-interface {v4, v5}, Lxl3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The combiner returned a null value"

    invoke-static {v4, v5}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, v4}, Lls5;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v2}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v3, p0, Lwq5$b;->i:Lpt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, Lwq5$b;->a()V

    invoke-virtual {p0, v0}, Lwq5$b;->b(Ln68;)V

    iget-object p0, p0, Lwq5$b;->i:Lpt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v1, p0}, Lls5;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lwq5$b;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwq5$b;->g:Z

    invoke-virtual {p0}, Lwq5$b;->a()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lwq5$b;->f:Ln68;

    invoke-virtual {p0, v0}, Lwq5$b;->b(Ln68;)V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lwq5$b;->g:Z

    return p0
.end method
