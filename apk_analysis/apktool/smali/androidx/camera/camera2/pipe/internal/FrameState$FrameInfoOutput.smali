.class public final Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;
.super Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/internal/FrameState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrameInfoOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput<",
        "Landroidx/camera/camera2/pipe/FrameInfo;",
        ">;",
        "Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener<",
        "Landroidx/camera/camera2/pipe/FrameInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/pipe/internal/FrameState;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/internal/FrameState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;->this$0:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public await(Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput$await$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput$await$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput$await$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput$await$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput$await$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput$await$1;-><init>(Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;Le02;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput$await$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput$await$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->getResult()Lmk2;

    move-result-object p0

    iput v4, v0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput$await$1;->label:I

    invoke-interface {p0, v0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Landroidx/camera/camera2/pipe/internal/OutputResult;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->getAvailable-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object p0

    :cond_4
    return-object v3
.end method

.method public onOutputComplete-3ejhThk(JJJJLjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->getInternalResult()Lxp1;

    move-result-object p1

    invoke-static {p9}, Landroidx/camera/camera2/pipe/internal/OutputResult;->box-impl(Ljava/lang/Object;)Landroidx/camera/camera2/pipe/internal/OutputResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lxp1;->f(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;->this$0:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->onFrameInfoComplete()V

    return-void
.end method

.method public outputOrNull()Landroidx/camera/camera2/pipe/FrameInfo;
    .locals 2

    sget-object v0, Landroidx/camera/camera2/pipe/internal/OutputResult;->Companion:Landroidx/camera/camera2/pipe/internal/OutputResult$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->getResult()Lmk2;

    move-result-object p0

    invoke-interface {p0}, Lmb4;->P()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lmb4;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lmk2;->m()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/internal/OutputResult;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->getAvailable-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    :cond_0
    check-cast v1, Landroidx/camera/camera2/pipe/FrameInfo;

    return-object v1
.end method

.method public bridge synthetic outputOrNull()Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;->outputOrNull()Landroidx/camera/camera2/pipe/FrameInfo;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 0

    return-void
.end method
