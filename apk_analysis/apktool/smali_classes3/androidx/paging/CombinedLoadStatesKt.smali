.class public final Landroidx/paging/CombinedLoadStatesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final awaitNotLoading(Lhd3;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhd3<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;",
            "Le02<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Ls39;->b(Lhd3;J)Lhd3;

    move-result-object p0

    new-instance v0, Landroidx/paging/CombinedLoadStatesKt$awaitNotLoading$$inlined$filter$1;

    invoke-direct {v0, p0}, Landroidx/paging/CombinedLoadStatesKt$awaitNotLoading$$inlined$filter$1;-><init>(Lhd3;)V

    invoke-static {v0, p1}, Lue3;->c(Lhd3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
