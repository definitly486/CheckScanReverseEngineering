.class final Landroidx/room/coroutines/ConnectionWithLock$PreparedStatementCache;
.super Landroidx/collection/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/coroutines/ConnectionWithLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PreparedStatementCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Ljava/lang/String;",
        "Landroidx/sqlite/SQLiteStatement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/coroutines/ConnectionWithLock;


# direct methods
.method public constructor <init>(Landroidx/room/coroutines/ConnectionWithLock;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Landroidx/room/coroutines/ConnectionWithLock$PreparedStatementCache;->this$0:Landroidx/room/coroutines/ConnectionWithLock;

    .line 11
    invoke-direct {p0, p2}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/room/coroutines/ConnectionWithLock;IILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/16 p2, 0x19

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/room/coroutines/ConnectionWithLock$PreparedStatementCache;-><init>(Landroidx/room/coroutines/ConnectionWithLock;I)V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/room/coroutines/ConnectionWithLock$PreparedStatementCache;->this$0:Landroidx/room/coroutines/ConnectionWithLock;

    invoke-static {p0}, Landroidx/room/coroutines/ConnectionWithLock;->access$getDelegate$p(Landroidx/room/coroutines/ConnectionWithLock;)Landroidx/sqlite/SQLiteConnection;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/room/coroutines/ConnectionWithLock$PreparedStatementCache;->create(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroidx/sqlite/SQLiteStatement;

    check-cast p4, Landroidx/sqlite/SQLiteStatement;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/room/coroutines/ConnectionWithLock$PreparedStatementCache;->entryRemoved(ZLjava/lang/String;Landroidx/sqlite/SQLiteStatement;Landroidx/sqlite/SQLiteStatement;)V

    return-void
.end method

.method public entryRemoved(ZLjava/lang/String;Landroidx/sqlite/SQLiteStatement;Landroidx/sqlite/SQLiteStatement;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p3}, Landroidx/sqlite/SQLiteStatement;->close()V

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
