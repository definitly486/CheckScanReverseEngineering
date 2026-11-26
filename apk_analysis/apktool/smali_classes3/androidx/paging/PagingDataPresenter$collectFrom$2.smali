.class final Landroidx/paging/PagingDataPresenter$collectFrom$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.PagingDataPresenter$collectFrom$2"
    f = "PagingDataPresenter.kt"
    l = {
        0x77
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PagingDataPresenter;->collectFrom(Landroidx/paging/PagingData;Le02;)Ljava/lang/Object;
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
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $pagingData:Landroidx/paging/PagingData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Landroidx/paging/PagingDataPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagingDataPresenter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/PagingDataPresenter;Landroidx/paging/PagingData;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingDataPresenter<",
            "TT;>;",
            "Landroidx/paging/PagingData<",
            "TT;>;",
            "Le02<",
            "-",
            "Landroidx/paging/PagingDataPresenter$collectFrom$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->this$0:Landroidx/paging/PagingDataPresenter;

    iput-object p2, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->$pagingData:Landroidx/paging/PagingData;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Le02;)Le02;
    .locals 2
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

    new-instance v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    iget-object v1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->this$0:Landroidx/paging/PagingDataPresenter;

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->$pagingData:Landroidx/paging/PagingData;

    invoke-direct {v0, v1, p0, p1}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Landroidx/paging/PagingDataPresenter;Landroidx/paging/PagingData;Le02;)V

    return-object v0
.end method

.method public final invoke(Le02;)Ljava/lang/Object;
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

    invoke-virtual {p0, p1}, Landroidx/paging/PagingDataPresenter$collectFrom$2;->create(Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/paging/PagingDataPresenter$collectFrom$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Le02;

    invoke-virtual {p0, p1}, Landroidx/paging/PagingDataPresenter$collectFrom$2;->invoke(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->this$0:Landroidx/paging/PagingDataPresenter;

    iget-object v1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->$pagingData:Landroidx/paging/PagingData;

    invoke-virtual {v1}, Landroidx/paging/PagingData;->getUiReceiver$paging_common()Landroidx/paging/UiReceiver;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/paging/PagingDataPresenter;->access$setUiReceiver(Landroidx/paging/PagingDataPresenter;Landroidx/paging/UiReceiver;)V

    iget-object p1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->$pagingData:Landroidx/paging/PagingData;

    invoke-virtual {p1}, Landroidx/paging/PagingData;->getFlow$paging_common()Lhd3;

    move-result-object p1

    new-instance v1, Landroidx/paging/PagingDataPresenter$collectFrom$2$1;

    iget-object v3, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->this$0:Landroidx/paging/PagingDataPresenter;

    iget-object v4, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->$pagingData:Landroidx/paging/PagingData;

    invoke-direct {v1, v3, v4}, Landroidx/paging/PagingDataPresenter$collectFrom$2$1;-><init>(Landroidx/paging/PagingDataPresenter;Landroidx/paging/PagingData;)V

    iput v2, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    invoke-interface {p1, v1, p0}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
