.class public final Landroidx/room/coroutines/ConnectionPoolKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final newConnectionPool(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;III)Landroidx/room/coroutines/ConnectionPool;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/room/coroutines/ConnectionPoolImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/room/coroutines/ConnectionPoolImpl;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;III)V

    return-object v0
.end method

.method public static synthetic newConnectionPool$default(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;IIIILjava/lang/Object;)Landroidx/room/coroutines/ConnectionPool;
    .locals 0

    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_0

    const/16 p4, 0x19

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/room/coroutines/ConnectionPoolKt;->newConnectionPool(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;III)Landroidx/room/coroutines/ConnectionPool;

    move-result-object p0

    return-object p0
.end method

.method public static final newSingleConnectionPool(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;I)Landroidx/room/coroutines/ConnectionPool;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/room/coroutines/ConnectionPoolImpl;

    invoke-direct {v0, p0, p1, p2}, Landroidx/room/coroutines/ConnectionPoolImpl;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static synthetic newSingleConnectionPool$default(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;IILjava/lang/Object;)Landroidx/room/coroutines/ConnectionPool;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/16 p2, 0x19

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/room/coroutines/ConnectionPoolKt;->newSingleConnectionPool(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;I)Landroidx/room/coroutines/ConnectionPool;

    move-result-object p0

    return-object p0
.end method
