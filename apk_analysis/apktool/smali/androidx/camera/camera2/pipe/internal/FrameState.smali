.class public final Landroidx/camera/camera2/pipe/internal/FrameState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/internal/FrameState$Companion;,
        Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;,
        Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;,
        Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;,
        Landroidx/camera/camera2/pipe/internal/FrameState$State;,
        Landroidx/camera/camera2/pipe/internal/FrameState$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/internal/FrameState$Companion;

.field private static final frameIds:Lmt;


# instance fields
.field private final frameId:J

.field private final frameInfoOutput:Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;

.field private final frameNumber:J

.field private final frameTimestamp:J

.field private final imageOutputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;",
            ">;"
        }
    .end annotation
.end field

.field private final listenerStates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/camera/camera2/pipe/internal/ListenerState;",
            ">;"
        }
    .end annotation
.end field

.field private final remainingStreamCount:Llt;

.field private final requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

.field private final state:Lot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lot<",
            "Landroidx/camera/camera2/pipe/internal/FrameState$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/internal/FrameState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/internal/FrameState$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/internal/FrameState;->Companion:Landroidx/camera/camera2/pipe/internal/FrameState$Companion;

    invoke-static {}, Lkt;->c()Lmt;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameIds:Lmt;

    return-void
.end method

.method private constructor <init>(Landroidx/camera/camera2/pipe/RequestMetadata;JJLjava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/RequestMetadata;",
            "JJ",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraStream;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    iput-wide p2, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameNumber:J

    iput-wide p4, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameTimestamp:J

    sget-object p2, Landroidx/camera/camera2/pipe/internal/FrameState;->Companion:Landroidx/camera/camera2/pipe/internal/FrameState$Companion;

    invoke-static {p2}, Landroidx/camera/camera2/pipe/internal/FrameState$Companion;->access$nextFrameId-OMxQvVY(Landroidx/camera/camera2/pipe/internal/FrameState$Companion;)J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameId:J

    new-instance p2, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;

    invoke-direct {p2, p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;-><init>(Landroidx/camera/camera2/pipe/internal/FrameState;)V

    iput-object p2, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameInfoOutput:Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object p2

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getStreams()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v2

    move-object p3, p6

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object p5, p4

    check-cast p5, Landroidx/camera/camera2/pipe/CameraStream;

    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result p5

    invoke-static {p5, v2}, Landroidx/camera/camera2/pipe/StreamId;->equals-impl0(II)Z

    move-result p5

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    :goto_0
    check-cast p4, Landroidx/camera/camera2/pipe/CameraStream;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    invoke-static {p4}, Lkt;->b(I)Llt;

    move-result-object v4

    move-object p4, p3

    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    const/4 p5, 0x0

    :goto_1
    if-ge p5, p4, :cond_0

    new-instance v0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/OutputStream;->getId-4LaLFng()I

    move-result v3

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;-><init>(Landroidx/camera/camera2/pipe/internal/FrameState;IILlt;Ljh2;)V

    invoke-virtual {p2, v0}, Lar4;->add(Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_3
    move-object v1, p0

    invoke-static {p2}, Lu96;->d(Lar4;)Lar4;

    move-result-object p0

    iput-object p0, v1, Landroidx/camera/camera2/pipe/internal/FrameState;->imageOutputs:Ljava/util/List;

    sget-object p1, Landroidx/camera/camera2/pipe/internal/FrameState$State;->STARTED:Landroidx/camera/camera2/pipe/internal/FrameState$State;

    invoke-static {p1}, Lkt;->d(Ljava/lang/Object;)Lot;

    move-result-object p1

    iput-object p1, v1, Landroidx/camera/camera2/pipe/internal/FrameState;->state:Lot;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getStreamId-ptHMqGs()I

    move-result p2

    invoke-static {p2}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lqn1;->x0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Lkt;->b(I)Llt;

    move-result-object p0

    iput-object p0, v1, Landroidx/camera/camera2/pipe/internal/FrameState;->remainingStreamCount:Llt;

    new-instance p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p0, v1, Landroidx/camera/camera2/pipe/internal/FrameState;->listenerStates:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/RequestMetadata;JJLjava/util/Set;Ljh2;)V
    .locals 0

    .line 223
    invoke-direct/range {p0 .. p6}, Landroidx/camera/camera2/pipe/internal/FrameState;-><init>(Landroidx/camera/camera2/pipe/RequestMetadata;JJLjava/util/Set;)V

    return-void
.end method

.method public static final synthetic access$getFrameIds$cp()Lmt;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameIds:Lmt;

    return-object v0
.end method

.method public static final synthetic access$getListenerStates$p(Landroidx/camera/camera2/pipe/internal/FrameState;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->listenerStates:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private final invokeOnFrameComplete()V
    .locals 6

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->listenerStates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/internal/ListenerState;

    iget-wide v2, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameNumber:J

    iget-wide v4, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameTimestamp:J

    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/camera/camera2/pipe/internal/ListenerState;->invokeOnFrameComplete-cfZT-5Y(JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addListener(Landroidx/camera/camera2/pipe/Frame$Listener;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/camera/camera2/pipe/internal/ListenerState;

    invoke-direct {v0, p1}, Landroidx/camera/camera2/pipe/internal/ListenerState;-><init>(Landroidx/camera/camera2/pipe/Frame$Listener;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->listenerStates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->state:Lot;

    iget-object p1, p1, Lot;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/internal/FrameState$State;

    sget-object v1, Landroidx/camera/camera2/pipe/internal/FrameState$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameNumber:J

    iget-wide p0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameTimestamp:J

    invoke-virtual {v0, v1, v2, p0, p1}, Landroidx/camera/camera2/pipe/internal/ListenerState;->invokeOnFrameComplete-cfZT-5Y(JJ)V

    return-void

    :cond_0
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_1
    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameNumber:J

    iget-wide p0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameTimestamp:J

    invoke-virtual {v0, v1, v2, p0, p1}, Landroidx/camera/camera2/pipe/internal/ListenerState;->invokeOnImagesAvailable-cfZT-5Y(JJ)V

    return-void

    :cond_2
    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameNumber:J

    iget-wide p0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameTimestamp:J

    invoke-virtual {v0, v1, v2, p0, p1}, Landroidx/camera/camera2/pipe/internal/ListenerState;->invokeOnFrameInfoAvailable-cfZT-5Y(JJ)V

    return-void

    :cond_3
    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameNumber:J

    iget-wide p0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameTimestamp:J

    invoke-virtual {v0, v1, v2, p0, p1}, Landroidx/camera/camera2/pipe/internal/ListenerState;->invokeOnStarted-cfZT-5Y(JJ)V

    return-void
.end method

.method public final getFrameId-OMxQvVY()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameId:J

    return-wide v0
.end method

.method public final getFrameInfoOutput()Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameInfoOutput:Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;

    return-object p0
.end method

.method public final getFrameNumber-Ugla2oM()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameNumber:J

    return-wide v0
.end method

.method public final getFrameTimestamp-LS1Wq50()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameTimestamp:J

    return-wide v0
.end method

.method public final getImageOutputs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->imageOutputs:Ljava/util/List;

    return-object p0
.end method

.method public final getRequestMetadata()Landroidx/camera/camera2/pipe/RequestMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    return-object p0
.end method

.method public final onFrameInfoComplete()V
    .locals 7

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->state:Lot;

    :cond_0
    iget-object v1, v0, Lot;->b:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroidx/camera/camera2/pipe/internal/FrameState$State;

    sget-object v3, Landroidx/camera/camera2/pipe/internal/FrameState$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    sget-object v2, Landroidx/camera/camera2/pipe/internal/FrameState$State;->COMPLETE:Landroidx/camera/camera2/pipe/internal/FrameState$State;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected frame state for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "! State is "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v2, Landroidx/camera/camera2/pipe/internal/FrameState$State;->FRAME_INFO_COMPLETE:Landroidx/camera/camera2/pipe/internal/FrameState$State;

    :goto_0
    invoke-virtual {v0, v1, v2}, Lot;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->listenerStates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/internal/ListenerState;

    iget-wide v3, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameNumber:J

    iget-wide v5, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameTimestamp:J

    invoke-virtual {v1, v3, v4, v5, v6}, Landroidx/camera/camera2/pipe/internal/ListenerState;->invokeOnFrameInfoAvailable-cfZT-5Y(JJ)V

    goto :goto_1

    :cond_3
    sget-object v0, Landroidx/camera/camera2/pipe/internal/FrameState$State;->COMPLETE:Landroidx/camera/camera2/pipe/internal/FrameState$State;

    if-ne v2, v0, :cond_4

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->invokeOnFrameComplete()V

    :cond_4
    return-void
.end method

.method public final onStreamResultComplete-aKI5c8E(I)V
    .locals 6

    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->remainingStreamCount:Llt;

    invoke-virtual {p1}, Llt;->a()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->state:Lot;

    :cond_1
    iget-object v0, p1, Lot;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/pipe/internal/FrameState$State;

    sget-object v2, Landroidx/camera/camera2/pipe/internal/FrameState$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    sget-object v1, Landroidx/camera/camera2/pipe/internal/FrameState$State;->COMPLETE:Landroidx/camera/camera2/pipe/internal/FrameState$State;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected frame state for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "! State is "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    sget-object v1, Landroidx/camera/camera2/pipe/internal/FrameState$State;->STREAM_RESULTS_COMPLETE:Landroidx/camera/camera2/pipe/internal/FrameState$State;

    :goto_0
    invoke-virtual {p1, v0, v1}, Lot;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->listenerStates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/internal/ListenerState;

    iget-wide v2, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameNumber:J

    iget-wide v4, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameTimestamp:J

    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/camera/camera2/pipe/internal/ListenerState;->invokeOnImagesAvailable-cfZT-5Y(JJ)V

    goto :goto_1

    :cond_4
    sget-object p1, Landroidx/camera/camera2/pipe/internal/FrameState$State;->COMPLETE:Landroidx/camera/camera2/pipe/internal/FrameState$State;

    if-ne v1, p1, :cond_5

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->invokeOnFrameComplete()V

    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Frame-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameId:J

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/FrameId;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameTimestamp:J

    const/16 p0, 0x29

    invoke-static {v0, v1, v2, p0}, Llg;->f(Ljava/lang/StringBuilder;JC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
