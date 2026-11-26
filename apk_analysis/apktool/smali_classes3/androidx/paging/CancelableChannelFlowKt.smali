.class public final Landroidx/paging/CancelableChannelFlowKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final cancelableChannelFlow(Lmb4;Lbm3;)Lhd3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmb4;",
            "Lbm3<",
            "-",
            "Landroidx/paging/SimpleProducerScope<",
            "TT;>;-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lhd3<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/CancelableChannelFlowKt$cancelableChannelFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/paging/CancelableChannelFlowKt$cancelableChannelFlow$1;-><init>(Lmb4;Lbm3;Le02;)V

    invoke-static {v0}, Landroidx/paging/SimpleChannelFlowKt;->simpleChannelFlow(Lbm3;)Lhd3;

    move-result-object p0

    return-object p0
.end method
