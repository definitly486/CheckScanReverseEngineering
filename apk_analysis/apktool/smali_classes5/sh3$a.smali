.class public final Lsh3$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lrh3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsh3;
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
        "Lbc8;",
        ">;",
        "Lrh3<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Lsh3$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsh3$b<",
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

.field public g:I


# direct methods
.method public constructor <init>(Lsh3$b;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsh3$b<",
            "TT;TR;>;JI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lsh3$a;->b:Lsh3$b;

    iput-wide p2, p0, Lsh3$a;->c:J

    iput p4, p0, Lsh3$a;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 3

    invoke-static {p0, p1}, Lhc8;->d(Ljava/util/concurrent/atomic/AtomicReference;Lbc8;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lmw6;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lmw6;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ldw6;->d(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v1, p0, Lsh3$a;->g:I

    iput-object v0, p0, Lsh3$a;->e:Liz7;

    iput-boolean v2, p0, Lsh3$a;->f:Z

    iget-object p0, p0, Lsh3$a;->b:Lsh3$b;

    invoke-virtual {p0}, Lsh3$b;->d()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v1, p0, Lsh3$a;->g:I

    iput-object v0, p0, Lsh3$a;->e:Liz7;

    iget p0, p0, Lsh3$a;->d:I

    int-to-long v0, p0

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    return-void

    :cond_1
    new-instance v0, Lm68;

    iget v1, p0, Lsh3$a;->d:I

    invoke-direct {v0, v1}, Lm68;-><init>(I)V

    iput-object v0, p0, Lsh3$a;->e:Liz7;

    iget p0, p0, Lsh3$a;->d:I

    int-to-long v0, p0

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    :cond_2
    return-void
.end method

.method public final onComplete()V
    .locals 5

    iget-object v0, p0, Lsh3$a;->b:Lsh3$b;

    iget-wide v1, p0, Lsh3$a;->c:J

    iget-wide v3, v0, Lsh3$b;->k:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lsh3$a;->f:Z

    invoke-virtual {v0}, Lsh3$b;->d()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lsh3$a;->b:Lsh3$b;

    iget-wide v1, p0, Lsh3$a;->c:J

    iget-wide v3, v0, Lsh3$b;->k:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, v0, Lsh3$b;->f:Lpt;

    invoke-static {v1, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, v0, Lsh3$b;->h:Lbc8;

    invoke-interface {p1}, Lbc8;->cancel()V

    const/4 p1, 0x1

    iput-boolean p1, v0, Lsh3$b;->e:Z

    iput-boolean p1, p0, Lsh3$a;->f:Z

    invoke-virtual {v0}, Lsh3$b;->d()V

    return-void

    :cond_0
    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, Lsh3$a;->b:Lsh3$b;

    iget-wide v1, p0, Lsh3$a;->c:J

    iget-wide v3, v0, Lsh3$b;->k:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget v1, p0, Lsh3$a;->g:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lsh3$a;->e:Liz7;

    invoke-interface {v1, p1}, Liz7;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lsh3$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lsh3$b;->d()V

    :cond_1
    return-void
.end method
