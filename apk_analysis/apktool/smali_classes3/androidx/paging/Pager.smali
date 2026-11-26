.class public final Landroidx/paging/Pager;
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
.field private final flow:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Landroidx/paging/PagingData<",
            "TValue;>;>;"
        }
    .end annotation
.end field

.field private final pageFetcher:Landroidx/paging/PageFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PageFetcher<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/PagingConfig;Ljava/lang/Object;Landroidx/paging/RemoteMediator;Lll3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingConfig;",
            "TKey;",
            "Landroidx/paging/RemoteMediator<",
            "TKey;TValue;>;",
            "Lll3<",
            "+",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/paging/PageFetcher;

    move-object v1, p4

    check-cast v1, Ljava/lang/Object;

    instance-of v1, p4, Landroidx/paging/SuspendingPagingSourceFactory;

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/paging/Pager$pageFetcher$1;

    check-cast p4, Landroidx/paging/SuspendingPagingSourceFactory;

    invoke-direct {v1, p4}, Landroidx/paging/Pager$pageFetcher$1;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/paging/Pager$pageFetcher$2;

    const/4 v2, 0x0

    invoke-direct {v1, p4, v2}, Landroidx/paging/Pager$pageFetcher$2;-><init>(Lll3;Le02;)V

    :goto_0
    invoke-direct {v0, v1, p2, p1, p3}, Landroidx/paging/PageFetcher;-><init>(Lnl3;Ljava/lang/Object;Landroidx/paging/PagingConfig;Landroidx/paging/RemoteMediator;)V

    iput-object v0, p0, Landroidx/paging/Pager;->pageFetcher:Landroidx/paging/PageFetcher;

    invoke-virtual {v0}, Landroidx/paging/PageFetcher;->getFlow()Lhd3;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/Pager;->flow:Lhd3;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/paging/PagingConfig;Ljava/lang/Object;Landroidx/paging/RemoteMediator;Lll3;ILjh2;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 45
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/paging/Pager;-><init>(Landroidx/paging/PagingConfig;Ljava/lang/Object;Landroidx/paging/RemoteMediator;Lll3;)V

    return-void
.end method

.method public constructor <init>(Landroidx/paging/PagingConfig;Ljava/lang/Object;Lll3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingConfig;",
            "TKey;",
            "Lll3<",
            "+",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/paging/Pager;-><init>(Landroidx/paging/PagingConfig;Ljava/lang/Object;Landroidx/paging/RemoteMediator;Lll3;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/paging/PagingConfig;Ljava/lang/Object;Lll3;ILjh2;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 46
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/paging/Pager;-><init>(Landroidx/paging/PagingConfig;Ljava/lang/Object;Lll3;)V

    return-void
.end method

.method public constructor <init>(Landroidx/paging/PagingConfig;Lll3;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingConfig;",
            "Lll3<",
            "+",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;)V"
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroidx/paging/Pager;-><init>(Landroidx/paging/PagingConfig;Ljava/lang/Object;Lll3;ILjh2;)V

    return-void
.end method

.method public static synthetic getFlow$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getPageFetcher$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final append()V
    .locals 1

    iget-object p0, p0, Landroidx/paging/Pager;->pageFetcher:Landroidx/paging/PageFetcher;

    sget-object v0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    invoke-virtual {p0, v0}, Landroidx/paging/PageFetcher;->load(Landroidx/paging/LoadType;)V

    return-void
.end method

.method public final getFlow()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/paging/PagingData<",
            "TValue;>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/Pager;->flow:Lhd3;

    return-object p0
.end method

.method public final prepend()V
    .locals 1

    iget-object p0, p0, Landroidx/paging/Pager;->pageFetcher:Landroidx/paging/PageFetcher;

    sget-object v0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    invoke-virtual {p0, v0}, Landroidx/paging/PageFetcher;->load(Landroidx/paging/LoadType;)V

    return-void
.end method

.method public final refresh()V
    .locals 0

    .line 9
    iget-object p0, p0, Landroidx/paging/Pager;->pageFetcher:Landroidx/paging/PageFetcher;

    invoke-virtual {p0}, Landroidx/paging/PageFetcher;->refreshAll()V

    return-void
.end method

.method public final refresh(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TValue;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/paging/Pager;->pageFetcher:Landroidx/paging/PageFetcher;

    invoke-virtual {p0, p1}, Landroidx/paging/PageFetcher;->refresh(Ljava/lang/Object;)V

    return-void
.end method

.method public final retry()V
    .locals 0

    iget-object p0, p0, Landroidx/paging/Pager;->pageFetcher:Landroidx/paging/PageFetcher;

    invoke-virtual {p0}, Landroidx/paging/PageFetcher;->retry()V

    return-void
.end method
