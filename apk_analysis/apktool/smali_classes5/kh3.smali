.class public final Lkh3;
.super Lkw1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkh3$a;,
        Lkh3$b;,
        Lkh3$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkw1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:Lgg3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg3<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lkh3$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Lkh3$a;


# direct methods
.method public constructor <init>(Lkh3$a;Lgg3;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0

    invoke-direct {p0}, Lkw1;-><init>()V

    iput-object p1, p0, Lkh3;->f:Lkh3$a;

    iput-object p2, p0, Lkh3;->c:Lgg3;

    iput-object p3, p0, Lkh3;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iput p4, p0, Lkh3;->e:I

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lkh3;->f:Lkh3$a;

    invoke-virtual {p0, p1}, Lkh3$a;->a(Lwb8;)V

    return-void
.end method

.method public final i(Liw1;)V
    .locals 4

    :goto_0
    iget-object v0, p0, Lkh3;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkh3$c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lkh3$c;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    new-instance v2, Lkh3$c;

    iget v3, p0, Lkh3;->e:I

    invoke-direct {v2, v0, v3}, Lkh3$c;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v1, v2

    :cond_2
    iget-object v0, v1, Lkh3$c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    move v3, v2

    :cond_3
    :try_start_0
    iput-object v1, p1, Liw1;->b:Lcp2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    iget-object p0, p0, Lkh3;->c:Lgg3;

    invoke-virtual {p0, v1}, Lgg3;->f(Lrh3;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lk13;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_1

    goto :goto_0
.end method
