.class public final Landroidx/paging/InvalidatingPagingSourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/paging/PagingSourceFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/paging/PagingSourceFactory<",
        "TKey;TValue;>;"
    }
.end annotation


# instance fields
.field private final lock:Landroidx/paging/internal/SynchronizedLock;

.field private final pagingSourceFactory:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;"
        }
    .end annotation
.end field

.field private pagingSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "+",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/InvalidatingPagingSourceFactory;->pagingSourceFactory:Lll3;

    new-instance p1, Landroidx/paging/internal/SynchronizedLock;

    invoke-direct {p1}, Landroidx/paging/internal/SynchronizedLock;-><init>()V

    iput-object p1, p0, Landroidx/paging/InvalidatingPagingSourceFactory;->lock:Landroidx/paging/internal/SynchronizedLock;

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Landroidx/paging/InvalidatingPagingSourceFactory;->pagingSources:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 3

    iget-object v0, p0, Landroidx/paging/InvalidatingPagingSourceFactory;->lock:Landroidx/paging/internal/SynchronizedLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/paging/InvalidatingPagingSourceFactory;->pagingSources:Ljava/util/List;

    sget-object v2, Lkx2;->b:Lkx2;

    iput-object v2, p0, Landroidx/paging/InvalidatingPagingSourceFactory;->pagingSources:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/paging/PagingSource;

    invoke-virtual {v0}, Landroidx/paging/PagingSource;->getInvalid()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/paging/PagingSource;->invalidate()V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public invoke()Landroidx/paging/PagingSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/paging/InvalidatingPagingSourceFactory;->pagingSourceFactory:Lll3;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/paging/PagingSource;

    iget-object v1, p0, Landroidx/paging/InvalidatingPagingSourceFactory;->lock:Landroidx/paging/internal/SynchronizedLock;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/paging/InvalidatingPagingSourceFactory;->pagingSources:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-static {v0, v2}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroidx/paging/InvalidatingPagingSourceFactory;->pagingSources:Ljava/util/List;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0}, Landroidx/paging/InvalidatingPagingSourceFactory;->invoke()Landroidx/paging/PagingSource;

    move-result-object p0

    return-object p0
.end method

.method public final pagingSources$paging_common()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/InvalidatingPagingSourceFactory;->pagingSources:Ljava/util/List;

    return-object p0
.end method
