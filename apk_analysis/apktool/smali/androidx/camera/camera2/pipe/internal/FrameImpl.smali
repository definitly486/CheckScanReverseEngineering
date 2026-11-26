.class public final Landroidx/camera/camera2/pipe/internal/FrameImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/Frame;


# instance fields
.field private final closed:Lht;

.field private final frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

.field private final imageStreams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;"
        }
    .end annotation
.end field

.field private final outputStreams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/OutputId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/internal/FrameState;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/internal/FrameState;",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->imageStreams:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getOutputId-4LaLFng()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->outputStreams:Ljava/util/Set;

    const/4 p1, 0x0

    invoke-static {p1}, Lkt;->a(Z)Lht;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->closed:Lht;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/internal/FrameState;Ljava/util/Set;ILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 72
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 73
    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 75
    check-cast p4, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    .line 76
    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getStreamId-ptHMqGs()I

    move-result p4

    invoke-static {p4}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object p4

    .line 77
    invoke-interface {p3, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {p3}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    .line 79
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/internal/FrameImpl;-><init>(Landroidx/camera/camera2/pipe/internal/FrameState;Ljava/util/Set;)V

    return-void
.end method

.method private final release()Z
    .locals 5

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getFrameInfoOutput()Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->decrement()V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameImpl;->getImageStreams()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getStreamId-ptHMqGs()I

    move-result v4

    invoke-static {v4}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->decrement()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public addListener(Landroidx/camera/camera2/pipe/Frame$Listener;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/internal/FrameState;->addListener(Landroidx/camera/camera2/pipe/Frame$Listener;)V

    return-void

    :cond_0
    const-string p1, "Cannot add Frame.Listener, "

    const-string v0, " is closed!"

    invoke-static {p0, p1, v0}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public awaitFrameInfo(Le02;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getFrameInfoOutput()Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;->await(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public awaitImage-A9nWXxg(ILe02;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/media/OutputImage;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->outputStreams:Ljava/util/Set;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getOutputId-4LaLFng()I

    move-result v2

    invoke-static {v2, p1}, Landroidx/camera/camera2/pipe/OutputId;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    check-cast v0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p2}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->await(Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    check-cast p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    return-object p0

    :cond_5
    return-object v1
.end method

.method public awaitImage-NYG5g8E(ILe02;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/media/OutputImage;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImage$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImage$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImage$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImage$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImage$1;-><init>(Landroidx/camera/camera2/pipe/internal/FrameImpl;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImage$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImage$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImage$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->closed:Lht;

    invoke-virtual {p2}, Lht;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v4

    :cond_3
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameImpl;->getImageStreams()Ljava/util/Set;

    move-result-object p2

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    return-object v4

    :cond_4
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getStreamId-ptHMqGs()I

    move-result v5

    invoke-static {v5, p1}, Landroidx/camera/camera2/pipe/StreamId;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    iput-object p0, v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImage$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImage$1;->label:I

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->await(Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    :goto_2
    check-cast p2, Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    if-eqz p2, :cond_7

    return-object p2

    :cond_9
    return-object v4
.end method

.method public awaitImages-NYG5g8E(ILe02;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/media/OutputImage;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImages$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImages$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImages$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImages$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImages$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImages$1;-><init>(Landroidx/camera/camera2/pipe/internal/FrameImpl;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImages$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImages$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImages$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    iget-object p1, v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImages$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->closed:Lht;

    invoke-virtual {p2}, Lht;->b()Z

    move-result p2

    sget-object v2, Lkx2;->b:Lkx2;

    if-eqz p2, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameImpl;->getImageStreams()Ljava/util/Set;

    move-result-object p2

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    return-object v2

    :cond_4
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getStreamId-ptHMqGs()I

    move-result v4

    invoke-static {v4, p1}, Landroidx/camera/camera2/pipe/StreamId;->equals-impl0(II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :cond_7
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    iput-object p1, v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImages$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImages$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/internal/FrameImpl$awaitImages$1;->label:I

    invoke-virtual {p2, v0}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->await(Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    check-cast p2, Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    if-eqz p2, :cond_7

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public close()V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/FrameImpl;->release()Z

    return-void
.end method

.method public final finalize()V
    .locals 2

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/FrameImpl;->release()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to close "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "! This indicates a memory leak and could cause the camera to stall, or images to be lost."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CXCP"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getFrameId-OMxQvVY()J
    .locals 2

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getFrameId-OMxQvVY()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrameInfo()Landroidx/camera/camera2/pipe/FrameInfo;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getFrameInfoOutput()Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;->outputOrNull()Landroidx/camera/camera2/pipe/FrameInfo;

    move-result-object p0

    return-object p0
.end method

.method public getFrameInfoStatus-U7r42EA()I
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getUNAVAILABLE-U7r42EA()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getFrameInfoOutput()Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->getStatus-U7r42EA()I

    move-result p0

    return p0
.end method

.method public getFrameNumber-Ugla2oM()J
    .locals 2

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getFrameNumber-Ugla2oM()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrameTimestamp-LS1Wq50()J
    .locals 2

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getFrameTimestamp-LS1Wq50()J

    move-result-wide v0

    return-wide v0
.end method

.method public getImage-aKI5c8E(I)Landroidx/camera/camera2/pipe/media/OutputImage;
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameImpl;->getImageStreams()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getStreamId-ptHMqGs()I

    move-result v3

    invoke-static {v3, p1}, Landroidx/camera/camera2/pipe/StreamId;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->outputOrNull()Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_5
    return-object v1
.end method

.method public getImage-iYJqvbA(I)Landroidx/camera/camera2/pipe/media/OutputImage;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->outputStreams:Ljava/util/Set;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getOutputId-4LaLFng()I

    move-result v2

    invoke-static {v2, p1}, Landroidx/camera/camera2/pipe/OutputId;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    check-cast v0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->outputOrNull()Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method

.method public getImageStreams()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->imageStreams:Ljava/util/Set;

    return-object p0
.end method

.method public getImages-aKI5c8E(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/media/OutputImage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->b()Z

    move-result v0

    sget-object v1, Lkx2;->b:Lkx2;

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameImpl;->getImageStreams()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getStreamId-ptHMqGs()I

    move-result v2

    invoke-static {v2, p1}, Landroidx/camera/camera2/pipe/StreamId;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->outputOrNull()Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object p0
.end method

.method public getRequestMetadata()Landroidx/camera/camera2/pipe/RequestMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getRequestMetadata()Landroidx/camera/camera2/pipe/RequestMetadata;

    move-result-object p0

    return-object p0
.end method

.method public imageStatus-BWjvHWQ(I)I
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->outputStreams:Ljava/util/Set;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getOutputId-4LaLFng()I

    move-result v1

    invoke-static {v1, p1}, Landroidx/camera/camera2/pipe/OutputId;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->getStatus-U7r42EA()I

    move-result p0

    return p0

    :cond_3
    sget-object p0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getUNAVAILABLE-U7r42EA()I

    move-result p0

    return p0

    :cond_4
    :goto_1
    sget-object p0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getUNAVAILABLE-U7r42EA()I

    move-result p0

    return p0
.end method

.method public imageStatus-Oo2lJfM(I)I
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->b()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameImpl;->getImageStreams()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getStreamId-ptHMqGs()I

    move-result v2

    invoke-static {v2, p1}, Landroidx/camera/camera2/pipe/StreamId;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->getStatus-U7r42EA()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/OutputStatus;->box-impl(I)Landroidx/camera/camera2/pipe/OutputStatus;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/OutputStatus;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus;->unbox-impl()I

    move-result p0

    return p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/OutputStatus;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStatus;->unbox-impl()I

    move-result v0

    sget-object v1, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getPENDING-U7r42EA()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/camera/camera2/pipe/OutputStatus;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getPENDING-U7r42EA()I

    move-result p0

    return p0

    :cond_7
    :goto_2
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/OutputStatus;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStatus;->unbox-impl()I

    move-result v0

    sget-object v1, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getAVAILABLE-U7r42EA()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/camera/camera2/pipe/OutputStatus;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getAVAILABLE-U7r42EA()I

    move-result p0

    return p0

    :cond_a
    :goto_3
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_b
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/OutputStatus;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStatus;->unbox-impl()I

    move-result v0

    invoke-static {p0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/OutputStatus;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/OutputStatus;->unbox-impl()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/OutputStatus;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object p0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getUNAVAILABLE-U7r42EA()I

    move-result p0

    return p0

    :cond_d
    :goto_4
    invoke-static {p0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/OutputStatus;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus;->unbox-impl()I

    move-result p0

    return p0

    :cond_e
    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, ". This is unexpected."

    const-string v0, "No matching outputs found with "

    invoke-static {p0, v0, p1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_f
    :goto_5
    sget-object p0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getUNAVAILABLE-U7r42EA()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic tryAcquire(Ljava/util/Set;)Landroidx/camera/camera2/pipe/Frame;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/internal/FrameImpl;->tryAcquire(Ljava/util/Set;)Landroidx/camera/camera2/pipe/internal/FrameImpl;

    move-result-object p0

    return-object p0
.end method

.method public tryAcquire(Ljava/util/Set;)Landroidx/camera/camera2/pipe/internal/FrameImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;)",
            "Landroidx/camera/camera2/pipe/internal/FrameImpl;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getFrameInfoOutput()Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->increment()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v0, Lir7;

    invoke-direct {v0}, Lir7;-><init>()V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getStreamId-ptHMqGs()I

    move-result v3

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameImpl;->getImageStreams()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_3

    invoke-static {v3}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->increment()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v3}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v2

    invoke-virtual {v0, v2}, Lir7;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    const/4 p1, 0x1

    :goto_1
    invoke-static {v0}, Ll1;->d(Lir7;)Lir7;

    move-result-object v0

    if-nez p1, :cond_8

    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/FrameState;->getFrameInfoOutput()Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->decrement()V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getStreamId-ptHMqGs()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v1

    iget-object v2, v0, Lir7;->b:Luz4;

    invoke-virtual {v2, v1}, Luz4;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->decrement()V

    goto :goto_2

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance p1, Landroidx/camera/camera2/pipe/internal/FrameImpl;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-direct {p1, p0, v0}, Landroidx/camera/camera2/pipe/internal/FrameImpl;-><init>(Landroidx/camera/camera2/pipe/internal/FrameState;Ljava/util/Set;)V

    return-object p1
.end method
