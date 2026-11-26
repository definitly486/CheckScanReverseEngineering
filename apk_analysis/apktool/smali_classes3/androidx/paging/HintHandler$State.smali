.class final Landroidx/paging/HintHandler$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/HintHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "State"
.end annotation


# instance fields
.field private final append:Landroidx/paging/HintHandler$HintFlow;

.field private lastAccessHint:Landroidx/paging/ViewportHint$Access;

.field private final lock:Landroidx/paging/internal/SynchronizedLock;

.field private final prepend:Landroidx/paging/HintHandler$HintFlow;

.field final synthetic this$0:Landroidx/paging/HintHandler;


# direct methods
.method public constructor <init>(Landroidx/paging/HintHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/HintHandler$State;->this$0:Landroidx/paging/HintHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/paging/HintHandler$HintFlow;

    invoke-direct {v0, p1}, Landroidx/paging/HintHandler$HintFlow;-><init>(Landroidx/paging/HintHandler;)V

    iput-object v0, p0, Landroidx/paging/HintHandler$State;->prepend:Landroidx/paging/HintHandler$HintFlow;

    new-instance v0, Landroidx/paging/HintHandler$HintFlow;

    invoke-direct {v0, p1}, Landroidx/paging/HintHandler$HintFlow;-><init>(Landroidx/paging/HintHandler;)V

    iput-object v0, p0, Landroidx/paging/HintHandler$State;->append:Landroidx/paging/HintHandler$HintFlow;

    new-instance p1, Landroidx/paging/internal/SynchronizedLock;

    invoke-direct {p1}, Landroidx/paging/internal/SynchronizedLock;-><init>()V

    iput-object p1, p0, Landroidx/paging/HintHandler$State;->lock:Landroidx/paging/internal/SynchronizedLock;

    return-void
.end method


# virtual methods
.method public final getAppendFlow()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/paging/ViewportHint;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/HintHandler$State;->append:Landroidx/paging/HintHandler$HintFlow;

    invoke-virtual {p0}, Landroidx/paging/HintHandler$HintFlow;->getFlow()Lhd3;

    move-result-object p0

    return-object p0
.end method

.method public final getLastAccessHint()Landroidx/paging/ViewportHint$Access;
    .locals 0

    iget-object p0, p0, Landroidx/paging/HintHandler$State;->lastAccessHint:Landroidx/paging/ViewportHint$Access;

    return-object p0
.end method

.method public final getPrependFlow()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/paging/ViewportHint;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/HintHandler$State;->prepend:Landroidx/paging/HintHandler$HintFlow;

    invoke-virtual {p0}, Landroidx/paging/HintHandler$HintFlow;->getFlow()Lhd3;

    move-result-object p0

    return-object p0
.end method

.method public final modify(Landroidx/paging/ViewportHint$Access;Lbm3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/ViewportHint$Access;",
            "Lbm3<",
            "-",
            "Landroidx/paging/HintHandler$HintFlow;",
            "-",
            "Landroidx/paging/HintHandler$HintFlow;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/paging/HintHandler$State;->lock:Landroidx/paging/internal/SynchronizedLock;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Landroidx/paging/HintHandler$State;->lastAccessHint:Landroidx/paging/ViewportHint$Access;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/paging/HintHandler$State;->prepend:Landroidx/paging/HintHandler$HintFlow;

    iget-object p0, p0, Landroidx/paging/HintHandler$State;->append:Landroidx/paging/HintHandler$HintFlow;

    invoke-interface {p2, p1, p0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
