.class public final Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/RequestMetadata;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/CapturePipelineImpl;-><init>(Landroidx/camera/camera2/adapter/CaptureConfigAdapter;Landroidx/camera/camera2/impl/FlashControl;Landroidx/camera/camera2/impl/TorchControl;Landroidx/camera/camera2/impl/VideoUsageControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;Landroidx/camera/camera2/impl/CameraProperties;Lws6;Landroidx/camera/camera2/config/UseCaseGraphContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final repeating:Z

.field private final request:Landroidx/camera/camera2/pipe/Request;

.field private final requestNumber:J

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final template:I


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/RequestTemplate;->constructor-impl(I)I

    move-result v0

    iput v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->template:I

    sget-object v0, Lmx2;->b:Lmx2;

    iput-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->streams:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->repeating:Z

    new-instance v1, Landroidx/camera/camera2/pipe/Request;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    sget-object v2, Lkx2;->b:Lkx2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Landroidx/camera/camera2/pipe/Request;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Landroidx/camera/camera2/pipe/RequestTemplate;Landroidx/camera/camera2/pipe/InputRequest;ILjh2;)V

    iput-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->request:Landroidx/camera/camera2/pipe/Request;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/RequestNumber;->constructor-impl(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->requestNumber:J

    return-void
.end method


# virtual methods
.method public get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public get(Landroidx/camera/camera2/pipe/Metadata$Key;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOrDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p2
.end method

.method public getOrDefault(Landroidx/camera/camera2/pipe/Metadata$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p2
.end method

.method public getRepeating()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->repeating:Z

    return p0
.end method

.method public getRequest()Landroidx/camera/camera2/pipe/Request;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->request:Landroidx/camera/camera2/pipe/Request;

    return-object p0
.end method

.method public getRequestNumber-my6kx4g()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->requestNumber:J

    return-wide v0
.end method

.method public getStreams()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->streams:Ljava/util/Map;

    return-object p0
.end method

.method public getTemplate-fGx8uWA()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->template:I

    return p0
.end method

.method public unwrapAs(Lne4;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method
