.class final Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/impl/CapturePipelineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MainCaptureParams"
.end annotation


# instance fields
.field private final configs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final requestTemplate:I

.field private final sessionConfigOptions:Landroidx/camera/core/impl/Config;


# direct methods
.method private constructor <init>(Ljava/util/List;ILandroidx/camera/core/impl/Config;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;I",
            "Landroidx/camera/core/impl/Config;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->configs:Ljava/util/List;

    iput p2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->requestTemplate:I

    iput-object p3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->sessionConfigOptions:Landroidx/camera/core/impl/Config;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILandroidx/camera/core/impl/Config;Ljh2;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;-><init>(Ljava/util/List;ILandroidx/camera/core/impl/Config;)V

    return-void
.end method

.method public static synthetic copy-9al78dA$default(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;Ljava/util/List;ILandroidx/camera/core/impl/Config;ILjava/lang/Object;)Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->configs:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->requestTemplate:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->sessionConfigOptions:Landroidx/camera/core/impl/Config;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->copy-9al78dA(Ljava/util/List;ILandroidx/camera/core/impl/Config;)Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->configs:Ljava/util/List;

    return-object p0
.end method

.method public final component2-fGx8uWA()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->requestTemplate:I

    return p0
.end method

.method public final component3()Landroidx/camera/core/impl/Config;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->sessionConfigOptions:Landroidx/camera/core/impl/Config;

    return-object p0
.end method

.method public final copy-9al78dA(Ljava/util/List;ILandroidx/camera/core/impl/Config;)Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;I",
            "Landroidx/camera/core/impl/Config;",
            ")",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;-><init>(Ljava/util/List;ILandroidx/camera/core/impl/Config;Ljh2;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    iget-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->configs:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->configs:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->requestTemplate:I

    iget v3, p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->requestTemplate:I

    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/RequestTemplate;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->sessionConfigOptions:Landroidx/camera/core/impl/Config;

    iget-object p1, p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->sessionConfigOptions:Landroidx/camera/core/impl/Config;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getConfigs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->configs:Ljava/util/List;

    return-object p0
.end method

.method public final getRequestTemplate-fGx8uWA()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->requestTemplate:I

    return p0
.end method

.method public final getSessionConfigOptions()Landroidx/camera/core/impl/Config;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->sessionConfigOptions:Landroidx/camera/core/impl/Config;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->configs:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->requestTemplate:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/RequestTemplate;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->sessionConfigOptions:Landroidx/camera/core/impl/Config;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MainCaptureParams(configs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->configs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestTemplate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->requestTemplate:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/RequestTemplate;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionConfigOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->sessionConfigOptions:Landroidx/camera/core/impl/Config;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
