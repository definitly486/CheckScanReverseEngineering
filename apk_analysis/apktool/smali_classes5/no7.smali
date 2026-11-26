.class public interface abstract Lno7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic r(Landroidx/paging/SimpleProducerScope;Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lno7;->offer(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract close(Ljava/lang/Throwable;)Z
.end method

.method public abstract getOnSend()Lxl7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxl7<",
            "TE;",
            "Lno7<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public abstract invokeOnClose(Lnl3;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/Throwable;",
            "Lj59;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isClosedForSend()Z
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    invoke-interface {p0, p1}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lp91$b;

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p0}, Lp91;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sget p1, Lp68;->a:I

    throw p0
.end method

.method public abstract send(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
