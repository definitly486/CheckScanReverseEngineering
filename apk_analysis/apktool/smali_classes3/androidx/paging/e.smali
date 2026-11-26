.class public final synthetic Landroidx/paging/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/paging/PageStore;

    invoke-static {p1}, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;->g(Landroidx/paging/PageStore;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
