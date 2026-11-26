.class public final Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.AsyncPagingDataDiffer$special$$inlined$transform$1"
    f = "AsyncPagingDataDiffer.kt"
    l = {
        0x24
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/AsyncPagingDataDiffer;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lo22;Lo22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Landroidx/paging/CombinedLoadStates;",
        ">;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_transform:Lhd3;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/paging/AsyncPagingDataDiffer;


# direct methods
.method public constructor <init>(Lhd3;Le02;Landroidx/paging/AsyncPagingDataDiffer;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;->$this_transform:Lhd3;

    iput-object p3, p0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
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

    new-instance v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;

    iget-object v1, p0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;->$this_transform:Lhd3;

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-direct {v0, v1, p2, p0}, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;-><init>(Lhd3;Le02;Landroidx/paging/AsyncPagingDataDiffer;)V

    iput-object p1, v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lid3;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "-",
            "Landroidx/paging/CombinedLoadStates;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;->invoke(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;->label:I

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

    iget-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lid3;

    iget-object v1, p0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;->$this_transform:Lhd3;

    new-instance v3, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1;

    iget-object v4, p0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-direct {v3, p1, v4}, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1;-><init>(Lid3;Landroidx/paging/AsyncPagingDataDiffer;)V

    iput v2, p0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;->label:I

    invoke-interface {v1, v3, p0}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
