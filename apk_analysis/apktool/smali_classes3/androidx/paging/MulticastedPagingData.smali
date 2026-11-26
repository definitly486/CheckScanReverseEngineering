.class final Landroidx/paging/MulticastedPagingData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final accumulated:Landroidx/paging/CachedPageEventFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/CachedPageEventFlow<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final parent:Landroidx/paging/PagingData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final scope:Ly22;

.field private final tracker:Landroidx/paging/ActiveFlowTracker;


# direct methods
.method public constructor <init>(Ly22;Landroidx/paging/PagingData;Landroidx/paging/ActiveFlowTracker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Landroidx/paging/PagingData<",
            "TT;>;",
            "Landroidx/paging/ActiveFlowTracker;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/MulticastedPagingData;->scope:Ly22;

    iput-object p2, p0, Landroidx/paging/MulticastedPagingData;->parent:Landroidx/paging/PagingData;

    iput-object p3, p0, Landroidx/paging/MulticastedPagingData;->tracker:Landroidx/paging/ActiveFlowTracker;

    new-instance v0, Landroidx/paging/CachedPageEventFlow;

    invoke-virtual {p2}, Landroidx/paging/PagingData;->getFlow$paging_common()Lhd3;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Landroidx/paging/CachedPageEventFlow;-><init>(Lhd3;Ly22;)V

    if-eqz p3, :cond_0

    invoke-interface {p3, v0}, Landroidx/paging/ActiveFlowTracker;->onNewCachedEventFlow(Landroidx/paging/CachedPageEventFlow;)V

    :cond_0
    iput-object v0, p0, Landroidx/paging/MulticastedPagingData;->accumulated:Landroidx/paging/CachedPageEventFlow;

    return-void
.end method

.method public synthetic constructor <init>(Ly22;Landroidx/paging/PagingData;Landroidx/paging/ActiveFlowTracker;ILjh2;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 32
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/paging/MulticastedPagingData;-><init>(Ly22;Landroidx/paging/PagingData;Landroidx/paging/ActiveFlowTracker;)V

    return-void
.end method

.method public static synthetic a(Landroidx/paging/MulticastedPagingData;)Landroidx/paging/PageEvent$Insert;
    .locals 0

    invoke-static {p0}, Landroidx/paging/MulticastedPagingData;->asPagingData$lambda$0(Landroidx/paging/MulticastedPagingData;)Landroidx/paging/PageEvent$Insert;

    move-result-object p0

    return-object p0
.end method

.method private static final asPagingData$lambda$0(Landroidx/paging/MulticastedPagingData;)Landroidx/paging/PageEvent$Insert;
    .locals 0

    iget-object p0, p0, Landroidx/paging/MulticastedPagingData;->accumulated:Landroidx/paging/CachedPageEventFlow;

    invoke-virtual {p0}, Landroidx/paging/CachedPageEventFlow;->getCachedEvent$paging_common()Landroidx/paging/PageEvent$Insert;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final asPagingData()Landroidx/paging/PagingData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroidx/paging/PagingData;

    iget-object v1, p0, Landroidx/paging/MulticastedPagingData;->accumulated:Landroidx/paging/CachedPageEventFlow;

    invoke-virtual {v1}, Landroidx/paging/CachedPageEventFlow;->getDownstreamFlow()Lhd3;

    move-result-object v1

    new-instance v2, Landroidx/paging/MulticastedPagingData$asPagingData$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/paging/MulticastedPagingData$asPagingData$1;-><init>(Landroidx/paging/MulticastedPagingData;Le02;)V

    new-instance v4, Lce3;

    invoke-direct {v4, v1, v2}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance v1, Landroidx/paging/MulticastedPagingData$asPagingData$2;

    invoke-direct {v1, p0, v3}, Landroidx/paging/MulticastedPagingData$asPagingData$2;-><init>(Landroidx/paging/MulticastedPagingData;Le02;)V

    new-instance v2, Lbe3;

    invoke-direct {v2, v4, v1}, Lbe3;-><init>(Lhd3;Ldm3;)V

    iget-object v1, p0, Landroidx/paging/MulticastedPagingData;->parent:Landroidx/paging/PagingData;

    invoke-virtual {v1}, Landroidx/paging/PagingData;->getUiReceiver$paging_common()Landroidx/paging/UiReceiver;

    move-result-object v1

    iget-object v3, p0, Landroidx/paging/MulticastedPagingData;->parent:Landroidx/paging/PagingData;

    invoke-virtual {v3}, Landroidx/paging/PagingData;->getHintReceiver$paging_common()Landroidx/paging/HintReceiver;

    move-result-object v3

    new-instance v4, Landroidx/paging/f;

    invoke-direct {v4, p0}, Landroidx/paging/f;-><init>(Landroidx/paging/MulticastedPagingData;)V

    invoke-direct {v0, v2, v1, v3, v4}, Landroidx/paging/PagingData;-><init>(Lhd3;Landroidx/paging/UiReceiver;Landroidx/paging/HintReceiver;Lll3;)V

    return-object v0
.end method

.method public final close(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/MulticastedPagingData;->accumulated:Landroidx/paging/CachedPageEventFlow;

    invoke-virtual {p0}, Landroidx/paging/CachedPageEventFlow;->close()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final getParent()Landroidx/paging/PagingData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/MulticastedPagingData;->parent:Landroidx/paging/PagingData;

    return-object p0
.end method

.method public final getScope()Ly22;
    .locals 0

    iget-object p0, p0, Landroidx/paging/MulticastedPagingData;->scope:Ly22;

    return-object p0
.end method

.method public final getTracker()Landroidx/paging/ActiveFlowTracker;
    .locals 0

    iget-object p0, p0, Landroidx/paging/MulticastedPagingData;->tracker:Landroidx/paging/ActiveFlowTracker;

    return-object p0
.end method
