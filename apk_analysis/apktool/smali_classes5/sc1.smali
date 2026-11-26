.class public final Lsc1;
.super Landroidx/room/migration/Migration;
.source "SourceFile"


# instance fields
.field public final a:Lqc1;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x7

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    new-instance v0, Lqc1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsc1;->a:Lqc1;

    return-void
.end method


# virtual methods
.method public final migrate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 1

    const-string v0, "DROP TABLE `stories`"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string v0, "DROP TABLE `story_ord`"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string v0, "DROP TABLE `publishers_table`"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `notifications` ADD COLUMN `buttonTitle` TEXT DEFAULT NULL"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `notifications` ADD COLUMN `logoUrl` TEXT DEFAULT NULL"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `notifications` ADD COLUMN `ordInfoPromotion` INTEGER DEFAULT NULL"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `notifications` ADD COLUMN `ordPromotionText` TEXT DEFAULT NULL"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `notifications` ADD COLUMN `ordToken` TEXT DEFAULT NULL"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `notifications` ADD COLUMN `ordTitle` TEXT DEFAULT NULL"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `notifications` ADD COLUMN `ordText` TEXT DEFAULT NULL"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    iget-object p0, p0, Lsc1;->a:Lqc1;

    invoke-interface {p0, p1}, Landroidx/room/migration/AutoMigrationSpec;->onPostMigrate(Landroidx/sqlite/SQLiteConnection;)V

    return-void
.end method
