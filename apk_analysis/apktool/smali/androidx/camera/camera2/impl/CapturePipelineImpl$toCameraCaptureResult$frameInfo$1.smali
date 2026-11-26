.class public final Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/FrameInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/CapturePipelineImpl;->toCameraCaptureResult(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final camera:Ljava/lang/String;

.field private final frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

.field private final frameNumber:J

.field private final metadata:Landroidx/camera/camera2/pipe/FrameMetadata;

.field private final requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/FrameMetadata;Landroidx/camera/camera2/impl/CapturePipelineImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;->metadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/FrameMetadata;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;->camera:Ljava/lang/String;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/FrameMetadata;->getFrameNumber-Ugla2oM()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;->frameNumber:J

    invoke-static {p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$getEmptyRequestMetadata$p(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    return-void
.end method


# virtual methods
.method public get-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/FrameMetadata;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    return-object p0
.end method

.method public getCamera-Dz_R5H8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;->camera:Ljava/lang/String;

    return-object p0
.end method

.method public getFrameNumber-Ugla2oM()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;->frameNumber:J

    return-wide v0
.end method

.method public getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;->metadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    return-object p0
.end method

.method public getRequestMetadata()Landroidx/camera/camera2/pipe/RequestMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    return-object p0
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
