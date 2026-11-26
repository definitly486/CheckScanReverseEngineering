.class final Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.ItemSnapshotListFlow$asItemSnapshotListFlow$2$1"
    f = "ItemSnapshotListFlow.kt"
    l = {
        0x79
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Landroidx/paging/PagingData<",
        "TT;>;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$this$channelFlow:Lug6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug6<",
            "Landroidx/paging/ItemSnapshotList<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic $errorCombinedLoadStates:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onLoadError:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/paging/CombinedLoadStates;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lr07;Lnl3;Lug6;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr07<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/paging/CombinedLoadStates;",
            "Lj59;",
            ">;",
            "Lug6<",
            "-",
            "Landroidx/paging/ItemSnapshotList<",
            "TT;>;>;",
            "Le02<",
            "-",
            "Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;->$errorCombinedLoadStates:Lr07;

    iput-object p2, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;->$onLoadError:Lnl3;

    iput-object p3, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;->$$this$channelFlow:Lug6;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method

.method public static synthetic g(Landroidx/paging/PageStore;)I
    .locals 0

    invoke-static {p0}, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;->invokeSuspend$lambda$0(Landroidx/paging/PageStore;)I

    move-result p0

    return p0
.end method

.method private static final invokeSuspend$lambda$0(Landroidx/paging/PageStore;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/paging/PageStore;->hashCode()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 3
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

    new-instance v0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;

    iget-object v1, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;->$errorCombinedLoadStates:Lr07;

    iget-object v2, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;->$onLoadError:Lnl3;

    iget-object p0, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;->$$this$channelFlow:Lug6;

    invoke-direct {v0, v1, v2, p0, p2}, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;-><init>(Lr07;Lnl3;Lug6;Le02;)V

    iput-object p1, v0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Landroidx/paging/PagingData;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingData<",
            "TT;>;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Landroidx/paging/PagingData;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;->invoke(Landroidx/paging/PagingData;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;->label:I

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

    iget-object p1, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/paging/PagingData;

    invoke-virtual {p1}, Landroidx/paging/PagingData;->getFlow$paging_common()Lhd3;

    move-result-object p1

    new-instance v1, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;

    iget-object v4, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;->$errorCombinedLoadStates:Lr07;

    iget-object v5, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;->$onLoadError:Lnl3;

    invoke-direct {v1, v4, v5, v2}, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;-><init>(Lr07;Lnl3;Le02;)V

    invoke-static {p1, v2, v1}, Landroidx/paging/FlowExtKt;->simpleScan(Lhd3;Ljava/lang/Object;Ldm3;)Lhd3;

    move-result-object p1

    new-instance v1, Lcf3;

    invoke-direct {v1, p1}, Lcf3;-><init>(Lhd3;)V

    new-instance p1, Landroidx/paging/e;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lzd3;->c:Lyd3;

    invoke-static {v1, p1, v2}, Lzd3;->d(Lhd3;Lnl3;Lbm3;)Lnp2;

    move-result-object p1

    new-instance v1, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$3;

    iget-object v2, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;->$$this$channelFlow:Lug6;

    invoke-direct {v1, v2}, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$3;-><init>(Lug6;)V

    iput v3, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;->label:I

    invoke-virtual {p1, v1, p0}, Lnp2;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
