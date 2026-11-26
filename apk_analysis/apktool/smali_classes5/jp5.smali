.class public final Ljp5;
.super Landroidx/room/EntityInsertAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lyo5;",
        ">;"
    }
.end annotation


# virtual methods
.method public final bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lyo5;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    const-wide/16 v0, 0x0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x2

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    const/4 p0, 0x3

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    const/4 p0, 0x4

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x5

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x6

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x7

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    const/16 p0, 0x8

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    const/16 p0, 0x9

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    const/16 p0, 0xa

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    const/16 p0, 0xb

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    const/16 p0, 0xc

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    const/16 p0, 0xd

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    const/16 p0, 0xe

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    const/16 p0, 0xf

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    const/16 p0, 0x10

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `notifications` (`id`,`title`,`body`,`date`,`isRead`,`agreementRequired`,`deeplink`,`buttonDeeplink`,`buttonTitle`,`logoUrl`,`ordInfoPromotion`,`ordPromotionText`,`ordToken`,`ordTitle`,`ordText`,`aspectRatio`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0
.end method
