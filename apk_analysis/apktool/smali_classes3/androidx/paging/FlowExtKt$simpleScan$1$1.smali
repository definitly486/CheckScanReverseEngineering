.class final Landroidx/paging/FlowExtKt$simpleScan$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/FlowExtKt$simpleScan$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic $accumulator:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic $operation:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "TR;TT;",
            "Le02<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr07;Ldm3;Lid3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr07<",
            "TR;>;",
            "Ldm3<",
            "-TR;-TT;-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lid3<",
            "-TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$accumulator:Lr07;

    iput-object p2, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$operation:Ldm3;

    iput-object p3, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$$this$flow:Lid3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p2, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;

    iget v1, v0, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;-><init>(Landroidx/paging/FlowExtKt$simpleScan$1$1;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object p1, v0, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lr07;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$accumulator:Lr07;

    iget-object v2, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$operation:Ldm3;

    iget-object v6, p2, Lr07;->b:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;->label:I

    invoke-interface {v2, v6, p1, v0}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_1
    iput-object p2, p1, Lr07;->b:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$$this$flow:Lid3;

    iget-object p0, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$accumulator:Lr07;

    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    iput-object v3, v0, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;->label:I

    invoke-interface {p1, p0, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
