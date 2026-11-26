.class public final Landroidx/camera/camera2/adapter/CaptureResultAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraCaptureResult;
.implements Landroidx/camera/camera2/pipe/UnsafeWrapper;


# instance fields
.field private final frameNumber:J

.field private final requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

.field private final result:Landroidx/camera/camera2/pipe/FrameInfo;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    iput-wide p2, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->frameNumber:J

    iput-object p4, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;Ljh2;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/adapter/CaptureResultAdapter;-><init>(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    return-void
.end method


# virtual methods
.method public getAeMode()Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CaptureResultAdapterKt;->access$getAeMode(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    move-result-object p0

    return-object p0
.end method

.method public getAeState()Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CaptureResultAdapterKt;->access$getAeState(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    move-result-object p0

    return-object p0
.end method

.method public getAfMode()Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CaptureResultAdapterKt;->access$getAfMode(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    move-result-object p0

    return-object p0
.end method

.method public getAfState()Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CaptureResultAdapterKt;->access$getAfState(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    move-result-object p0

    return-object p0
.end method

.method public getAwbMode()Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CaptureResultAdapterKt;->access$getAwbMode(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;

    move-result-object p0

    return-object p0
.end method

.method public getAwbState()Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CaptureResultAdapterKt;->access$getAwbState(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    move-result-object p0

    return-object p0
.end method

.method public getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 2

    const-class v0, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    return-object v0

    :cond_0
    const-string v0, "Failed to unwrap "

    const-string v1, " as TotalCaptureResult"

    invoke-static {p0, v0, v1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFlashState()Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CaptureResultAdapterKt;->access$getFlashState(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    move-result-object p0

    return-object p0
.end method

.method public final getResult$camera_camera2()Landroidx/camera/camera2/pipe/FrameInfo;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    return-object p0
.end method

.method public getTagBundle()Landroidx/camera/core/impl/TagBundle;
    .locals 2

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    invoke-static {}, Landroidx/camera/camera2/impl/TagsKt;->getCAMERAX_TAG_BUNDLE()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v0

    invoke-static {}, Landroidx/camera/core/impl/TagBundle;->emptyBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroidx/camera/camera2/pipe/Metadata;->getOrDefault(Landroidx/camera/camera2/pipe/Metadata$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/TagBundle;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CaptureResultAdapterKt;->access$getTimestamp(Landroidx/camera/camera2/pipe/FrameMetadata;)J

    move-result-wide v0

    return-wide v0
.end method

.method public populateExifData(Landroidx/camera/core/impl/utils/ExifData$Builder;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroidx/camera/core/impl/CameraCaptureResult;->populateExifData(Landroidx/camera/core/impl/utils/ExifData$Builder;)V

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/camera/camera2/adapter/CaptureResultAdapterKt;->access$populateExifData(Landroidx/camera/camera2/pipe/FrameMetadata;Landroidx/camera/core/impl/utils/ExifData$Builder;)V

    return-void
.end method

.method public unwrapAs(Lne4;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-static {p1, v0}, Lvh;->g(Lne4;Ljava/lang/Class;)Z

    move-result v0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
