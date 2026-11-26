.class public final Lyads/e42;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/we;

.field public final b:Lyads/uq5;

.field public final c:Lyads/ol5;

.field public final d:Ljava/util/Map;

.field public final e:Lyads/v84;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/dd0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/c42;

    invoke-direct {v0, p0}, Lyads/c42;-><init>(Lyads/e42;)V

    new-instance v1, Lyads/d42;

    invoke-direct {v1, p0}, Lyads/d42;-><init>(Lyads/e42;)V

    check-cast p2, Ljs2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "div-storage.db"

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lyads/x32;->a(Landroid/content/Context;Ljava/lang/String;ILyads/c42;Lyads/d42;)Lyads/we;

    move-result-object p1

    iput-object p1, p0, Lyads/e42;->a:Lyads/we;

    new-instance p1, Lyads/uq5;

    new-instance p2, Lrg0;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lrg0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2}, Lyads/uq5;-><init>(Lll3;)V

    iput-object p1, p0, Lyads/e42;->b:Lyads/uq5;

    new-instance p2, Lyads/ol5;

    invoke-direct {p2, p1}, Lyads/ol5;-><init>(Lyads/uq5;)V

    iput-object p2, p0, Lyads/e42;->c:Lyads/ol5;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lb36;

    invoke-direct {v0, p1, p2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lzt9;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lyads/e42;->d:Ljava/util/Map;

    new-instance p1, Lau9;

    invoke-direct {p1, p0}, Lau9;-><init>(Lyads/e42;)V

    iput-object p1, p0, Lyads/e42;->e:Lyads/v84;

    return-void
.end method

.method public static a(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1

    .line 124
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    .line 125
    :cond_0
    const-string p0, "Column \'"

    const-string v0, "\' not found in cursor"

    .line 126
    invoke-static {p0, p1, v0}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final a(Ljava/util/Set;Lyads/te;)Landroid/database/Cursor;
    .locals 1

    .line 101
    invoke-static {p0}, Lyads/a42;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n    SELECT raw_json_id, raw_json_data\n    FROM raw_json\n    WHERE raw_json_id IN\n "

    .line 102
    invoke-static {v0, p0}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 103
    new-array v0, v0, [Ljava/lang/String;

    .line 104
    invoke-virtual {p1, p0, v0}, Lyads/te;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lyads/te;Lnl3;)Landroid/database/Cursor;
    .locals 0

    .line 123
    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    return-object p0
.end method

.method public static final a(Lyads/e42;Lnl3;Ljava/util/Set;Lyads/s45;)Lj59;
    .locals 2

    .line 110
    invoke-virtual {p3}, Lyads/s45;->c()Landroid/database/Cursor;

    move-result-object p3

    .line 111
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Lyads/b42;

    invoke-direct {v0, p0, p3}, Lyads/b42;-><init>(Lyads/e42;Landroid/database/Cursor;)V

    .line 113
    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, v0, Lyads/b42;->d:Ljava/lang/String;

    .line 115
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x1

    .line 116
    iput-boolean v1, v0, Lyads/b42;->c:Z

    .line 117
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    .line 119
    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/e42;[B)Lorg/json/JSONObject;
    .locals 2

    .line 128
    new-instance p0, Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static final a(Lyads/e42;)Lyads/te;
    .locals 3

    .line 94
    iget-object p0, p0, Lyads/e42;->a:Lyads/we;

    .line 95
    iget-object v0, p0, Lyads/we;->a:Lyads/ue;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, v0, Lyads/ue;->a:Lyads/se;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, v0, Lyads/ue;->g:Landroid/database/sqlite/SQLiteDatabase;

    .line 97
    iget v1, v0, Lyads/ue;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lyads/ue;->f:I

    .line 98
    iget-object v1, v0, Lyads/ue;->e:Ljava/util/LinkedHashSet;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, v0, Lyads/ue;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 100
    invoke-virtual {p0, v1}, Lyads/we;->a(Landroid/database/sqlite/SQLiteDatabase;)Lyads/te;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lyads/z32;
    .locals 1

    .line 120
    const-string v0, "Unexpected exception on database access: "

    .line 121
    invoke-static {v0, p1}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    new-instance v0, Lyads/z32;

    invoke-direct {v0, p0, p1}, Lyads/z32;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final a(Lyads/e42;Lyads/te;)V
    .locals 0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/e42;->b(Lyads/te;)V

    .line 84
    invoke-static {p1}, Lyads/e42;->a(Lyads/te;)V

    return-void
.end method

.method public static a(Lyads/te;)V
    .locals 2

    .line 85
    :try_start_0
    const-string v0, "\n    CREATE TABLE IF NOT EXISTS cards(\n    layout_id TEXT NOT NULL PRIMARY KEY,\n    card_data BLOB NULLABLE,\n    metadata BLOB NULLABLE,\n    group_id TEXT NOT NULL)"

    .line 86
    iget-object v1, p0, Lyads/te;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    const-string v0, "\n    CREATE TABLE IF NOT EXISTS template_references(\n    group_id TEXT NOT NULL,\n    template_id TEXT NOT NULL,\n    template_hash TEXT NOT NULL,\n    PRIMARY KEY(group_id, template_id))"

    .line 88
    iget-object v1, p0, Lyads/te;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    const-string v0, "\n    CREATE TABLE IF NOT EXISTS templates(\n    template_hash TEXT NOT NULL PRIMARY KEY,\n    template_data BLOB NULLABLE)"

    .line 90
    iget-object v1, p0, Lyads/te;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    const-string v0, "\n    CREATE TABLE IF NOT EXISTS raw_json(\n    raw_json_id TEXT NOT NULL PRIMARY KEY,\n    raw_json_data BLOB NULLABLE)"

    .line 92
    iget-object p0, p0, Lyads/te;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 93
    new-instance v0, Landroid/database/SQLException;

    const-string v1, "Create tables"

    invoke-direct {v0, v1, p0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b(Lyads/te;)V
    .locals 3

    .line 66
    new-instance v0, Lyads/uq5;

    .line 67
    new-instance v1, La43;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, La43;-><init>(Ljava/lang/Object;I)V

    .line 68
    invoke-direct {v0, v1}, Lyads/uq5;-><init>(Lll3;)V

    .line 69
    new-instance p0, Lyads/wq5;

    invoke-direct {p0}, Lyads/wq5;-><init>()V

    const/4 v1, 0x1

    .line 70
    new-array v1, v1, [Lyads/tq5;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lyads/uq5;->a([Lyads/tq5;)V

    return-void
.end method

.method public static final c(Lyads/te;)Lyads/te;
    .locals 0

    return-object p0
.end method

.method public static final d(Lyads/te;)V
    .locals 2

    :try_start_0
    const-string v0, "\n    CREATE TABLE IF NOT EXISTS raw_json(\n    raw_json_id TEXT NOT NULL PRIMARY KEY,\n    raw_json_data BLOB NULLABLE)"

    iget-object p0, p0, Lyads/te;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Landroid/database/SQLException;

    const-string v1, "Create \"raw_json\" table"

    invoke-direct {v0, v1, p0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final e(Lyads/te;)Lj59;
    .locals 0

    invoke-static {p0}, Lyads/up5;->a(Ljava/io/Closeable;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljr8;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Ljr8;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Lyads/e42;->b(Lnl3;)Lyads/s45;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lyads/s45;->c()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lyads/b42;

    invoke-direct {v2, p0, v1}, Lyads/b42;-><init>(Lyads/e42;Landroid/database/Cursor;)V

    new-instance v3, Lyads/j45;

    iget-object v4, v2, Lyads/b42;->d:Ljava/lang/String;

    iget-object v5, v2, Lyads/b42;->e:Lcl4;

    invoke-interface {v5}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    invoke-direct {v3, v4, v5}, Lyads/j45;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    iput-boolean v3, v2, Lyads/b42;->c:Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    return-object v0

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(Lnl3;)Ljava/util/LinkedHashSet;
    .locals 3

    .line 105
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 106
    iget-object v1, p0, Lyads/e42;->b:Lyads/uq5;

    .line 107
    new-instance v2, Lbu9;

    invoke-direct {v2, p0, p1, v0}, Lbu9;-><init>(Lyads/e42;Lnl3;Ljava/util/LinkedHashSet;)V

    .line 108
    new-instance p0, Lyads/xq5;

    invoke-direct {p0, v2}, Lyads/xq5;-><init>(Lnl3;)V

    const/4 p1, 0x1

    .line 109
    new-array p1, p1, [Lyads/tq5;

    const/4 v2, 0x0

    aput-object p0, p1, v2

    invoke-virtual {v1, p1}, Lyads/uq5;->a([Lyads/tq5;)V

    return-object v0
.end method

.method public final b(Lnl3;)Lyads/s45;
    .locals 3

    iget-object p0, p0, Lyads/e42;->a:Lyads/we;

    iget-object v0, p0, Lyads/we;->a:Lyads/ue;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lyads/ue;->a:Lyads/se;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, v0, Lyads/ue;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget v1, v0, Lyads/ue;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lyads/ue;->c:I

    iget-object v1, v0, Lyads/ue;->b:Ljava/util/LinkedHashSet;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lyads/ue;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {p0, v1}, Lyads/we;->a(Landroid/database/sqlite/SQLiteDatabase;)Lyads/te;

    move-result-object p0

    new-instance v0, Lyads/s45;

    new-instance v1, Lny4;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lny4;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcu9;

    invoke-direct {v2, p0, p1}, Lcu9;-><init>(Lyads/te;Lnl3;)V

    invoke-direct {v0, v1, v2}, Lyads/s45;-><init>(Lll3;Lws6;)V

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b(Ljava/util/Set;)Lyads/w32;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Read raw jsons with ids: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    :try_start_0
    invoke-virtual {p0, p1}, Lyads/e42;->a(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 61
    invoke-static {p0, v0}, Lyads/e42;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lyads/z32;

    move-result-object p0

    .line 62
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception p0

    .line 63
    invoke-static {p0, v0}, Lyads/e42;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lyads/z32;

    move-result-object p0

    .line 64
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :goto_0
    sget-object p0, Lkx2;->b:Lkx2;

    :goto_1
    new-instance p1, Lyads/w32;

    invoke-direct {p1, p0, v1}, Lyads/w32;-><init>(Ljava/util/List;Ljava/util/ArrayList;)V

    return-object p1
.end method
