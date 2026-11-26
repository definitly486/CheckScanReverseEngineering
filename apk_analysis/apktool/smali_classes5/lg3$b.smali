.class public final Llg3$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lrh3;
.implements Lbc8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llg3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrh3<",
        "TT;>;",
        "Lbc8;"
    }
.end annotation


# instance fields
.field public final b:Ldq7;

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:Lhe7$c;

.field public f:Lbc8;

.field public g:Llg3$a;

.field public volatile h:J

.field public i:Z


# direct methods
.method public constructor <init>(Ldq7;JLjava/util/concurrent/TimeUnit;Lhe7$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Llg3$b;->b:Ldq7;

    iput-wide p2, p0, Llg3$b;->c:J

    iput-object p4, p0, Llg3$b;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Llg3$b;->e:Lhe7$c;

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 2

    iget-object v0, p0, Llg3$b;->f:Lbc8;

    invoke-static {v0, p1}, Lhc8;->f(Lbc8;Lbc8;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Llg3$b;->f:Lbc8;

    iget-object v0, p0, Llg3$b;->b:Ldq7;

    invoke-virtual {v0, p0}, Ldq7;->a(Lbc8;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    :cond_0
    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Llg3$b;->f:Lbc8;

    invoke-interface {v0}, Lbc8;->cancel()V

    iget-object p0, p0, Llg3$b;->e:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Llg3$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llg3$b;->i:Z

    iget-object v0, p0, Llg3$b;->g:Llg3$a;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Llg3$a;->a()V

    :cond_2
    iget-object v0, p0, Llg3$b;->b:Ldq7;

    invoke-virtual {v0}, Ldq7;->onComplete()V

    iget-object p0, p0, Llg3$b;->e:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Llg3$b;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llg3$b;->i:Z

    iget-object v0, p0, Llg3$b;->g:Llg3$a;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_1
    iget-object v0, p0, Llg3$b;->b:Ldq7;

    invoke-virtual {v0, p1}, Ldq7;->onError(Ljava/lang/Throwable;)V

    iget-object p0, p0, Llg3$b;->e:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Llg3$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Llg3$b;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Llg3$b;->h:J

    iget-object v2, p0, Llg3$b;->g:Llg3$a;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_1
    new-instance v2, Llg3$a;

    invoke-direct {v2, p1, v0, v1, p0}, Llg3$a;-><init>(Ljava/lang/Object;JLlg3$b;)V

    iput-object v2, p0, Llg3$b;->g:Llg3$a;

    iget-object p1, p0, Llg3$b;->e:Lhe7$c;

    iget-wide v0, p0, Llg3$b;->c:J

    iget-object p0, p0, Llg3$b;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v0, v1, p0}, Lhe7$c;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;

    move-result-object p0

    invoke-static {v2, p0}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method

.method public final request(J)V
    .locals 1

    invoke-static {p1, p2}, Lhc8;->e(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lm00;->c(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method
