.class public final Landroidx/paging/PlaceholderPaddedListDiffHelperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final computeDiff(Landroidx/paging/PlaceholderPaddedList;Landroidx/paging/PlaceholderPaddedList;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)Landroidx/paging/PlaceholderPaddedDiffResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/PlaceholderPaddedList<",
            "TT;>;",
            "Landroidx/paging/PlaceholderPaddedList<",
            "TT;>;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)",
            "Landroidx/paging/PlaceholderPaddedDiffResult;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/paging/PlaceholderPaddedList;->getDataCount()I

    move-result v4

    invoke-interface {p1}, Landroidx/paging/PlaceholderPaddedList;->getDataCount()I

    move-result v5

    new-instance v0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;-><init>(Landroidx/paging/PlaceholderPaddedList;Landroidx/paging/PlaceholderPaddedList;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;II)V

    const/4 p0, 0x1

    invoke-static {v0, p0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/paging/PlaceholderPaddedList;->getDataCount()I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lkx6;->n(II)Ly74;

    move-result-object p2

    instance-of v1, p2, Ljava/util/Collection;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move p0, v0

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lu74;

    invoke-virtual {v1}, Lu74;->nextInt()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->convertOldPositionToNew(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    :goto_0
    new-instance p2, Landroidx/paging/PlaceholderPaddedDiffResult;

    invoke-direct {p2, p1, p0}, Landroidx/paging/PlaceholderPaddedDiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$DiffResult;Z)V

    return-object p2
.end method

.method public static final dispatchDiff(Landroidx/paging/PlaceholderPaddedList;Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/paging/PlaceholderPaddedList;Landroidx/paging/PlaceholderPaddedDiffResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/PlaceholderPaddedList<",
            "TT;>;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "Landroidx/paging/PlaceholderPaddedList<",
            "TT;>;",
            "Landroidx/paging/PlaceholderPaddedDiffResult;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroidx/paging/PlaceholderPaddedDiffResult;->getHasOverlap()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/paging/OverlappingListsDiffDispatcher;->INSTANCE:Landroidx/paging/OverlappingListsDiffDispatcher;

    invoke-virtual {v0, p0, p2, p1, p3}, Landroidx/paging/OverlappingListsDiffDispatcher;->dispatchDiff(Landroidx/paging/PlaceholderPaddedList;Landroidx/paging/PlaceholderPaddedList;Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/paging/PlaceholderPaddedDiffResult;)V

    return-void

    :cond_0
    sget-object p3, Landroidx/paging/DistinctListsDiffDispatcher;->INSTANCE:Landroidx/paging/DistinctListsDiffDispatcher;

    invoke-virtual {p3, p1, p0, p2}, Landroidx/paging/DistinctListsDiffDispatcher;->dispatchDiff(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/paging/PlaceholderPaddedList;Landroidx/paging/PlaceholderPaddedList;)V

    return-void
.end method

.method public static final transformAnchorIndex(Landroidx/paging/PlaceholderPaddedList;Landroidx/paging/PlaceholderPaddedDiffResult;Landroidx/paging/PlaceholderPaddedList;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PlaceholderPaddedList<",
            "*>;",
            "Landroidx/paging/PlaceholderPaddedDiffResult;",
            "Landroidx/paging/PlaceholderPaddedList<",
            "*>;I)I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/paging/PlaceholderPaddedDiffResult;->getHasOverlap()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p2}, Landroidx/paging/PlaceholderPaddedList;->getSize()I

    move-result p0

    invoke-static {v1, p0}, Lkx6;->n(II)Ly74;

    move-result-object p0

    invoke-static {p3, p0}, Lkx6;->g(ILy74;)I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0}, Landroidx/paging/PlaceholderPaddedList;->getPlaceholdersBefore()I

    move-result v0

    sub-int v0, p3, v0

    invoke-interface {p0}, Landroidx/paging/PlaceholderPaddedList;->getDataCount()I

    move-result v2

    if-ltz v0, :cond_4

    if-ge v0, v2, :cond_4

    move v2, v1

    :goto_0
    const/16 v3, 0x1e

    if-ge v2, v3, :cond_4

    div-int/lit8 v3, v2, 0x2

    rem-int/lit8 v4, v2, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    move v6, v5

    :cond_1
    mul-int/2addr v3, v6

    add-int/2addr v3, v0

    if-ltz v3, :cond_3

    invoke-interface {p0}, Landroidx/paging/PlaceholderPaddedList;->getDataCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/paging/PlaceholderPaddedDiffResult;->getDiff()Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->convertOldPositionToNew(I)I

    move-result v3

    if-eq v3, v5, :cond_3

    invoke-interface {p2}, Landroidx/paging/PlaceholderPaddedList;->getPlaceholdersBefore()I

    move-result p0

    add-int/2addr p0, v3

    return p0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Landroidx/paging/PlaceholderPaddedList;->getSize()I

    move-result p0

    invoke-static {v1, p0}, Lkx6;->n(II)Ly74;

    move-result-object p0

    invoke-static {p3, p0}, Lkx6;->g(ILy74;)I

    move-result p0

    return p0
.end method
