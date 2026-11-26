.class public final Landroidx/paging/SnapshotPagedList;
.super Landroidx/paging/PagedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/paging/PagedList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final isDetached:Z

.field private final isImmutable:Z

.field private final pagedList:Landroidx/paging/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagedList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/PagedList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagedList<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/paging/PagedList;->getPagingSource()Landroidx/paging/PagingSource;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/paging/PagedList;->getCoroutineScope$paging_common()Ly22;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/paging/PagedList;->getNotifyDispatcher$paging_common()Lr22;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/paging/PagedList;->getStorage$paging_common()Landroidx/paging/PagedStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/paging/PagedStorage;->snapshot()Landroidx/paging/PagedStorage;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/paging/PagedList;->getConfig()Landroidx/paging/PagedList$Config;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/paging/PagedList;-><init>(Landroidx/paging/PagingSource;Ly22;Lr22;Landroidx/paging/PagedStorage;Landroidx/paging/PagedList$Config;)V

    iput-object p1, v0, Landroidx/paging/SnapshotPagedList;->pagedList:Landroidx/paging/PagedList;

    const/4 p0, 0x1

    iput-boolean p0, v0, Landroidx/paging/SnapshotPagedList;->isImmutable:Z

    iput-boolean p0, v0, Landroidx/paging/SnapshotPagedList;->isDetached:Z

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 0

    return-void
.end method

.method public dispatchCurrentLoadState(Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-",
            "Landroidx/paging/LoadType;",
            "-",
            "Landroidx/paging/LoadState;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public getLastKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/paging/SnapshotPagedList;->pagedList:Landroidx/paging/PagedList;

    invoke-virtual {p0}, Landroidx/paging/PagedList;->getLastKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isDetached()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/paging/SnapshotPagedList;->isDetached:Z

    return p0
.end method

.method public isImmutable()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/paging/SnapshotPagedList;->isImmutable:Z

    return p0
.end method

.method public loadAroundInternal(I)V
    .locals 0

    return-void
.end method
