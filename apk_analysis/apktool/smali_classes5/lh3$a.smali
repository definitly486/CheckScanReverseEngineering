.class public final Llh3$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lrh3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llh3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrh3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lwb8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwb8<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Ldc8;

.field public final d:Ldt6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldt6<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>(Lwb8;JLdc8;Ldt6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TT;>;J",
            "Ldc8;",
            "Ldt6<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Llh3$a;->b:Lwb8;

    iput-object p4, p0, Llh3$a;->c:Ldc8;

    iput-object p5, p0, Llh3$a;->d:Ldt6;

    iput-wide p2, p0, Llh3$a;->e:J

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 0

    iget-object p0, p0, Llh3$a;->c:Ldc8;

    invoke-virtual {p0, p1}, Ldc8;->g(Lbc8;)V

    return-void
.end method

.method public final b()V
    .locals 6

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Llh3$a;->c:Ldc8;

    iget-boolean v1, v1, Ldc8;->g:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Llh3$a;->f:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    iput-wide v3, p0, Llh3$a;->f:J

    iget-object v3, p0, Llh3$a;->c:Ldc8;

    invoke-virtual {v3, v1, v2}, Ldc8;->f(J)V

    :cond_2
    iget-object v1, p0, Llh3$a;->d:Ldt6;

    invoke-interface {v1, p0}, Ldt6;->a(Lwb8;)V

    neg-int v0, v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    :goto_0
    return-void
.end method

.method public final onComplete()V
    .locals 4

    iget-wide v0, p0, Llh3$a;->e:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Llh3$a;->e:J

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llh3$a;->b()V

    return-void

    :cond_1
    iget-object p0, p0, Llh3$a;->b:Lwb8;

    invoke-interface {p0}, Lwb8;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Llh3$a;->b:Lwb8;

    invoke-interface {p0, p1}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, Llh3$a;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Llh3$a;->f:J

    iget-object p0, p0, Llh3$a;->b:Lwb8;

    invoke-interface {p0, p1}, Lwb8;->onNext(Ljava/lang/Object;)V

    return-void
.end method
