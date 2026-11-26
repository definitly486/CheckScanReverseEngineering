.class public final Landroidx/paging/AsyncPagingDataDifferKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$get(Landroidx/paging/PlaceholderPaddedList;I)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/paging/AsyncPagingDataDifferKt;->get(Landroidx/paging/PlaceholderPaddedList;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$peek(Landroidx/paging/PlaceholderPaddedList;I)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/paging/AsyncPagingDataDifferKt;->peek(Landroidx/paging/PlaceholderPaddedList;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$snapshot(Landroidx/paging/PlaceholderPaddedList;)Landroidx/paging/ItemSnapshotList;
    .locals 0

    invoke-static {p0}, Landroidx/paging/AsyncPagingDataDifferKt;->snapshot(Landroidx/paging/PlaceholderPaddedList;)Landroidx/paging/ItemSnapshotList;

    move-result-object p0

    return-object p0
.end method

.method private static final get(Landroidx/paging/PlaceholderPaddedList;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/PlaceholderPaddedList<",
            "TT;>;I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    invoke-interface {p0}, Landroidx/paging/PlaceholderPaddedList;->getSize()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-interface {p0}, Landroidx/paging/PlaceholderPaddedList;->getPlaceholdersBefore()I

    move-result v1

    sub-int/2addr p1, v1

    if-ltz p1, :cond_1

    invoke-interface {p0}, Landroidx/paging/PlaceholderPaddedList;->getDataCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroidx/paging/PlaceholderPaddedList;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v1, "Index: "

    const-string v2, ", Size: "

    invoke-static {p1, v1, v2}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Landroidx/paging/PlaceholderPaddedList;->getSize()I

    move-result p0

    invoke-static {p0, p1}, Lbj;->d(ILjava/lang/StringBuilder;)V

    return-object v0
.end method

.method private static final peek(Landroidx/paging/PlaceholderPaddedList;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/PlaceholderPaddedList<",
            "TT;>;I)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/paging/AsyncPagingDataDifferKt;->get(Landroidx/paging/PlaceholderPaddedList;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final snapshot(Landroidx/paging/PlaceholderPaddedList;)Landroidx/paging/ItemSnapshotList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/PlaceholderPaddedList<",
            "TT;>;)",
            "Landroidx/paging/ItemSnapshotList<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/paging/PlaceholderPaddedList;->getDataCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-ltz v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0, v2}, Landroidx/paging/PlaceholderPaddedList;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v2, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/ItemSnapshotList;

    invoke-interface {p0}, Landroidx/paging/PlaceholderPaddedList;->getPlaceholdersBefore()I

    move-result v2

    invoke-interface {p0}, Landroidx/paging/PlaceholderPaddedList;->getPlaceholdersAfter()I

    move-result p0

    invoke-direct {v0, v2, p0, v1}, Landroidx/paging/ItemSnapshotList;-><init>(IILjava/util/List;)V

    return-object v0
.end method
