.class final Landroidx/paging/PagedList$Companion$create$resolvedInitialPage$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.PagedList$Companion$create$resolvedInitialPage$1"
    f = "PagedList.kt"
    l = {
        0xad
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PagedList$Companion;->create(Landroidx/paging/PagingSource;Landroidx/paging/PagingSource$LoadResult$Page;Ly22;Lr22;Lr22;Landroidx/paging/PagedList$BoundaryCallback;Landroidx/paging/PagedList$Config;Ljava/lang/Object;)Landroidx/paging/PagedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Landroidx/paging/PagingSource$LoadResult$Page<",
        "TK;TT;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $pagingSource:Landroidx/paging/PagingSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagingSource<",
            "TK;TT;>;"
        }
    .end annotation
.end field

.field final synthetic $params:Landroidx/paging/PagingSource$LoadParams$Refresh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagingSource$LoadParams$Refresh<",
            "TK;>;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Landroidx/paging/PagingSource;Landroidx/paging/PagingSource$LoadParams$Refresh;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingSource<",
            "TK;TT;>;",
            "Landroidx/paging/PagingSource$LoadParams$Refresh<",
            "TK;>;",
            "Le02<",
            "-",
            "Landroidx/paging/PagedList$Companion$create$resolvedInitialPage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/PagedList$Companion$create$resolvedInitialPage$1;->$pagingSource:Landroidx/paging/PagingSource;

    iput-object p2, p0, Landroidx/paging/PagedList$Companion$create$resolvedInitialPage$1;->$params:Landroidx/paging/PagingSource$LoadParams$Refresh;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroidx/paging/PagedList$Companion$create$resolvedInitialPage$1;

    iget-object v0, p0, Landroidx/paging/PagedList$Companion$create$resolvedInitialPage$1;->$pagingSource:Landroidx/paging/PagingSource;

    iget-object p0, p0, Landroidx/paging/PagedList$Companion$create$resolvedInitialPage$1;->$params:Landroidx/paging/PagingSource$LoadParams$Refresh;

    invoke-direct {p1, v0, p0, p2}, Landroidx/paging/PagedList$Companion$create$resolvedInitialPage$1;-><init>(Landroidx/paging/PagingSource;Landroidx/paging/PagingSource$LoadParams$Refresh;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/paging/PagedList$Companion$create$resolvedInitialPage$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ly22;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Le02<",
            "-",
            "Landroidx/paging/PagingSource$LoadResult$Page<",
            "TK;TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/paging/PagedList$Companion$create$resolvedInitialPage$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/paging/PagedList$Companion$create$resolvedInitialPage$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/paging/PagedList$Companion$create$resolvedInitialPage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/paging/PagedList$Companion$create$resolvedInitialPage$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/paging/PagedList$Companion$create$resolvedInitialPage$1;->$pagingSource:Landroidx/paging/PagingSource;

    iget-object v1, p0, Landroidx/paging/PagedList$Companion$create$resolvedInitialPage$1;->$params:Landroidx/paging/PagingSource$LoadParams$Refresh;

    iput v3, p0, Landroidx/paging/PagedList$Companion$create$resolvedInitialPage$1;->label:I

    invoke-virtual {p1, v1, p0}, Landroidx/paging/PagingSource;->load(Landroidx/paging/PagingSource$LoadParams;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Landroidx/paging/PagingSource$LoadResult;

    instance-of p0, p1, Landroidx/paging/PagingSource$LoadResult$Page;

    if-eqz p0, :cond_3

    check-cast p1, Landroidx/paging/PagingSource$LoadResult$Page;

    return-object p1

    :cond_3
    instance-of p0, p1, Landroidx/paging/PagingSource$LoadResult$Error;

    if-nez p0, :cond_5

    instance-of p0, p1, Landroidx/paging/PagingSource$LoadResult$Invalid;

    if-eqz p0, :cond_4

    const-string p0, "Failed to create PagedList. The provided PagingSource returned LoadResult.Invalid, but a LoadResult.Page was expected. To use a PagingSource which supports invalidation, use a PagedList builder that accepts a factory method for PagingSource or DataSource.Factory, such as LivePagedList."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_4
    invoke-static {}, Lme0;->e()V

    return-object v2

    :cond_5
    check-cast p1, Landroidx/paging/PagingSource$LoadResult$Error;

    invoke-virtual {p1}, Landroidx/paging/PagingSource$LoadResult$Error;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method
