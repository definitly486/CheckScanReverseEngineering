.class public final Landroidx/paging/CachedPagingDataKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final cachedIn(Lhd3;Ly22;)Lhd3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhd3<",
            "Landroidx/paging/PagingData<",
            "TT;>;>;",
            "Ly22;",
            ")",
            "Lhd3<",
            "Landroidx/paging/PagingData<",
            "TT;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 96
    invoke-static {p0, p1, v0}, Landroidx/paging/CachedPagingDataKt;->cachedIn(Lhd3;Ly22;Landroidx/paging/ActiveFlowTracker;)Lhd3;

    move-result-object p0

    return-object p0
.end method

.method public static final cachedIn(Lhd3;Ly22;Landroidx/paging/ActiveFlowTracker;)Lhd3;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhd3<",
            "Landroidx/paging/PagingData<",
            "TT;>;>;",
            "Ly22;",
            "Landroidx/paging/ActiveFlowTracker;",
            ")",
            "Lhd3<",
            "Landroidx/paging/PagingData<",
            "TT;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/CachedPagingDataKt$cachedIn$$inlined$simpleMapLatest$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Landroidx/paging/CachedPagingDataKt$cachedIn$$inlined$simpleMapLatest$1;-><init>(Le02;Ly22;Landroidx/paging/ActiveFlowTracker;)V

    invoke-static {p0, v0}, Landroidx/paging/FlowExtKt;->simpleTransformLatest(Lhd3;Ldm3;)Lhd3;

    move-result-object p0

    new-instance v0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;

    invoke-direct {v0, v1}, Landroidx/paging/CachedPagingDataKt$cachedIn$2;-><init>(Le02;)V

    invoke-static {p0, v0}, Landroidx/paging/FlowExtKt;->simpleRunningReduce(Lhd3;Ldm3;)Lhd3;

    move-result-object p0

    new-instance v0, Landroidx/paging/CachedPagingDataKt$cachedIn$$inlined$map$1;

    invoke-direct {v0, p0}, Landroidx/paging/CachedPagingDataKt$cachedIn$$inlined$map$1;-><init>(Lhd3;)V

    new-instance p0, Landroidx/paging/CachedPagingDataKt$cachedIn$4;

    invoke-direct {p0, p2, v1}, Landroidx/paging/CachedPagingDataKt$cachedIn$4;-><init>(Landroidx/paging/ActiveFlowTracker;Le02;)V

    new-instance v2, Lce3;

    invoke-direct {v2, v0, p0}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance p0, Landroidx/paging/CachedPagingDataKt$cachedIn$5;

    invoke-direct {p0, p2, v1}, Landroidx/paging/CachedPagingDataKt$cachedIn$5;-><init>(Landroidx/paging/ActiveFlowTracker;Le02;)V

    new-instance p2, Lbe3;

    invoke-direct {p2, v2, p0}, Lbe3;-><init>(Lhd3;Ldm3;)V

    invoke-static {p2}, Lbf3;->c(Lhd3;)Ldu7;

    move-result-object p0

    iget p2, p0, Ldu7;->b:I

    iget-object v0, p0, Ldu7;->c:Lcu0;

    const/4 v1, 0x1

    invoke-static {v1, p2, v0}, Lbt7;->a(IILcu0;)Lzs7;

    move-result-object v5

    iget-object p2, p0, Ldu7;->d:Lo22;

    iget-object v4, p0, Ldu7;->a:Lhd3;

    sget-object v6, Lbt7;->b:Lbh8;

    sget-object p0, Leu7$a;->a:Lsj0;

    sget-object v3, Leu7$a;->b:Lv68;

    if-eq v3, p0, :cond_0

    sget-object p0, Lc32;->UNDISPATCHED:Lc32;

    goto :goto_0

    :cond_0
    sget-object p0, Lc32;->DEFAULT:Lc32;

    :goto_0
    new-instance v2, Laf3;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Laf3;-><init>(Leu7;Lhd3;Lvg5;Ljava/lang/Object;Le02;)V

    invoke-static {p1, p2, p0, v2}, Lav0;->b(Ly22;Lo22;Lc32;Lbm3;)Ls68;

    move-result-object p0

    new-instance p1, Lfy6;

    invoke-direct {p1, v5, p0}, Lfy6;-><init>(Lvg5;Ls68;)V

    return-object p1
.end method

.method public static synthetic cachedIn$default(Lhd3;Ly22;Landroidx/paging/ActiveFlowTracker;ILjava/lang/Object;)Lhd3;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/paging/CachedPagingDataKt;->cachedIn(Lhd3;Ly22;Landroidx/paging/ActiveFlowTracker;)Lhd3;

    move-result-object p0

    return-object p0
.end method
