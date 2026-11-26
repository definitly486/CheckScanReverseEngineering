.class public final Landroidx/room/coroutines/FlowUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lnl3;)Lhd3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Z[",
            "Ljava/lang/String;",
            "Lnl3<",
            "-",
            "Landroidx/sqlite/SQLiteConnection;",
            "+TR;>;)",
            "Lhd3<",
            "TR;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroidx/room/InvalidationTracker;->createFlow([Ljava/lang/String;Z)Lhd3;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {p2, v0}, Lud3;->a(Lhd3;I)Lhd3;

    move-result-object p2

    new-instance v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;

    invoke-direct {v0, p2, p0, p1, p3}, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;-><init>(Lhd3;Landroidx/room/RoomDatabase;ZLnl3;)V

    return-object v0
.end method
