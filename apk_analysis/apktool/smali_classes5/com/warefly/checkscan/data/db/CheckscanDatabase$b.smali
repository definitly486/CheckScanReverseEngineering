.class public final Lcom/warefly/checkscan/data/db/CheckscanDatabase$b;
.super Landroidx/room/migration/Migration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/data/db/CheckscanDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# virtual methods
.method public final migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "\n                    CREATE TABLE IF NOT EXISTS `cheque_requests_copy` (\n                        `id` INTEGER NOT NULL, \n                        `qrCode` TEXT NOT NULL, \n                        `status` TEXT NOT NULL, \n                        `requestJson` TEXT NOT NULL, \n                        `responseJson` TEXT, \n                        PRIMARY KEY(`qrCode`)\n                    )\n                    "

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, " \n                    INSERT INTO cheque_requests_copy (id, qrCode, status, requestJson, responseJson) \n                    SELECT id, qrCode, status, requestJson, responseJson FROM cheque_requests\n                    "

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE cheque_requests"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE cheque_requests_copy RENAME TO cheque_requests"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
