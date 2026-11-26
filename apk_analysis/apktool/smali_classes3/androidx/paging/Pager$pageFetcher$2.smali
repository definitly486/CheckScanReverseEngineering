.class final Landroidx/paging/Pager$pageFetcher$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.Pager$pageFetcher$2"
    f = "Pager.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/Pager;-><init>(Landroidx/paging/PagingConfig;Ljava/lang/Object;Landroidx/paging/RemoteMediator;Lll3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lnl3<",
        "Le02<",
        "-",
        "Landroidx/paging/PagingSource<",
        "TKey;TValue;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $pagingSourceFactory:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Lll3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "+",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;",
            "Le02<",
            "-",
            "Landroidx/paging/Pager$pageFetcher$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/Pager$pageFetcher$2;->$pagingSourceFactory:Lll3;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/paging/Pager$pageFetcher$2;

    iget-object p0, p0, Landroidx/paging/Pager$pageFetcher$2;->$pagingSourceFactory:Lll3;

    invoke-direct {v0, p0, p1}, Landroidx/paging/Pager$pageFetcher$2;-><init>(Lll3;Le02;)V

    return-object v0
.end method

.method public final invoke(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/paging/Pager$pageFetcher$2;->create(Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/paging/Pager$pageFetcher$2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/paging/Pager$pageFetcher$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Le02;

    invoke-virtual {p0, p1}, Landroidx/paging/Pager$pageFetcher$2;->invoke(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/paging/Pager$pageFetcher$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/paging/Pager$pageFetcher$2;->$pagingSourceFactory:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
