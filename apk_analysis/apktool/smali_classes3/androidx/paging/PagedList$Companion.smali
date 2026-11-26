.class public final Landroidx/paging/PagedList$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PagedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/paging/PagedList$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/paging/PagingSource;Landroidx/paging/PagingSource$LoadResult$Page;Ly22;Lr22;Lr22;Landroidx/paging/PagedList$BoundaryCallback;Landroidx/paging/PagedList$Config;Ljava/lang/Object;)Landroidx/paging/PagedList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/PagingSource<",
            "TK;TT;>;",
            "Landroidx/paging/PagingSource$LoadResult$Page<",
            "TK;TT;>;",
            "Ly22;",
            "Lr22;",
            "Lr22;",
            "Landroidx/paging/PagedList$BoundaryCallback<",
            "TT;>;",
            "Landroidx/paging/PagedList$Config;",
            "TK;)",
            "Landroidx/paging/PagedList<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v6, p7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    new-instance p0, Landroidx/paging/PagingSource$LoadParams$Refresh;

    iget p2, v6, Landroidx/paging/PagedList$Config;->initialLoadSizeHint:I

    iget-boolean v0, v6, Landroidx/paging/PagedList$Config;->enablePlaceholders:Z

    move-object/from16 v8, p8

    invoke-direct {p0, v8, p2, v0}, Landroidx/paging/PagingSource$LoadParams$Refresh;-><init>(Ljava/lang/Object;IZ)V

    new-instance p2, Landroidx/paging/PagedList$Companion$create$resolvedInitialPage$1;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Landroidx/paging/PagedList$Companion$create$resolvedInitialPage$1;-><init>(Landroidx/paging/PagingSource;Landroidx/paging/PagingSource$LoadParams$Refresh;Le02;)V

    sget-object p0, Lgx2;->b:Lgx2;

    invoke-static {p0, p2}, Lbv0;->a(Lo22;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Landroidx/paging/PagingSource$LoadResult$Page;

    :goto_0
    move-object v7, p2

    goto :goto_1

    :cond_0
    move-object/from16 v8, p8

    goto :goto_0

    :goto_1
    new-instance v0, Landroidx/paging/ContiguousPagedList;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v8}, Landroidx/paging/ContiguousPagedList;-><init>(Landroidx/paging/PagingSource;Ly22;Lr22;Lr22;Landroidx/paging/PagedList$BoundaryCallback;Landroidx/paging/PagedList$Config;Landroidx/paging/PagingSource$LoadResult$Page;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final dispatchNaiveUpdatesSinceSnapshot$paging_common(IILandroidx/paging/PagedList$Callback;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    if-ge p2, p1, :cond_1

    if-lez p2, :cond_0

    invoke-virtual {p3, p0, p2}, Landroidx/paging/PagedList$Callback;->onChanged(II)V

    :cond_0
    sub-int/2addr p1, p2

    if-lez p1, :cond_3

    invoke-virtual {p3, p2, p1}, Landroidx/paging/PagedList$Callback;->onInserted(II)V

    return-void

    :cond_1
    if-lez p1, :cond_2

    invoke-virtual {p3, p0, p1}, Landroidx/paging/PagedList$Callback;->onChanged(II)V

    :cond_2
    sub-int/2addr p2, p1

    if-eqz p2, :cond_3

    invoke-virtual {p3, p1, p2}, Landroidx/paging/PagedList$Callback;->onRemoved(II)V

    :cond_3
    return-void
.end method
