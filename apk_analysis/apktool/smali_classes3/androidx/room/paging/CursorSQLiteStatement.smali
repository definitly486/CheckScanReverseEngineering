.class public final Landroidx/room/paging/CursorSQLiteStatement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/SQLiteStatement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/paging/CursorSQLiteStatement$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/room/paging/CursorSQLiteStatement$Companion;


# instance fields
.field private final cursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/paging/CursorSQLiteStatement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/paging/CursorSQLiteStatement$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/room/paging/CursorSQLiteStatement;->Companion:Landroidx/room/paging/CursorSQLiteStatement$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public bindBlob(I[B)Ljava/lang/Void;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only get*() calls are allowed on a Cursor backed SQLiteStatement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic bindBlob(I[B)V
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/room/paging/CursorSQLiteStatement;->bindBlob(I[B)Ljava/lang/Void;

    return-void
.end method

.method public bindDouble(ID)Ljava/lang/Void;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only get*() calls are allowed on a Cursor backed SQLiteStatement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic bindDouble(ID)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/paging/CursorSQLiteStatement;->bindDouble(ID)Ljava/lang/Void;

    return-void
.end method

.method public bindLong(IJ)Ljava/lang/Void;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only get*() calls are allowed on a Cursor backed SQLiteStatement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic bindLong(IJ)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/paging/CursorSQLiteStatement;->bindLong(IJ)Ljava/lang/Void;

    return-void
.end method

.method public bindNull(I)Ljava/lang/Void;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only get*() calls are allowed on a Cursor backed SQLiteStatement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic bindNull(I)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/room/paging/CursorSQLiteStatement;->bindNull(I)Ljava/lang/Void;

    return-void
.end method

.method public bindText(ILjava/lang/String;)Ljava/lang/Void;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only get*() calls are allowed on a Cursor backed SQLiteStatement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic bindText(ILjava/lang/String;)V
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/room/paging/CursorSQLiteStatement;->bindText(ILjava/lang/String;)Ljava/lang/Void;

    return-void
.end method

.method public clearBindings()Ljava/lang/Void;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Only get*() calls are allowed on a Cursor backed SQLiteStatement"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic clearBindings()V
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/room/paging/CursorSQLiteStatement;->clearBindings()Ljava/lang/Void;

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public getBlob(I)[B
    .locals 0

    iget-object p0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public getColumnCount()I
    .locals 0

    iget-object p0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result p0

    return p0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public getColumnType(I)I
    .locals 1

    sget-object v0, Landroidx/room/paging/CursorSQLiteStatement;->Companion:Landroidx/room/paging/CursorSQLiteStatement$Companion;

    iget-object p0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    invoke-static {v0, p0, p1}, Landroidx/room/paging/CursorSQLiteStatement$Companion;->access$getDataType(Landroidx/room/paging/CursorSQLiteStatement$Companion;Landroid/database/Cursor;I)I

    move-result p0

    return p0
.end method

.method public getDouble(I)D
    .locals 0

    iget-object p0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public getLong(I)J
    .locals 0

    iget-object p0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public isNull(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 1

    iget-object p0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    return-void
.end method

.method public step()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    return p0
.end method
