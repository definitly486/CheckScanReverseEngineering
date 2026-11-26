.class public final Log3$a;
.super Lrk2;
.source "SourceFile"

# interfaces
.implements Lrh3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Log3;
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
        "Lrk2<",
        "TT;>;",
        "Lrh3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public d:Lbc8;

.field public e:J

.field public f:Z


# virtual methods
.method public final a(Lbc8;)V
    .locals 2

    iget-object v0, p0, Log3$a;->d:Lbc8;

    invoke-static {v0, p1}, Lhc8;->f(Lbc8;Lbc8;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Log3$a;->d:Lbc8;

    iget-object v0, p0, Lrk2;->b:Lwb8;

    invoke-interface {v0, p0}, Lwb8;->a(Lbc8;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    :cond_0
    return-void
.end method

.method public final cancel()V
    .locals 0

    invoke-super {p0}, Lrk2;->cancel()V

    iget-object p0, p0, Log3$a;->d:Lbc8;

    invoke-interface {p0}, Lbc8;->cancel()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Log3$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Log3$a;->f:Z

    iget-object p0, p0, Lrk2;->b:Lwb8;

    invoke-interface {p0}, Lwb8;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Log3$a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Log3$a;->f:Z

    iget-object p0, p0, Lrk2;->b:Lwb8;

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

    iget-boolean v0, p0, Log3$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Log3$a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Log3$a;->f:Z

    iget-object v0, p0, Log3$a;->d:Lbc8;

    invoke-interface {v0}, Lbc8;->cancel()V

    invoke-virtual {p0, p1}, Lrk2;->b(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Log3$a;->e:J

    return-void
.end method
