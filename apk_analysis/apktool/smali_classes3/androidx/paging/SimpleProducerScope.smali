.class public interface abstract Landroidx/paging/SimpleProducerScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly22;
.implements Lno7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/SimpleProducerScope$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ly22;",
        "Lno7<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract awaitClose(Lll3;Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract synthetic close(Ljava/lang/Throwable;)Z
.end method

.method public abstract getChannel()Lno7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lno7<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract synthetic getCoroutineContext()Lo22;
.end method

.method public abstract synthetic getOnSend()Lxl7;
.end method

.method public abstract synthetic invokeOnClose(Lnl3;)V
.end method

.method public abstract synthetic isClosedForSend()Z
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    invoke-super {p0, p1}, Lno7;->offer(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public abstract synthetic send(Ljava/lang/Object;Le02;)Ljava/lang/Object;
.end method

.method public abstract synthetic trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
.end method
