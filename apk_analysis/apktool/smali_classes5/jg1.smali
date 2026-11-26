.class public final Ljg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwf1;


# instance fields
.field public final a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

.field public final b:Lhg1;

.field public final c:Lig1;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljg1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    new-instance p1, Lhg1;

    invoke-direct {p1}, Landroidx/room/EntityInsertAdapter;-><init>()V

    iput-object p1, p0, Ljg1;->b:Lhg1;

    new-instance p1, Lig1;

    invoke-direct {p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    iput-object p1, p0, Ljg1;->c:Lig1;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)Lqp1;
    .locals 2

    new-instance v0, Lag1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p1}, Lag1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Ljg1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 p1, 0x1

    invoke-static {p0, v1, p1, v0}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLnl3;)Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final c(J)Lhd3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lhd3<",
            "Lkg1;",
            ">;"
        }
    .end annotation

    const-string v0, "cheque_requests"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lzf1;

    invoke-direct {v1, p1, p2}, Lzf1;-><init>(J)V

    iget-object p0, p0, Ljg1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 p1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroidx/room/coroutines/FlowUtil;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lnl3;)Lhd3;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lqp1;
    .locals 2

    new-instance v0, Lxf1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lxf1;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Ljg1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 p1, 0x1

    invoke-static {p0, v1, p1, v0}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLnl3;)Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final varargs e([Lkg1;)Lqp1;
    .locals 2

    new-instance v0, Lbg1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lbg1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Ljg1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 p1, 0x1

    invoke-static {p0, v1, p1, v0}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLnl3;)Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final f()Lmz7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Leg1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leg1;-><init>(I)V

    iget-object p0, p0, Ljg1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 v2, 0x1

    invoke-static {p0, v2, v1, v0}, Landroidx/room/RxRoom;->createSingle(Landroidx/room/RoomDatabase;ZZLnl3;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lkg1;)Lmz7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg1;",
            ")",
            "Lmz7<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldg1;

    invoke-direct {v0, p0, p1}, Ldg1;-><init>(Ljg1;Lkg1;)V

    iget-object p0, p0, Ljg1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Landroidx/room/RxRoom;->createSingle(Landroidx/room/RoomDatabase;ZZLnl3;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final h()Lqp1;
    .locals 3

    new-instance v0, Lgg1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgg1;-><init>(I)V

    iget-object p0, p0, Ljg1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLnl3;)Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lmz7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmz7<",
            "Lkg1;",
            ">;"
        }
    .end annotation

    new-instance v0, Lfg1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lfg1;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Ljg1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 p1, 0x1

    invoke-static {p0, p1, v1, v0}, Landroidx/room/RxRoom;->createSingle(Landroidx/room/RoomDatabase;ZZLnl3;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final j(Ljava/util/ArrayList;)Lqp1;
    .locals 2

    new-instance v0, Lyf1;

    invoke-direct {v0, p0, p1}, Lyf1;-><init>(Ljg1;Ljava/util/ArrayList;)V

    iget-object p0, p0, Ljg1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLnl3;)Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final k(Ljava/util/List;)Lqp1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lqp1;"
        }
    .end annotation

    const-string v0, "DELETE FROM cheque_requests WHERE status = \'CHEQUE_NO_SHOP_RECEIVED\' AND qrCode IN ("

    invoke-static {v0}, Lad2;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lyt0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, p1}, Lyt0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Ljg1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 p1, 0x0

    invoke-static {p0, p1, v2, v1}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLnl3;)Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final l()Lgg3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgg3<",
            "Ljava/util/List<",
            "Lkg1;",
            ">;>;"
        }
    .end annotation

    const-string v0, "cheque_requests"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmi;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lmi;-><init>(I)V

    iget-object p0, p0, Ljg1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 v2, 0x1

    invoke-static {p0, v2, v0, v1}, Landroidx/room/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lnl3;)Lgg3;

    move-result-object p0

    return-object p0
.end method

.method public final m()Lmz7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Llm;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Llm;-><init>(I)V

    iget-object p0, p0, Ljg1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroidx/room/RxRoom;->createSingle(Landroidx/room/RoomDatabase;ZZLnl3;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final n()Lmz7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ljava/util/List<",
            "Lkg1;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcg1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcg1;-><init>(I)V

    iget-object p0, p0, Ljg1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;

    const/4 v1, 0x1

    invoke-static {p0, v1, v1, v0}, Landroidx/room/RxRoom;->createSingle(Landroidx/room/RoomDatabase;ZZLnl3;)Lmz7;

    move-result-object p0

    return-object p0
.end method
