.class public final Lcom/warefly/checkscan/data/db/CheckscanDatabase$c;
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

    const-string p0, "\n                    CREATE TABLE IF NOT EXISTS `notifications` (\n                        `id` INTEGER NOT NULL, \n                        `title` TEXT NOT NULL,\n                        `body` TEXT NOT NULL,\n                        `date` INTEGER NOT NULL,\n                        `deeplink` TEXT,\n                        `isRead` INTEGER NOT NULL,\n                        PRIMARY KEY(`id`)\n                    )\n                     "

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
