.class public final Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputConfig"
.end annotation


# instance fields
.field private final camera:Ljava/lang/String;

.field private final deferredOutputType:Landroidx/camera/camera2/pipe/OutputStream$OutputType;

.field private final dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

.field private final externalOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

.field private final format:I

.field private final groupNumber:Ljava/lang/Integer;

.field private final id:I

.field private final mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

.field private final sensorPixelModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;",
            ">;"
        }
    .end annotation
.end field

.field private final size:Landroid/util/Size;

.field private final streamBuilder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraStream;",
            ">;"
        }
    .end annotation
.end field

.field private final streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

.field private final streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

.field private final timestampBase:Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;


# direct methods
.method private constructor <init>(ILandroid/util/Size;ILjava/lang/String;Ljava/lang/Integer;Landroid/hardware/camera2/params/OutputConfiguration;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Size;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            "Landroidx/camera/camera2/pipe/OutputStream$OutputType;",
            "Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;",
            "Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;",
            "Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;",
            "Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;",
            "Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->id:I

    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->size:Landroid/util/Size;

    iput p3, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->format:I

    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->camera:Ljava/lang/String;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->groupNumber:Ljava/lang/Integer;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->externalOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

    iput-object p7, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->deferredOutputType:Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    iput-object p8, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    iput-object p9, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->timestampBase:Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    iput-object p10, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    iput-object p11, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    iput-object p12, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    iput-object p13, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->sensorPixelModes:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamBuilder:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/util/Size;ILjava/lang/String;Ljava/lang/Integer;Landroid/hardware/camera2/params/OutputConfiguration;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;Ljh2;)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p13}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;-><init>(ILandroid/util/Size;ILjava/lang/String;Ljava/lang/Integer;Landroid/hardware/camera2/params/OutputConfiguration;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getCamera-Dz_R5H8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->camera:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeferrable()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->deferredOutputType:Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getDeferredOutputType()Landroidx/camera/camera2/pipe/OutputStream$OutputType;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->deferredOutputType:Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    return-object p0
.end method

.method public final getDynamicRangeProfile-OoVcG5w()Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    return-object p0
.end method

.method public final getExternalOutputConfig()Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->externalOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

    return-object p0
.end method

.method public final getFormat-8FPWQzE()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->format:I

    return p0
.end method

.method public final getGroupNumber()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->groupNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getId-hoCEiqs()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->id:I

    return p0
.end method

.method public final getMirrorMode-dO1_9xk()Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    return-object p0
.end method

.method public final getSensorPixelModes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->sensorPixelModes:Ljava/util/List;

    return-object p0
.end method

.method public final getSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->size:Landroid/util/Size;

    return-object p0
.end method

.method public final getStreamBuilder$camera_camera2_pipe()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraStream;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamBuilder:Ljava/util/List;

    return-object p0
.end method

.method public final getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    return-object p0
.end method

.method public final getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    return-object p0
.end method

.method public final getStreams()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraStream;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamBuilder:Ljava/util/List;

    return-object p0
.end method

.method public final getSurfaceSharing()Z
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamBuilder:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->timestampBase:Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->id:I

    invoke-static {p0}, Landroidx/camera/camera2/pipe/graph/OutputConfigId;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
