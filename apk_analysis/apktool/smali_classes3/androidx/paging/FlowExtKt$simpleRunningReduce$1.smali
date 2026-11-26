.class final Landroidx/paging/FlowExtKt$simpleRunningReduce$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.FlowExtKt$simpleRunningReduce$1"
    f = "FlowExt.kt"
    l = {
        0x3f
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/FlowExtKt;->simpleRunningReduce(Lhd3;Ldm3;)Lhd3;
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
        "-TT;>;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $operation:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "TT;TT;",
            "Le02<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_simpleRunningReduce:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "TT;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lhd3;Ldm3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhd3<",
            "+TT;>;",
            "Ldm3<",
            "-TT;-TT;-",
            "Le02<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/paging/FlowExtKt$simpleRunningReduce$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;->$this_simpleRunningReduce:Lhd3;

    iput-object p2, p0, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;->$operation:Ldm3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

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

    new-instance v0, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;

    iget-object v1, p0, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;->$this_simpleRunningReduce:Lhd3;

    iget-object p0, p0, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;->$operation:Ldm3;

    invoke-direct {v0, v1, p0, p2}, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;-><init>(Lhd3;Ldm3;Le02;)V

    iput-object p1, v0, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lid3;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "-TT;>;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;->invoke(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;->label:I

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

    iget-object p1, p0, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lid3;

    new-instance v1, Lr07;

    invoke-direct {v1}, Lr07;-><init>()V

    invoke-static {}, Landroidx/paging/FlowExtKt;->access$getNULL$p()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lr07;->b:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;->$this_simpleRunningReduce:Lhd3;

    new-instance v4, Landroidx/paging/FlowExtKt$simpleRunningReduce$1$1;

    iget-object v5, p0, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;->$operation:Ldm3;

    invoke-direct {v4, v1, v5, p1}, Landroidx/paging/FlowExtKt$simpleRunningReduce$1$1;-><init>(Lr07;Ldm3;Lid3;)V

    iput v2, p0, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;->label:I

    invoke-interface {v3, v4, p0}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
