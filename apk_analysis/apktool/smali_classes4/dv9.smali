.class public final Ldv9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lft9;


# instance fields
.field public final b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldv9;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    const-string v0, "com_my_target_sdk.db"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS table_url_resolver_cookie( uri_key TEXT NOT NULL, uri TEXT NOT NULL, cookie_json TEXT NOT NULL)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CookieStore: create table cookie error, "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    const-string v0, "CREATE TABLE IF NOT EXISTS table_stat_send( id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT NOT NULL, type TEXT NOT NULL, timestampMs INTEGER(8) NOT NULL, deadlineMs INTEGER(8) NOT NULL, adId TEXT NOT NULL, monitoring TEXT NOT NULL, neededDetailedMonitoring INTEGER(8) NOT NULL)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "StatSend: create table statSender error, "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_2
    const-string v0, "CREATE TABLE IF NOT EXISTS table_audit_pixel_attempts( id INTEGER PRIMARY KEY AUTOINCREMENT, adId TEXT NOT NULL, pixelUrl TEXT NOT NULL, type TEXT, attempt INTEGER(8) NOT NULL, timestamp INTEGER(8) NOT NULL, error TEXT, isCompleted INTEGER(8) NOT NULL DEFAULT 0, monitoring TEXT NOT NULL DEFAULT \'\')"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AuditPixelDbTableReal.createTableDefinitions() error, "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method


# virtual methods
.method public final a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    iget-object p0, p0, Ldv9;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method
