.class public final Lig3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrh3;
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig3;
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
        "Ljava/lang/Object;",
        "Lrh3<",
        "TT;>;",
        "Lcp2;"
    }
.end annotation


# instance fields
.field public final b:Lt08;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt08<",
            "-TU;>;"
        }
    .end annotation
.end field

.field public final c:Lb9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb9;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field public e:Lbc8;

.field public f:Z


# direct methods
.method public constructor <init>(Lt08;Ljava/lang/Object;Lb9;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TU;>;TU;",
            "Lb9;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lig3$a;->b:Lt08;

    iput-object p3, p0, Lig3$a;->c:Lb9;

    iput-object p2, p0, Lig3$a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 2

    iget-object v0, p0, Lig3$a;->e:Lbc8;

    invoke-static {v0, p1}, Lhc8;->f(Lbc8;Lbc8;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lig3$a;->e:Lbc8;

    iget-object v0, p0, Lig3$a;->b:Lt08;

    invoke-interface {v0, p0}, Lt08;->onSubscribe(Lcp2;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lig3$a;->e:Lbc8;

    invoke-interface {v0}, Lbc8;->cancel()V

    sget-object v0, Lhc8;->CANCELLED:Lhc8;

    iput-object v0, p0, Lig3$a;->e:Lbc8;

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    iget-object p0, p0, Lig3$a;->e:Lbc8;

    sget-object v0, Lhc8;->CANCELLED:Lhc8;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Lig3$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lig3$a;->f:Z

    sget-object v0, Lhc8;->CANCELLED:Lhc8;

    iput-object v0, p0, Lig3$a;->e:Lbc8;

    iget-object v0, p0, Lig3$a;->b:Lt08;

    iget-object p0, p0, Lig3$a;->d:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lt08;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lig3$a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lig3$a;->f:Z

    sget-object v0, Lhc8;->CANCELLED:Lhc8;

    iput-object v0, p0, Lig3$a;->e:Lbc8;

    iget-object p0, p0, Lig3$a;->b:Lt08;

    invoke-interface {p0, p1}, Lt08;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lig3$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lig3$a;->c:Lb9;

    iget-object v1, p0, Lig3$a;->d:Ljava/lang/Object;

    iget-object v0, v0, Lb9;->c:Ljava/lang/Object;

    check-cast v0, Lbm3;

    invoke-interface {v0, v1, p1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lig3$a;->e:Lbc8;

    invoke-interface {v0}, Lbc8;->cancel()V

    invoke-virtual {p0, p1}, Lig3$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
