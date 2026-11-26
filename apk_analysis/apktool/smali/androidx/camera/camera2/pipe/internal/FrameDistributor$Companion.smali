.class public final Landroidx/camera/camera2/pipe/internal/FrameDistributor$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/internal/FrameDistributor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/FrameDistributor$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$selectTimestampMatcher-5y4XNsE(Landroidx/camera/camera2/pipe/internal/FrameDistributor$Companion;ILandroidx/camera/camera2/pipe/CameraStream$Config;Landroidx/camera/camera2/pipe/ImageSourceConfig;ZJ)Landroidx/camera/camera2/pipe/internal/OutputMatcher;
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/camera/camera2/pipe/internal/FrameDistributor$Companion;->selectTimestampMatcher-5y4XNsE(ILandroidx/camera/camera2/pipe/CameraStream$Config;Landroidx/camera/camera2/pipe/ImageSourceConfig;ZJ)Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    move-result-object p0

    return-object p0
.end method

.method private final isDefaultTimebase(Landroidx/camera/camera2/pipe/CameraStream$Config;)Z
    .locals 2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p0, v0, :cond_4

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getOutputs()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of p1, p0, Ljava/util/Collection;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/OutputStream$Config;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    move-result-object p1

    sget-object v0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;->getTIMESTAMP_BASE_DEFAULT-6HVI0MA()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->unbox-impl()I

    move-result p1

    invoke-static {p1, v0}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->equals-impl0(II)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method private final isHwComposerUsage(Landroidx/camera/camera2/pipe/ImageSourceConfig;)Z
    .locals 2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p0, v0, :cond_0

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/ImageSourceConfig;->getUsageFlags()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/ImageSourceConfig;->getUsageFlags()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/16 v0, 0x800

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final isRealtimeTimebase(Landroidx/camera/camera2/pipe/CameraStream$Config;)Z
    .locals 2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    const/4 v1, 0x0

    if-lt p0, v0, :cond_3

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getOutputs()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of p1, p0, Ljava/util/Collection;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/OutputStream$Config;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    move-result-object p1

    sget-object v0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;->getTIMESTAMP_BASE_REALTIME-6HVI0MA()I

    move-result v0

    if-nez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->unbox-impl()I

    move-result p1

    invoke-static {p1, v0}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->equals-impl0(II)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method private final isSensorTimebase(Landroidx/camera/camera2/pipe/CameraStream$Config;)Z
    .locals 2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    const/4 v1, 0x0

    if-lt p0, v0, :cond_3

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getOutputs()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of p1, p0, Ljava/util/Collection;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/OutputStream$Config;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    move-result-object p1

    sget-object v0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;->getTIMESTAMP_BASE_SENSOR-6HVI0MA()I

    move-result v0

    if-nez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->unbox-impl()I

    move-result p1

    invoke-static {p1, v0}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->equals-impl0(II)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method private final isVideoEncodeUsage(Landroidx/camera/camera2/pipe/ImageSourceConfig;)Z
    .locals 2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_0

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/ImageSourceConfig;->getUsageFlags()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/ImageSourceConfig;->getUsageFlags()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/32 v0, 0x10000

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final selectTimestampMatcher-5y4XNsE(ILandroidx/camera/camera2/pipe/CameraStream$Config;Landroidx/camera/camera2/pipe/ImageSourceConfig;ZJ)Landroidx/camera/camera2/pipe/internal/OutputMatcher;
    .locals 11

    const-string p0, "Configuring "

    const-string v0, "CXCP"

    const/4 v1, 0x0

    const/16 v2, 0x21

    if-eqz p4, :cond_10

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_3

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getOutputs()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/OutputStream$Config;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    move-result-object v4

    sget-object v5, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;->getTIMESTAMP_BASE_DEFAULT-6HVI0MA()I

    move-result v5

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->unbox-impl()I

    move-result v4

    invoke-static {v4, v5}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->equals-impl0(II)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_5

    goto :goto_0

    :cond_3
    :goto_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    const-wide/16 v5, 0x0

    if-lt v3, v4, :cond_4

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/ImageSourceConfig;->getUsageFlags()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/ImageSourceConfig;->getUsageFlags()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x10000

    and-long/2addr v7, v9

    cmp-long v4, v7, v5

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    if-lt v3, v2, :cond_f

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/ImageSourceConfig;->getUsageFlags()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/ImageSourceConfig;->getUsageFlags()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v7, 0x800

    and-long/2addr v3, v7

    cmp-long p3, v3, v5

    if-eqz p3, :cond_f

    :cond_5
    :goto_3
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v2, :cond_9

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getOutputs()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    instance-of v3, p3, Ljava/util/Collection;

    if-eqz v3, :cond_6

    move-object v3, p3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/OutputStream$Config;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    move-result-object v3

    sget-object v4, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;->getTIMESTAMP_BASE_REALTIME-6HVI0MA()I

    move-result v4

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->unbox-impl()I

    move-result v3

    invoke-static {v3, v4}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->equals-impl0(II)Z

    move-result v3

    :goto_4
    if-eqz v3, :cond_7

    goto :goto_7

    :cond_9
    :goto_5
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v2, :cond_d

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getOutputs()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    instance-of p3, p2, Ljava/util/Collection;

    if-eqz p3, :cond_a

    move-object p3, p2

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_a

    goto :goto_8

    :cond_a
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/camera2/pipe/OutputStream$Config;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    move-result-object p3

    sget-object v2, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;->getTIMESTAMP_BASE_SENSOR-6HVI0MA()I

    move-result v2

    if-nez p3, :cond_c

    move p3, v1

    goto :goto_6

    :cond_c
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->unbox-impl()I

    move-result p3

    invoke-static {p3, v2}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->equals-impl0(II)Z

    move-result p3

    :goto_6
    if-eqz p3, :cond_b

    :goto_7
    sget-object p0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->Companion:Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;->getEXACT()Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    move-result-object p0

    return-object p0

    :cond_d
    :goto_8
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_e

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with inexact realtime-to-monotonic timestamp matching rules."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    sget-object v1, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->Companion:Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    move-wide/from16 v2, p5

    invoke-static/range {v1 .. v7}, Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;->forTimestampsWithOffset$default(Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;JJILjava/lang/Object;)Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    move-result-object p0

    return-object p0

    :cond_f
    sget-object p0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->Companion:Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;->getEXACT()Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    move-result-object p0

    return-object p0

    :cond_10
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v2, :cond_15

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getOutputs()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    instance-of p3, p2, Ljava/util/Collection;

    if-eqz p3, :cond_11

    move-object p3, p2

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_11

    goto :goto_b

    :cond_11
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_15

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/camera2/pipe/OutputStream$Config;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    move-result-object p3

    sget-object v2, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;->getTIMESTAMP_BASE_REALTIME-6HVI0MA()I

    move-result v2

    if-nez p3, :cond_12

    move p3, v1

    goto :goto_a

    :cond_12
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->unbox-impl()I

    move-result p3

    invoke-static {p3, v2}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->equals-impl0(II)Z

    move-result p3

    :goto_a
    if-eqz p3, :cond_14

    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_13

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with inexact monotonic-to-realtime timestamp matching rules."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    sget-object v1, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->Companion:Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;

    move-wide/from16 v2, p5

    neg-long v2, v2

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v7}, Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;->forTimestampsWithOffset$default(Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;JJILjava/lang/Object;)Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    move-result-object p0

    return-object p0

    :cond_14
    move-wide/from16 v2, p5

    goto :goto_9

    :cond_15
    :goto_b
    sget-object p0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->Companion:Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;->getEXACT()Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    move-result-object p0

    return-object p0
.end method
