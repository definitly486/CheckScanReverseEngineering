.class public final Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lid3;"
    }
.end annotation


# instance fields
.field final synthetic $$this$flow:Lid3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid3<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/paging/AsyncPagingDataDiffer;


# direct methods
.method public constructor <init>(Lid3;Landroidx/paging/AsyncPagingDataDiffer;)V
    .locals 0

    iput-object p2, p0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1;->$$this$flow:Lid3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;

    iget v1, v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;-><init>(Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v6

    :cond_2
    iget-object p0, v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lid3;

    iget-object p1, v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/paging/CombinedLoadStates;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lid3;

    iget-object v2, v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/CombinedLoadStates;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1;->$$this$flow:Lid3;

    check-cast p1, Landroidx/paging/CombinedLoadStates;

    iget-object v2, p0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-virtual {v2}, Landroidx/paging/AsyncPagingDataDiffer;->getInGetItem$paging_runtime()Lxg5;

    move-result-object v2

    invoke-interface {v2}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    iput-object p1, v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->label:I

    invoke-static {v0}, Lh;->g(Lf02;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v2, p1

    move-object p1, p2

    :goto_1
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-virtual {p0}, Landroidx/paging/AsyncPagingDataDiffer;->getInGetItem$paging_runtime()Lxg5;

    move-result-object p0

    new-instance p2, Landroidx/paging/AsyncPagingDataDiffer$loadStateFlow$1$1;

    invoke-direct {p2, v6}, Landroidx/paging/AsyncPagingDataDiffer$loadStateFlow$1$1;-><init>(Le02;)V

    iput-object v2, v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->label:I

    invoke-static {p0, p2, v0}, Lue3;->d(Lhd3;Lbm3;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object p0, p1

    move-object p1, v2

    :goto_2
    move-object p2, p0

    :cond_7
    iput-object v6, v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->label:I

    invoke-interface {p2, p1, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_3
    return-object v1

    :cond_8
    :goto_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
