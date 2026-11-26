.class public final Lx71;
.super Lr71;
.source "SourceFile"


# instance fields
.field public final a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

.field public final b:Lw71;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;)V
    .locals 0

    invoke-direct {p0}, Lr71;-><init>()V

    iput-object p1, p0, Lx71;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    new-instance p1, Lw71;

    invoke-direct {p1}, Landroidx/room/EntityInsertAdapter;-><init>()V

    iput-object p1, p0, Lx71;->b:Lw71;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Lt71;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt71;-><init>(I)V

    iget-object p0, p0, Lx71;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLnl3;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 2

    new-instance v0, Lu71;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lu71;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lx71;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 p1, 0x1

    invoke-static {p0, v1, p1, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLnl3;)Ljava/lang/Object;

    return-void
.end method

.method public final c()Lmz7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ljava/util/List<",
            "Ln81;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lv71;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv71;-><init>(I)V

    iget-object p0, p0, Lx71;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroidx/room/RxRoom;->createSingle(Landroidx/room/RoomDatabase;ZZLnl3;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/util/ArrayList;)V
    .locals 2

    new-instance v0, Ls71;

    invoke-direct {v0, p0, p1}, Ls71;-><init>(Lx71;Ljava/util/ArrayList;)V

    iget-object p0, p0, Lx71;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLnl3;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic e(Ljava/util/ArrayList;)Lj59;
    .locals 0

    invoke-super {p0, p1}, Lr71;->d(Ljava/util/ArrayList;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
