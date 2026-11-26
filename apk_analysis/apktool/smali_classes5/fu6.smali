.class public final Lfu6;
.super Landroidx/room/EntityInsertAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lrt6;",
        ">;"
    }
.end annotation


# virtual methods
.method public final bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lrt6;

    const/4 p0, 0x1

    iget-wide v0, p2, Lrt6;->a:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object p0, p2, Lrt6;->b:Lyt6;

    invoke-static {p0}, Lku6;->j(Lyt6;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    iget-boolean p0, p2, Lrt6;->c:Z

    const/4 v0, 0x3

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object p0, p2, Lrt6;->d:Ljava/lang/String;

    const/4 v0, 0x4

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_0
    const/4 p0, 0x5

    iget-wide v0, p2, Lrt6;->e:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object p0, p2, Lrt6;->f:Ljava/lang/String;

    const/4 v0, 0x6

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_1
    iget-object p0, p2, Lrt6;->g:Ljava/lang/String;

    const/4 v0, 0x7

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_2
    iget-object p0, p2, Lrt6;->h:Ljava/lang/String;

    const/16 v0, 0x8

    if-nez p0, :cond_3

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_3
    iget-object p0, p2, Lrt6;->i:Lvt6;

    invoke-static {p0}, Lku6;->i(Lvt6;)Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x9

    invoke-interface {p1, p2, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    const/16 p0, 0xa

    const-wide/16 v0, 0x0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR IGNORE INTO `purchases_table` (`id`,`type`,`advance_available`,`campaign_icon_url`,`cashback_value`,`title`,`text`,`image_guide_text`,`status`,`next_show_time`) VALUES (?,?,?,?,?,?,?,?,?,?)"

    return-object p0
.end method
