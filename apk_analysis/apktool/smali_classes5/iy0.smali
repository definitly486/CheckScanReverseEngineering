.class public final Liy0;
.super Ltq5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liy0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ltq5<",
        "La57<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final b:Lgv5;


# direct methods
.method public constructor <init>(Lgv5;)V
    .locals 0

    invoke-direct {p0}, Ltq5;-><init>()V

    iput-object p1, p0, Liy0;->b:Lgv5;

    return-void
.end method


# virtual methods
.method public final f(Lls5;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-",
            "La57<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object p0, p0, Liy0;->b:Lgv5;

    invoke-virtual {p0}, Lgv5;->clone()Lfy0;

    move-result-object p0

    new-instance v0, Liy0$a;

    invoke-direct {v0, p0}, Liy0$a;-><init>(Lfy0;)V

    invoke-interface {p1, v0}, Lls5;->onSubscribe(Lcp2;)V

    iget-boolean v1, v0, Liy0$a;->c:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    check-cast p0, Lgv5;

    invoke-virtual {p0}, Lgv5;->h()La57;

    move-result-object p0

    iget-boolean v2, v0, Liy0$a;->c:Z

    if-nez v2, :cond_1

    invoke-interface {p1, p0}, Lls5;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean p0, v0, Liy0$a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_3

    :try_start_1
    invoke-interface {p1}, Lls5;->onComplete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    const/4 v1, 0x1

    :goto_1
    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    if-eqz v1, :cond_2

    invoke-static {p0}, Ld97;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    iget-boolean v0, v0, Liy0$a;->c:Z

    if-nez v0, :cond_3

    :try_start_2
    invoke-interface {p1, p0}, Lls5;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-static {p1}, Lm13;->d(Ljava/lang/Throwable;)V

    new-instance v0, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p0, p1}, [Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v0}, Ld97;->b(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method
