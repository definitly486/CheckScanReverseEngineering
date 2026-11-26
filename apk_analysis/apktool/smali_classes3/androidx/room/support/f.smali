.class public final synthetic Landroidx/room/support/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-static {p1}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteStatement;->e(Landroidx/sqlite/db/SupportSQLiteStatement;)Lj59;

    move-result-object p0

    return-object p0
.end method
