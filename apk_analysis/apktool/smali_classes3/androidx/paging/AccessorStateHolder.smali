.class final Landroidx/paging/AccessorStateHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final _loadStates:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Landroidx/paging/LoadStates;",
            ">;"
        }
    .end annotation
.end field

.field private final internalState:Landroidx/paging/AccessorState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/AccessorState<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field

.field private final lock:Landroidx/paging/internal/SynchronizedLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/paging/internal/SynchronizedLock;

    invoke-direct {v0}, Landroidx/paging/internal/SynchronizedLock;-><init>()V

    iput-object v0, p0, Landroidx/paging/AccessorStateHolder;->lock:Landroidx/paging/internal/SynchronizedLock;

    sget-object v0, Landroidx/paging/LoadStates;->Companion:Landroidx/paging/LoadStates$Companion;

    invoke-virtual {v0}, Landroidx/paging/LoadStates$Companion;->getIDLE()Landroidx/paging/LoadStates;

    move-result-object v0

    invoke-static {v0}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object v0

    iput-object v0, p0, Landroidx/paging/AccessorStateHolder;->_loadStates:Lxg5;

    new-instance v0, Landroidx/paging/AccessorState;

    invoke-direct {v0}, Landroidx/paging/AccessorState;-><init>()V

    iput-object v0, p0, Landroidx/paging/AccessorStateHolder;->internalState:Landroidx/paging/AccessorState;

    return-void
.end method


# virtual methods
.method public final getLoadStates()Ly68;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly68<",
            "Landroidx/paging/LoadStates;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/AccessorStateHolder;->_loadStates:Lxg5;

    return-object p0
.end method

.method public final use(Lnl3;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lnl3<",
            "-",
            "Landroidx/paging/AccessorState<",
            "TKey;TValue;>;+TR;>;)TR;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/paging/AccessorStateHolder;->lock:Landroidx/paging/internal/SynchronizedLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/paging/AccessorStateHolder;->internalState:Landroidx/paging/AccessorState;

    invoke-interface {p1, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Landroidx/paging/AccessorStateHolder;->_loadStates:Lxg5;

    iget-object p0, p0, Landroidx/paging/AccessorStateHolder;->internalState:Landroidx/paging/AccessorState;

    invoke-virtual {p0}, Landroidx/paging/AccessorState;->computeLoadStates()Landroidx/paging/LoadStates;

    move-result-object p0

    invoke-interface {v1, p0}, Lxg5;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
