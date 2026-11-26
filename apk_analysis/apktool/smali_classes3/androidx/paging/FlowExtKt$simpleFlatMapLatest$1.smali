.class public final Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.FlowExtKt$simpleFlatMapLatest$1"
    f = "FlowExt.kt"
    l = {
        0x56,
        0x56
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/FlowExtKt;->simpleFlatMapLatest(Lhd3;Lbm3;)Lhd3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Ldm3<",
        "Lid3<",
        "-TR;>;TT;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $transform:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "TT;",
            "Le02<",
            "-",
            "Lhd3<",
            "+TR;>;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lbm3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-TT;-",
            "Le02<",
            "-",
            "Lhd3<",
            "+TR;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;->$transform:Lbm3;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lid3;Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "-TR;>;TT;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;

    iget-object p0, p0, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;->$transform:Lbm3;

    invoke-direct {v0, p0, p3}, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;-><init>(Lbm3;Le02;)V

    iput-object p1, v0, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lid3;

    check-cast p3, Le02;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;->invoke(Lid3;Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v1, p0, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lid3;

    iget-object p1, p0, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;->L$1:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;->$transform:Lbm3;

    iput-object v1, p0, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;->label:I

    invoke-interface {v4, p1, p0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Lhd3;

    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;->label:I

    invoke-static {v1, p1, p0}, Lpx;->f(Lid3;Lhd3;Lpg8;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invokeSuspend$$forInline(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lid3;

    iget-object v0, p0, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;->L$1:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/paging/FlowExtKt$simpleFlatMapLatest$1;->$transform:Lbm3;

    invoke-interface {v1, v0, p0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhd3;

    invoke-static {p1, v0, p0}, Lpx;->f(Lid3;Lhd3;Lpg8;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
