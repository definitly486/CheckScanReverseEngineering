.class final Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1"
    f = "AsyncPagingDataDiffer.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->presentPagingDataEvent(Landroidx/paging/PagingDataEvent;Le02;)Ljava/lang/Object;
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
        "Landroidx/paging/PlaceholderPaddedDiffResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_apply:Landroidx/paging/PagingDataEvent$Refresh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagingDataEvent$Refresh<",
            "TT;>;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Landroidx/paging/AsyncPagingDataDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/AsyncPagingDataDiffer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/PagingDataEvent$Refresh;Landroidx/paging/AsyncPagingDataDiffer;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingDataEvent$Refresh<",
            "TT;>;",
            "Landroidx/paging/AsyncPagingDataDiffer<",
            "TT;>;",
            "Le02<",
            "-",
            "Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1;->$this_apply:Landroidx/paging/PagingDataEvent$Refresh;

    iput-object p2, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

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

    new-instance p1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1;

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1;->$this_apply:Landroidx/paging/PagingDataEvent$Refresh;

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-direct {p1, v0, p0, p2}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1;-><init>(Landroidx/paging/PagingDataEvent$Refresh;Landroidx/paging/AsyncPagingDataDiffer;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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
            "Landroidx/paging/PlaceholderPaddedDiffResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1;->$this_apply:Landroidx/paging/PagingDataEvent$Refresh;

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$Refresh;->getPreviousList()Landroidx/paging/PlaceholderPaddedList;

    move-result-object p1

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1;->$this_apply:Landroidx/paging/PagingDataEvent$Refresh;

    invoke-virtual {v0}, Landroidx/paging/PagingDataEvent$Refresh;->getNewList()Landroidx/paging/PlaceholderPaddedList;

    move-result-object v0

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-static {p0}, Landroidx/paging/AsyncPagingDataDiffer;->access$getDiffCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object p0

    invoke-static {p1, v0, p0}, Landroidx/paging/PlaceholderPaddedListDiffHelperKt;->computeDiff(Landroidx/paging/PlaceholderPaddedList;Landroidx/paging/PlaceholderPaddedList;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)Landroidx/paging/PlaceholderPaddedDiffResult;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
