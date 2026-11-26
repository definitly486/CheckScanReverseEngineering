.class public final Lzr5$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lls5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzr5;
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
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Lzr5$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzr5$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:I

.field public volatile e:Liz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liz7<",
            "TR;>;"
        }
    .end annotation
.end field

.field public volatile f:Z


# direct methods
.method public constructor <init>(Lzr5$b;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr5$b<",
            "TT;TR;>;JI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lzr5$a;->b:Lzr5$b;

    iput-wide p2, p0, Lzr5$a;->c:J

    iput p4, p0, Lzr5$a;->d:I

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 4

    iget-wide v0, p0, Lzr5$a;->c:J

    iget-object v2, p0, Lzr5$a;->b:Lzr5$b;

    iget-wide v2, v2, Lzr5$b;->j:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzr5$a;->f:Z

    iget-object p0, p0, Lzr5$a;->b:Lzr5$b;

    invoke-virtual {p0}, Lzr5$b;->b()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lzr5$a;->b:Lzr5$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Lzr5$a;->c:J

    iget-wide v3, v0, Lzr5$b;->j:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, v0, Lzr5$b;->e:Lpt;

    invoke-static {v1, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, v0, Lzr5$b;->h:Lcp2;

    invoke-interface {p1}, Lcp2;->dispose()V

    const/4 p1, 0x1

    iput-boolean p1, v0, Lzr5$b;->f:Z

    iput-boolean p1, p0, Lzr5$a;->f:Z

    invoke-virtual {v0}, Lzr5$b;->b()V

    return-void

    :cond_0
    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-wide v0, p0, Lzr5$a;->c:J

    iget-object v2, p0, Lzr5$a;->b:Lzr5$b;

    iget-wide v2, v2, Lzr5$b;->j:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lzr5$a;->e:Liz7;

    invoke-interface {v0, p1}, Liz7;->offer(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lzr5$a;->b:Lzr5$b;

    invoke-virtual {p0}, Lzr5$b;->b()V

    :cond_1
    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 2

    invoke-static {p0, p1}, Lip2;->g(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lyv6;

    if-eqz v0, :cond_1

    check-cast p1, Lyv6;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Ldw6;->d(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lzr5$a;->e:Liz7;

    iput-boolean v1, p0, Lzr5$a;->f:Z

    iget-object p0, p0, Lzr5$a;->b:Lzr5$b;

    invoke-virtual {p0}, Lzr5$b;->b()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput-object p1, p0, Lzr5$a;->e:Liz7;

    return-void

    :cond_1
    new-instance p1, Ln68;

    iget v0, p0, Lzr5$a;->d:I

    invoke-direct {p1, v0}, Ln68;-><init>(I)V

    iput-object p1, p0, Lzr5$a;->e:Liz7;

    :cond_2
    return-void
.end method
