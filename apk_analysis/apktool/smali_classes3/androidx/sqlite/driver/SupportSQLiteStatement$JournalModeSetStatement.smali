.class final Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;
.super Landroidx/sqlite/driver/SupportSQLiteStatement;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/SQLiteStatement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/driver/SupportSQLiteStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JournalModeSetStatement"
.end annotation


# instance fields
.field private final delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;Landroidx/sqlite/driver/SupportSQLiteStatement;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/sqlite/driver/SupportSQLiteStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;Ljh2;)V

    iput-object p3, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public bindBoolean(IZ)V
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindBoolean(IZ)V

    return-void
.end method

.method public bindDouble(ID)V
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0, p1, p2, p3}, Landroidx/sqlite/SQLiteStatement;->bindDouble(ID)V

    return-void
.end method

.method public bindFloat(IF)V
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindFloat(IF)V

    return-void
.end method

.method public bindInt(II)V
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindInt(II)V

    return-void
.end method

.method public bindLong(IJ)V
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0, p1, p2, p3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bindNull(I)V
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    return-void
.end method

.method public bindText(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    return-void
.end method

.method public clearBindings()V
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->clearBindings()V

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-void
.end method

.method public getBlob(I)[B
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public getColumnCount()I
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->getColumnCount()I

    move-result p0

    return p0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getColumnName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getColumnNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->getColumnNames()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getColumnType(I)I
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getColumnType(I)I

    move-result p0

    return p0
.end method

.method public getDouble(I)D
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public getFloat(I)F
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getFloat(I)F

    move-result p0

    return p0
.end method

.method public getInt(I)I
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getInt(I)I

    move-result p0

    return p0
.end method

.method public getLong(I)J
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isNull(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->reset()V

    return-void
.end method

.method public step()Z
    .locals 4

    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wal"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lra8;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->getDb()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->enableWriteAheadLogging()Z

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->getDb()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->disableWriteAheadLogging()V

    return v0
.end method
