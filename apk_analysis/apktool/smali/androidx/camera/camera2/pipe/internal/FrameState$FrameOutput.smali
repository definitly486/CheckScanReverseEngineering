.class public abstract Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/internal/FrameState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FrameOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final count:Llt;

.field private final internalResult:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Landroidx/camera/camera2/pipe/internal/OutputResult<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lkt;->b(I)Llt;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->count:Llt;

    new-instance v0, Lyp1;

    invoke-direct {v0}, Lyp1;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->internalResult:Lxp1;

    return-void
.end method


# virtual methods
.method public abstract await(Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public final decrement()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->count:Llt;

    invoke-virtual {v0}, Llt;->a()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/camera/camera2/pipe/internal/OutputResult;->Companion:Landroidx/camera/camera2/pipe/internal/OutputResult$Companion;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->internalResult:Lxp1;

    sget-object v1, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getUNAVAILABLE-U7r42EA()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/OutputStatus;->box-impl(I)Landroidx/camera/camera2/pipe/OutputStatus;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->access$constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->box-impl(Ljava/lang/Object;)Landroidx/camera/camera2/pipe/internal/OutputResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lxp1;->f(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->release()V

    :cond_0
    return-void
.end method

.method public final getInternalResult()Lxp1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxp1<",
            "Landroidx/camera/camera2/pipe/internal/OutputResult<",
            "TT;>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->internalResult:Lxp1;

    return-object p0
.end method

.method public final getResult()Lmk2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/internal/OutputResult<",
            "TT;>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->internalResult:Lxp1;

    return-object p0
.end method

.method public final getStatus-U7r42EA()I
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->count:Llt;

    iget v0, v0, Llt;->a:I

    if-nez v0, :cond_0

    sget-object p0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getUNAVAILABLE-U7r42EA()I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Landroidx/camera/camera2/pipe/internal/OutputResult;->Companion:Landroidx/camera/camera2/pipe/internal/OutputResult$Companion;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->internalResult:Lxp1;

    invoke-interface {p0}, Lmb4;->P()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getPENDING-U7r42EA()I

    move-result p0

    return p0

    :cond_1
    invoke-interface {p0}, Lmb4;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getUNAVAILABLE-U7r42EA()I

    move-result p0

    return p0

    :cond_2
    invoke-interface {p0}, Lmk2;->m()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/internal/OutputResult;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->getAvailable-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getAVAILABLE-U7r42EA()I

    move-result p0

    return p0

    :cond_3
    if-nez p0, :cond_4

    sget-object p0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getUNAVAILABLE-U7r42EA()I

    move-result p0

    return p0

    :cond_4
    check-cast p0, Landroidx/camera/camera2/pipe/OutputStatus;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus;->unbox-impl()I

    move-result p0

    return p0
.end method

.method public final increment()Z
    .locals 4

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->count:Llt;

    :cond_0
    iget v0, p0, Llt;->a:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v0, 0x1

    :goto_0
    sget-object v3, Llt;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v3, Ljy8$a;->a:Ljy8$a;

    :cond_2
    if-eqz v0, :cond_0

    if-eqz v2, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public abstract outputOrNull()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract release()V
.end method
