.class public final Lyads/te;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final b:Landroid/database/sqlite/SQLiteDatabase;

.field public final synthetic c:Lyads/we;


# direct methods
.method public constructor <init>(Lyads/we;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iput-object p1, p0, Lyads/te;->c:Lyads/we;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/te;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    iget-object p0, p0, Lyads/te;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lyads/te;->c:Lyads/we;

    iget-object v0, v0, Lyads/we;->a:Lyads/ue;

    iget-object p0, p0, Lyads/te;->b:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lyads/ue;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Lyads/ue;->e:Ljava/util/LinkedHashSet;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p0, v0, Lyads/ue;->e:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    iget p0, v0, Lyads/ue;->f:I

    add-int/lit8 v1, p0, -0x1

    iput v1, v0, Lyads/ue;->f:I

    if-lez p0, :cond_2

    iget-object p0, v0, Lyads/ue;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v1, v0, Lyads/ue;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, v0, Lyads/ue;->b:Ljava/util/LinkedHashSet;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p0, v0, Lyads/ue;->b:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_1
    iget p0, v0, Lyads/ue;->c:I

    add-int/lit8 v1, p0, -0x1

    iput v1, v0, Lyads/ue;->c:I

    if-lez p0, :cond_2

    iget-object p0, v0, Lyads/ue;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method
