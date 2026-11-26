.class final Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1"
    f = "PagingDataTransforms.jvm.kt"
    l = {
        0x42
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt;->filter(Landroidx/paging/PagingData;Ljava/util/concurrent/Executor;Lnl3;)Landroidx/paging/PagingData;
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
        "Landroidx/paging/PageEvent<",
        "TT;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $event:Landroidx/paging/PageEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PageEvent<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $predicate:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Landroidx/paging/PageEvent;Lnl3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PageEvent<",
            "TT;>;",
            "Lnl3<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1;->$event:Landroidx/paging/PageEvent;

    iput-object p2, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1;->$predicate:Lnl3;

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

    new-instance p1, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1;

    iget-object v0, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1;->$event:Landroidx/paging/PageEvent;

    iget-object p0, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1;->$predicate:Lnl3;

    invoke-direct {p1, v0, p0, p2}, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1;-><init>(Landroidx/paging/PageEvent;Lnl3;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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
            "Landroidx/paging/PageEvent<",
            "TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1;->$event:Landroidx/paging/PageEvent;

    new-instance v1, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1$1;

    iget-object v3, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1;->$predicate:Lnl3;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1$1;-><init>(Lnl3;Le02;)V

    iput v2, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1;->label:I

    invoke-virtual {p1, v1, p0}, Landroidx/paging/PageEvent;->filter(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
