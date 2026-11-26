.class public final Lwq5$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lls5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwq5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcp2;",
        ">;",
        "Lls5<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lwq5$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwq5$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(Lwq5$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwq5$b<",
            "TT;TR;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lwq5$a;->b:Lwq5$b;

    iput p2, p0, Lwq5$a;->c:I

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 4

    iget-object v0, p0, Lwq5$a;->b:Lwq5$b;

    iget p0, p0, Lwq5$a;->c:I

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lwq5$b;->e:[Ljava/lang/Object;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    aget-object p0, v1, p0

    const/4 v2, 0x1

    if-nez p0, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    iget v3, v0, Lwq5$b;->k:I

    add-int/2addr v3, v2

    iput v3, v0, Lwq5$b;->k:I

    array-length v1, v1

    if-ne v3, v1, :cond_3

    :cond_2
    iput-boolean v2, v0, Lwq5$b;->h:Z

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Lwq5$b;->a()V

    :cond_4
    invoke-virtual {v0}, Lwq5$b;->d()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lwq5$a;->b:Lwq5$b;

    iget-object v0, p0, Lwq5$b;->i:Lpt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lwq5$b;->a()V

    invoke-virtual {p0}, Lwq5$b;->d()V

    return-void

    :cond_0
    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lwq5$a;->b:Lwq5$b;

    iget p0, p0, Lwq5$a;->c:I

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lwq5$b;->e:[Ljava/lang/Object;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    aget-object v2, v1, p0

    iget v3, v0, Lwq5$b;->j:I

    if-nez v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lwq5$b;->j:I

    :cond_1
    aput-object p1, v1, p0

    array-length p0, v1

    if-ne v3, p0, :cond_2

    iget-object p0, v0, Lwq5$b;->f:Ln68;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln68;->offer(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lwq5$b;->d()V

    :cond_3
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    invoke-static {p0, p1}, Lip2;->g(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)Z

    return-void
.end method
