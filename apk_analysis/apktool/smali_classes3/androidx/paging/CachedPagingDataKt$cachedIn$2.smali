.class final Landroidx/paging/CachedPagingDataKt$cachedIn$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.CachedPagingDataKt$cachedIn$2"
    f = "CachedPagingData.kt"
    l = {
        0x63
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/CachedPagingDataKt;->cachedIn(Lhd3;Ly22;Landroidx/paging/ActiveFlowTracker;)Lhd3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Ldm3<",
        "Landroidx/paging/MulticastedPagingData<",
        "TT;>;",
        "Landroidx/paging/MulticastedPagingData<",
        "TT;>;",
        "Le02<",
        "-",
        "Landroidx/paging/MulticastedPagingData<",
        "TT;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Le02;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Landroidx/paging/CachedPagingDataKt$cachedIn$2;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/paging/MulticastedPagingData;Landroidx/paging/MulticastedPagingData;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/MulticastedPagingData<",
            "TT;>;",
            "Landroidx/paging/MulticastedPagingData<",
            "TT;>;",
            "Le02<",
            "-",
            "Landroidx/paging/MulticastedPagingData<",
            "TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;

    invoke-direct {p0, p3}, Landroidx/paging/CachedPagingDataKt$cachedIn$2;-><init>(Le02;)V

    iput-object p1, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$1:Ljava/lang/Object;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Landroidx/paging/MulticastedPagingData;

    check-cast p2, Landroidx/paging/MulticastedPagingData;

    check-cast p3, Le02;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->invoke(Landroidx/paging/MulticastedPagingData;Landroidx/paging/MulticastedPagingData;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/paging/MulticastedPagingData;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/paging/MulticastedPagingData;

    iget-object v1, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/MulticastedPagingData;

    iput-object v1, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->label:I

    invoke-virtual {p1, p0}, Landroidx/paging/MulticastedPagingData;->close(Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method
