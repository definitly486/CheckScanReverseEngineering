.class public final Lku6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzt6;


# instance fields
.field public final a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

.field public final b:Lfu6;

.field public final c:Lgu6;

.field public final d:Lhu6;

.field public final e:Liu6;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lku6;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    new-instance p1, Lfu6;

    invoke-direct {p1}, Landroidx/room/EntityInsertAdapter;-><init>()V

    iput-object p1, p0, Lku6;->b:Lfu6;

    new-instance p1, Lgu6;

    invoke-direct {p1}, Landroidx/room/EntityInsertAdapter;-><init>()V

    iput-object p1, p0, Lku6;->c:Lgu6;

    new-instance p1, Lhu6;

    invoke-direct {p1}, Landroidx/room/EntityInsertAdapter;-><init>()V

    iput-object p1, p0, Lku6;->d:Lhu6;

    new-instance p1, Liu6;

    invoke-direct {p1}, Landroidx/room/EntityInsertAdapter;-><init>()V

    iput-object p1, p0, Lku6;->e:Liu6;

    new-instance p0, Lju6;

    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    return-void
.end method

.method public static i(Lvt6;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lku6$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "Can\'t convert enum to string, unknown enum value: "

    invoke-static {p0, v0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "ScreenshotSend"

    return-object p0

    :pswitch_1
    const-string p0, "Send"

    return-object p0

    :pswitch_2
    const-string p0, "ShowLate"

    return-object p0

    :pswitch_3
    const-string p0, "Reject"

    return-object p0

    :pswitch_4
    const-string p0, "WaitSending"

    return-object p0

    :pswitch_5
    const-string p0, "New"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j(Lyt6;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lku6$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p0, "ADVERTISING_CAMPAIGN"

    return-object p0

    :cond_0
    const-string v0, "Can\'t convert enum to string, unknown enum value: "

    invoke-static {p0, v0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "ADMITAD_ONLINE"

    return-object p0
.end method


# virtual methods
.method public final a()Lmz7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lz2;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lz2;-><init>(I)V

    iget-object p0, p0, Lku6;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroidx/room/RxRoom;->createSingle(Landroidx/room/RoomDatabase;ZZLnl3;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final b(J)Lqp1;
    .locals 1

    new-instance v0, Lcu6;

    invoke-direct {v0, p1, p2}, Lcu6;-><init>(J)V

    iget-object p0, p0, Lku6;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p0, p1, p2, v0}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLnl3;)Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final c(J)Lmz7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Lot6;",
            ">;"
        }
    .end annotation

    new-instance v0, Lau6;

    invoke-direct {v0, p0, p1, p2}, Lau6;-><init>(Lku6;J)V

    iget-object p0, p0, Lku6;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 p1, 0x1

    invoke-static {p0, p1, p1, v0}, Landroidx/room/RxRoom;->createSingle(Landroidx/room/RoomDatabase;ZZLnl3;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lqp1;
    .locals 3

    new-instance v0, Leu6;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leu6;-><init>(I)V

    iget-object p0, p0, Lku6;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLnl3;)Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ltt6;)Lqp1;
    .locals 2

    new-instance v0, Lfu3;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lfu3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lku6;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 p1, 0x0

    invoke-static {p0, p1, v1, v0}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLnl3;)Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lpt6;)Lqp1;
    .locals 2

    new-instance v0, Lxn4;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lxn4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lku6;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 p1, 0x0

    invoke-static {p0, p1, v1, v0}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLnl3;)Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lrt6;)Lqp1;
    .locals 2

    new-instance v0, Le22;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Le22;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lku6;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 p1, 0x0

    invoke-static {p0, p1, v1, v0}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLnl3;)Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lwt6;)Lqp1;
    .locals 2

    new-instance v0, Ldu6;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Ldu6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lku6;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 p1, 0x1

    invoke-static {p0, v1, p1, v0}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLnl3;)Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final k(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/LongSparseArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteConnection;",
            "Landroidx/collection/LongSparseArray<",
            "Lpt6;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    const/16 v1, 0x3e7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    new-instance v0, Lza2;

    invoke-direct {v0, v3, p0, p1}, Lza2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2, v2, v0}, Landroidx/room/util/RelationUtil;->recursiveFetchLongSparseArray(Landroidx/collection/LongSparseArray;ZLnl3;)V

    return-void

    :cond_1
    const-string p0, "SELECT `purchase_id`,`bank_title`,`bak_text` FROM `purchases_bank_info_table` WHERE `purchase_id` IN ("

    invoke-static {p0}, Lad2;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    move p1, v2

    move v0, v3

    :goto_0
    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-virtual {p2, p1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-interface {p0, v0, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    add-int/2addr v0, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    const-string p1, "purchase_id"

    invoke-static {p0, p1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-void

    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    move-object v6, v7

    goto :goto_2

    :cond_4
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    const/4 v8, 0x2

    invoke-interface {p0, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {p0, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    new-instance v8, Lpt6;

    invoke-direct {v8, v4, v5, v6, v7}, Lpt6;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_6
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-void

    :goto_4
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method public final l(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/LongSparseArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteConnection;",
            "Landroidx/collection/LongSparseArray<",
            "Ltt6;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    const/16 v1, 0x3e7

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    new-instance v0, Lbu6;

    invoke-direct {v0, v2, p0, p1}, Lbu6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2, v2, v0}, Landroidx/room/util/RelationUtil;->recursiveFetchLongSparseArray(Landroidx/collection/LongSparseArray;ZLnl3;)V

    return-void

    :cond_1
    const-string p0, "SELECT `purchase_id`,`shop_title`,`shop_text`,`example_image_url` FROM `purchases_shop_info_table` WHERE `purchase_id` IN ("

    invoke-static {p0}, Lad2;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p1, 0x1

    move v1, p1

    move v0, v2

    :goto_0
    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p2, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-interface {p0, v1, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    add-int/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v0, "purchase_id"

    invoke-static {p0, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndex(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-void

    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v6

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    move-object v8, v5

    goto :goto_2

    :cond_4
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    :goto_2
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v5

    goto :goto_3

    :cond_5
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    :goto_3
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_6

    :goto_4
    move-object v10, v5

    goto :goto_5

    :cond_6
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :goto_5
    new-instance v5, Ltt6;

    invoke-direct/range {v5 .. v10}, Ltt6;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v3, v4, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_6

    :cond_7
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-void

    :goto_6
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method
