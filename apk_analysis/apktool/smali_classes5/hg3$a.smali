.class public final Lhg3$a;
.super Lrk2;
.source "SourceFile"

# interfaces
.implements Lrh3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lrk2<",
        "TU;>;",
        "Lrh3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Lb9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb9;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field public f:Lbc8;

.field public g:Z


# direct methods
.method public constructor <init>(Lwb8;Ljava/lang/Object;Lb9;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TU;>;TU;",
            "Lb9;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lrk2;-><init>(Lwb8;)V

    iput-object p3, p0, Lhg3$a;->d:Lb9;

    iput-object p2, p0, Lhg3$a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 2

    iget-object v0, p0, Lhg3$a;->f:Lbc8;

    invoke-static {v0, p1}, Lhc8;->f(Lbc8;Lbc8;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lhg3$a;->f:Lbc8;

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

    iget-object p0, p0, Lhg3$a;->f:Lbc8;

    invoke-interface {p0}, Lbc8;->cancel()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Lhg3$a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhg3$a;->g:Z

    iget-object v0, p0, Lhg3$a;->e:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lrk2;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lhg3$a;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhg3$a;->g:Z

    iget-object p0, p0, Lrk2;->b:Lwb8;

    invoke-interface {p0, p1}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lhg3$a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lhg3$a;->d:Lb9;

    iget-object v1, p0, Lhg3$a;->e:Ljava/lang/Object;

    iget-object v0, v0, Lb9;->c:Ljava/lang/Object;

    check-cast v0, Lbm3;

    invoke-interface {v0, v1, p1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lhg3$a;->f:Lbc8;

    invoke-interface {v0}, Lbc8;->cancel()V

    invoke-virtual {p0, p1}, Lhg3$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
