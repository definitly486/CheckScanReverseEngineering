.class public final Landroidx/paging/ItemSnapshotListFlow;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroidx/paging/CombinedLoadStates;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/paging/ItemSnapshotListFlow;->asItemSnapshotListFlow$lambda$0(Landroidx/paging/CombinedLoadStates;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final asItemSnapshotListFlow(Lhd3;Lnl3;)Lhd3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhd3<",
            "Landroidx/paging/PagingData<",
            "TT;>;>;",
            "Lnl3<",
            "-",
            "Landroidx/paging/CombinedLoadStates;",
            "Lj59;",
            ">;)",
            "Lhd3<",
            "Landroidx/paging/ItemSnapshotList<",
            "TT;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lr07;

    invoke-direct {v0}, Lr07;-><init>()V

    new-instance v1, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2;-><init>(Lhd3;Lr07;Lnl3;Le02;)V

    new-instance p0, Le91;

    const/4 p1, -0x2

    sget-object v0, Lcu0;->SUSPEND:Lcu0;

    sget-object v2, Lgx2;->b:Lgx2;

    invoke-direct {p0, v1, v2, p1, v0}, Le91;-><init>(Lbm3;Lo22;ILcu0;)V

    return-object p0
.end method

.method public static synthetic asItemSnapshotListFlow$default(Lhd3;Lnl3;ILjava/lang/Object;)Lhd3;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lco;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lco;-><init>(I)V

    :cond_0
    invoke-static {p0, p1}, Landroidx/paging/ItemSnapshotListFlow;->asItemSnapshotListFlow(Lhd3;Lnl3;)Lhd3;

    move-result-object p0

    return-object p0
.end method

.method private static final asItemSnapshotListFlow$lambda$0(Landroidx/paging/CombinedLoadStates;)Lj59;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
