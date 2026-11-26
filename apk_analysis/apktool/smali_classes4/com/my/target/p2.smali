.class public final Lcom/my/target/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/b2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/p2$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/database/sqlite/SQLiteDatabase;

.field public final b:Landroid/database/sqlite/SQLiteStatement;

.field public final c:Landroid/database/sqlite/SQLiteStatement;

.field public final d:Landroid/database/sqlite/SQLiteStatement;

.field public final e:Ltk2;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/p2;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "INSERT OR IGNORE INTO table_stat_send(url, type, timestampMs, deadlineMs, adId, monitoring, neededDetailedMonitoring) VALUES (?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/p2;->b:Landroid/database/sqlite/SQLiteStatement;

    const-string v0, "DELETE FROM table_stat_send WHERE id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/p2;->c:Landroid/database/sqlite/SQLiteStatement;

    const-string v0, "DELETE FROM table_stat_send WHERE deadlineMs <= ?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/p2;->d:Landroid/database/sqlite/SQLiteStatement;

    new-instance p1, Ltk2;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ltk2;-><init>(I)V

    iput-object p1, p0, Lcom/my/target/p2;->e:Ltk2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/my/target/b2$a;
    .locals 4

    const/4 v0, 0x0

    .line 87
    :try_start_0
    new-instance v1, Lcom/my/target/p2$a;

    iget-object v2, p0, Lcom/my/target/p2;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT id, url, type, timestampMs, monitoring, neededDetailedMonitoring  FROM table_stat_send"

    .line 88
    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iget-object p0, p0, Lcom/my/target/p2;->e:Ltk2;

    invoke-direct {v1, v2, p0}, Lcom/my/target/p2$a;-><init>(Landroid/database/Cursor;Ltk2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DB getStatsToSendIterator error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    throw p0
.end method

.method public final a(J)V
    .locals 2

    iget-object p0, p0, Lcom/my/target/p2;->d:Landroid/database/sqlite/SQLiteStatement;

    const-string v0, "DB deleteOldStats error: "

    const/4 v1, 0x1

    .line 80
    :try_start_0
    invoke-virtual {p0, v1, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 81
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    return-void

    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 84
    invoke-static {p2, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    .line 86
    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JJLi7a;Z)V
    .locals 3

    iget-object p0, p0, Lcom/my/target/p2;->b:Landroid/database/sqlite/SQLiteStatement;

    const-string v0, "DB insertStat error: "

    :try_start_0
    iget-object v1, p7, Li7a;->a:Lz8a;

    iget-object v1, v1, Lz8a;->a:Ljava/lang/String;

    invoke-static {p7}, Ltk2;->b(Li7a;)Ljava/lang/String;

    move-result-object p7

    const/4 v2, 0x1

    invoke-virtual {p0, v2, p1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, p5, p6}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, p7}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    if-eqz p8, :cond_0

    const-wide/16 p1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const/4 p3, 0x7

    invoke-virtual {p0, p3, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    throw p1
.end method

.method public final b()Ljava/util/Set;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/my/target/p2;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT url FROM table_stat_send WHERE neededDetailedMonitoring == 1"

    invoke-virtual {p0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    if-eqz p0, :cond_1

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_4
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DB getUrlsWithNeededDetailedMonitoring error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(J)V
    .locals 2

    iget-object p0, p0, Lcom/my/target/p2;->c:Landroid/database/sqlite/SQLiteStatement;

    const-string v0, "DB deleteInfo error: "

    const/4 v1, 0x1

    .line 66
    :try_start_0
    invoke-virtual {p0, v1, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 67
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    return-void

    :catchall_0
    move-exception p1

    .line 69
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 70
    invoke-static {p2, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    .line 72
    throw p1
.end method
