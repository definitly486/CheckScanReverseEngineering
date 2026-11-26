.class public final Lw71;
.super Landroidx/room/EntityInsertAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Ln81;",
        ">;"
    }
.end annotation


# virtual methods
.method public final bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Ln81;

    iget p0, p2, Ln81;->a:I

    int-to-long v0, p0

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object p0, p2, Ln81;->b:Ljava/lang/String;

    const/4 p2, 0x2

    if-nez p0, :cond_0

    invoke-interface {p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    return-void

    :cond_0
    invoke-interface {p1, p2, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `product_categories` (`id`,`name`) VALUES (?,?)"

    return-object p0
.end method
