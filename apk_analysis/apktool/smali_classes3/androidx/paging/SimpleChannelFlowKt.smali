.class public final Landroidx/paging/SimpleChannelFlowKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final simpleChannelFlow(Lbm3;)Lhd3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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

    new-instance v0, Landroidx/paging/SimpleChannelFlowKt$simpleChannelFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/paging/SimpleChannelFlowKt$simpleChannelFlow$1;-><init>(Lbm3;Le02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lud3;->a(Lhd3;I)Lhd3;

    move-result-object p0

    return-object p0
.end method
