.class public final Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/camera2/pipe/CaptureSequenceProcessor<",
        "Landroid/hardware/camera2/CaptureRequest;",
        "Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor$Companion;

.field private static final WAIT_FOR_REPEATING_TIMEOUT_MS:J = 0x7d0L


# instance fields
.field private final awaitRepeatingRequestOnDisconnect:Z

.field private final debugId:I

.field private disconnected:Z

.field private final imageWriter:Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

.field private lastSingleRepeatingRequestSequence:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

.field private final lock:Ljava/lang/Object;

.field private final outputToSurfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/OutputId;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

.field private final streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

.field private final streamToSurfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final strictMode:Landroidx/camera/camera2/pipe/StrictMode;

.field private final template:I

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->Companion:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroidx/camera/camera2/pipe/core/Threads;ILjava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            "I",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            "+",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/OutputId;",
            "+",
            "Landroid/view/Surface;",
            ">;",
            "Landroidx/camera/camera2/pipe/StreamGraph;",
            "Landroidx/camera/camera2/pipe/StrictMode;",
            "Z)V"
        }
    .end annotation

    const-string v1, "CXCP"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    iput p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->template:I

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamToSurfaceMap:Ljava/util/Map;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->outputToSurfaceMap:Ljava/util/Map;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    move/from16 p3, p8

    iput-boolean p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->awaitRepeatingRequestOnDisconnect:Z

    invoke-static {}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->getCaptureSequenceProcessorDebugIds()Llt;

    move-result-object p3

    invoke-virtual {p3}, Llt;->b()I

    move-result p3

    iput p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->debugId:I

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lock:Ljava/lang/Object;

    invoke-interface {p6}, Landroidx/camera/camera2/pipe/StreamGraph;->getInputs()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_2

    invoke-interface {p6}, Landroidx/camera/camera2/pipe/StreamGraph;->getInputs()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/camera2/pipe/InputStream;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getInputSurface()Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    sget-object v2, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->Companion:Landroidx/camera/camera2/pipe/media/AndroidImageWriter$Companion;

    invoke-interface {p3}, Landroidx/camera/camera2/pipe/InputStream;->getId-m1bwn9M()I

    move-result v4

    invoke-interface {p3}, Landroidx/camera/camera2/pipe/InputStream;->getMaxImages()I

    move-result v5

    invoke-interface {p3}, Landroidx/camera/camera2/pipe/InputStream;->getFormat-8FPWQzE()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamFormat;->box-impl(I)Landroidx/camera/camera2/pipe/StreamFormat;

    move-result-object v6

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroidx/camera/camera2/pipe/media/AndroidImageWriter$Companion;->create-U86x6Zg(Landroid/view/Surface;IILandroidx/camera/camera2/pipe/StreamFormat;Landroid/os/Handler;)Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to create ImageWriter for session "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getSession$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "! Reprocessing will not be supported!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-eqz p4, :cond_2

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Created ImageWriter "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for session "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getSession$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string p0, "inputSurface is required to create instance of imageWriter."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    throw p4

    :cond_2
    :goto_1
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->imageWriter:Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroidx/camera/camera2/pipe/core/Threads;ILjava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;ZILjh2;)V
    .locals 11

    move/from16 v0, p9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v9, v0

    goto :goto_0

    :cond_0
    move/from16 v9, p8

    :goto_0
    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 200
    invoke-direct/range {v1 .. v10}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroidx/camera/camera2/pipe/core/Threads;ILjava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;ZLjh2;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroidx/camera/camera2/pipe/core/Threads;ILjava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;ZLjh2;)V
    .locals 0

    .line 199
    invoke-direct/range {p0 .. p8}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroidx/camera/camera2/pipe/core/Threads;ILjava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;Z)V

    return-void
.end method

.method public static final synthetic access$awaitRepeatingRequestStarted(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->awaitRepeatingRequestStarted(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)V

    return-void
.end method

.method public static final synthetic access$getAwaitRepeatingRequestOnDisconnect$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->awaitRepeatingRequestOnDisconnect:Z

    return p0
.end method

.method public static final synthetic access$getDisconnected$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->disconnected:Z

    return p0
.end method

.method public static final synthetic access$getImageWriter$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->imageWriter:Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

    return-object p0
.end method

.method public static final synthetic access$getLastSingleRepeatingRequestSequence$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lastSingleRepeatingRequestSequence:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getSession$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    return-object p0
.end method

.method public static final synthetic access$getStreamGraph$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/StreamGraph;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    return-object p0
.end method

.method public static final synthetic access$setDisconnected$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->disconnected:Z

    return-void
.end method

.method private final awaitRepeatingRequestStarted(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)V
    .locals 6

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    const-string v2, "CXCP"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Waiting for the last repeating request sequence: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    new-instance v3, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor$awaitRepeatingRequestStarted$2;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor$awaitRepeatingRequestStarted$2;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;Le02;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v4, v5, v3}, Landroidx/camera/camera2/pipe/core/Threads;->runBlockingCheckedOrNull(JLnl3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj59;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "#close: awaitStarted on last repeating request timed out, lastSingleRepeatingRequestSequence = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private final buildCaptureRequestBuilder-0UCm73U(Landroidx/camera/camera2/pipe/Request;I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Request;->getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Request;->getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/InputRequest;->getFrameInfo()Landroidx/camera/camera2/pipe/FrameInfo;

    move-result-object v0

    const-class v2, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object p0

    invoke-interface {p0, v0}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Request;->getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/InputRequest;->getFrameInfo()Landroidx/camera/camera2/pipe/FrameInfo;

    move-result-object p0

    const-string p1, " as TotalCaptureResult"

    const-string p2, "Failed to unwrap FrameInfo "

    invoke-static {p0, p2, p1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object p0

    invoke-interface {p0, p2}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->createCaptureRequest-2PPcXtw(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_4

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Request;->getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;

    move-result-object p0

    const/16 v0, 0x21

    const-string v2, "CXCP"

    if-eqz p0, :cond_2

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Failed to create a ReprocessingCaptureRequest.Builder from "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Request;->getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/InputRequest;->getFrameInfo()Landroidx/camera/camera2/pipe/FrameInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed to create a CaptureRequest.Builder from "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroidx/camera/camera2/pipe/RequestTemplate;->toString-impl(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-object v1

    :cond_4
    return-object p0
.end method

.method private final buildSurfaceMaps(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Request;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/view/Surface;",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/view/Surface;",
            "Landroidx/camera/camera2/pipe/OutputId;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            "Landroid/view/Surface;",
            ">;)Z"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/Request;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Request;->getStreams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v5

    invoke-static {v5}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v6

    invoke-interface {p4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamToSurfaceMap:Ljava/util/Map;

    invoke-static {v5}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Surface;

    if-eqz v6, :cond_0

    invoke-static {v5}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v4

    invoke-interface {p2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v4

    invoke-interface {p4, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    invoke-interface {v4, v5}, Landroidx/camera/camera2/pipe/StreamGraph;->get-aKI5c8E(I)Landroidx/camera/camera2/pipe/CameraStream;

    move-result-object v4

    const-string v5, "Required value was null."

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/OutputStream;

    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->outputToSurfaceMap:Ljava/util/Map;

    invoke-interface {v6}, Landroidx/camera/camera2/pipe/OutputStream;->getId-4LaLFng()I

    move-result v8

    invoke-static {v8}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    check-cast v7, Landroid/view/Surface;

    invoke-interface {v6}, Landroidx/camera/camera2/pipe/OutputStream;->getId-4LaLFng()I

    move-result v6

    invoke-static {v6}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object v6

    invoke-interface {p3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static {v5}, Lah;->f(Ljava/lang/String;)V

    return v1

    :cond_4
    invoke-static {v5}, Lah;->f(Ljava/lang/String;)V

    return v1

    :cond_5
    if-nez v4, :cond_7

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "  Failed to bind any surfaces for "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x21

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CXCP"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v1

    :cond_7
    if-eqz v4, :cond_8

    goto/16 :goto_0

    :cond_8
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v1

    :cond_9
    return v2

    :cond_a
    const-string p0, "build(...) should never be called with an empty request list!"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v1
.end method

.method private final validateRequestList(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Request;",
            ">;",
            "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;",
            ")Z"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    instance-of p2, p2, Landroidx/camera/camera2/pipe/compat/CameraConstrainedHighSpeedCaptureSessionWrapper;

    const/4 v0, 0x1

    if-eqz p2, :cond_16

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move-object v2, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/Request;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/Request;->getStreams()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v4, v1

    goto/16 :goto_4

    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    invoke-interface {v5}, Landroidx/camera/camera2/pipe/StreamGraph;->getOutputs()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_3

    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-interface {v6}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v7

    sget-object v8, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;->getPREVIEW-vrKr8v8()J

    move-result-wide v8

    if-nez v7, :cond_5

    move v7, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->unbox-impl()J

    move-result-wide v10

    invoke-static {v10, v11, v8, v9}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->equals-impl0(JJ)Z

    move-result v7

    :goto_2
    if-nez v7, :cond_7

    invoke-interface {v6}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    move-result-object v7

    sget-object v8, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;->getDEFAULT-4VYZOf8()J

    move-result-wide v8

    if-nez v7, :cond_6

    move v7, v1

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->unbox-impl()J

    move-result-wide v10

    invoke-static {v10, v11, v8, v9}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->equals-impl0(JJ)Z

    move-result v7

    :goto_3
    if-nez v7, :cond_7

    invoke-interface {v6}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    move-result-object v6

    if-nez v6, :cond_4

    :cond_7
    move v4, v0

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v6, 0x2e

    const-string v7, "CXCP"

    if-eqz p2, :cond_8

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    sget-object v8, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v8

    if-eqz v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "The previous high speed request and the current high speed request must both have a preview stream use case or hint. Previous request contains preview stream use case or hint: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ". Current request contains preview stream use case or hint: "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/Request;->getStreams()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    instance-of v3, p2, Ljava/util/Collection;

    if-eqz v3, :cond_a

    move-object v3, p2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    move p2, v1

    goto/16 :goto_8

    :cond_a
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    invoke-interface {v3}, Landroidx/camera/camera2/pipe/StreamGraph;->getOutputs()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_c

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_5

    :cond_c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-interface {v4}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v8

    sget-object v9, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;

    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;->getVIDEO_RECORD-vrKr8v8()J

    move-result-wide v9

    if-nez v8, :cond_e

    move v8, v1

    goto :goto_6

    :cond_e
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->unbox-impl()J

    move-result-wide v11

    invoke-static {v11, v12, v9, v10}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->equals-impl0(JJ)Z

    move-result v8

    :goto_6
    if-nez v8, :cond_10

    invoke-interface {v4}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    move-result-object v4

    sget-object v8, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;->getVIDEO_RECORD-4VYZOf8()J

    move-result-wide v8

    if-nez v4, :cond_f

    move v4, v1

    goto :goto_7

    :cond_f
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->unbox-impl()J

    move-result-wide v10

    invoke-static {v10, v11, v8, v9}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->equals-impl0(JJ)Z

    move-result v4

    :goto_7
    if-eqz v4, :cond_d

    :cond_10
    move p2, v0

    :goto_8
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v2, :cond_11

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    sget-object v4, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "The previous high speed request and the current high speed request do not have the same video stream use case. Previous request contains video stream use case: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ". Current request contains video stream use case: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    invoke-interface {p2}, Landroidx/camera/camera2/pipe/StreamGraph;->getOutputs()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    instance-of v2, p2, Ljava/util/Collection;

    if-eqz v2, :cond_12

    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_9

    :cond_12
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/OutputStream;->isValidForHighSpeedOperatingMode()Z

    move-result v2

    if-nez v2, :cond_13

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_14

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "HIGH_SPEED CameraGraph must only contain Preview and/or Video streams. Configured outputs are "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getStreamGraph$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/StreamGraph;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/StreamGraph;->getOutputs()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return v1

    :cond_15
    :goto_9
    move-object v2, v3

    move-object p2, v5

    goto/16 :goto_0

    :cond_16
    return v0

    :cond_17
    const-string p0, "build(...) should never be called with an empty request list!"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public abortCaptures()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CXCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "#abortCaptures"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->abortCaptures()Z

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public bridge synthetic build(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;Ljava/util/List;)Landroidx/camera/camera2/pipe/CaptureSequence;
    .locals 0

    .line 818
    invoke-virtual/range {p0 .. p7}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->build(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;Ljava/util/List;)Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

    move-result-object p0

    return-object p0
.end method

.method public build(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;Ljava/util/List;)Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Request;",
            ">;",
            "Ljava/util/Map<",
            "*+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "*+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "*+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;)",
            "Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-direct {v0, v1, v5}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->validateRequestList(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)Z

    move-result v5

    const/16 v16, 0x0

    if-nez v5, :cond_0

    return-object v16

    :cond_0
    invoke-direct {v0, v1, v2, v3, v7}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->buildSurfaceMaps(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_1

    return-object v16

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/camera/camera2/pipe/Request;

    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "CXCP"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Building CaptureRequest for "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/Request;->getTemplate-ejQnlcg()Landroidx/camera/camera2/pipe/RequestTemplate;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/RequestTemplate;->unbox-impl()I

    move-result v1

    :goto_1
    move v8, v1

    goto :goto_2

    :cond_3
    iget v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->template:I

    goto :goto_1

    :goto_2
    invoke-direct {v0, v10, v8}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->buildCaptureRequestBuilder-0UCm73U(Landroidx/camera/camera2/pipe/Request;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    if-nez v1, :cond_4

    return-object v16

    :cond_4
    sget-object v5, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->getCamera2CaptureRequestTag()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->getCamera2CaptureRequestTag()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    :cond_5
    invoke-virtual {v1, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/Request;->getStreams()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    if-ge v11, v5, :cond_7

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/Request;->getStreams()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/Surface;

    if-eqz v13, :cond_6

    invoke-virtual {v1, v13}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    const/4 v12, 0x1

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    if-eqz v12, :cond_1b

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/Request;->getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;

    move-result-object v5

    if-eqz v5, :cond_f

    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->imageWriter:Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

    if-nez v5, :cond_9

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "CXCP"

    const-string v1, "Failed to queue request to ImageWriter - No ImageWriter available!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v16

    :cond_9
    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/Request;->getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/InputRequest;->getImage()Landroidx/camera/camera2/pipe/media/ImageWrapper;

    move-result-object v5

    iget-object v11, v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-boolean v12, v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->disconnected:Z

    if-eqz v12, :cond_b

    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "CXCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " disconnected. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " can\'t be queued to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getImageWriter$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_a
    :goto_4
    monitor-exit v11

    return-object v16

    :cond_b
    :try_start_1
    sget-object v12, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v11

    sget-object v11, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v12

    if-eqz v12, :cond_c

    const-string v12, "CXCP"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v9, "Queuing image "

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " for reprocessing to ImageWriter "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getImageWriter$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v9, v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->imageWriter:Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

    invoke-interface {v9, v5}, Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;->queueInputImage(Landroidx/camera/camera2/pipe/media/ImageWrapper;)Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "CXCP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to queue image "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for reprocessing to ImageWriter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getImageWriter$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-object v16

    :cond_e
    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/Request;->getParameters()Ljava/util/Map;

    move-result-object v5

    invoke-static {v1, v5}, Landroidx/camera/camera2/pipe/RequestsKt;->writeParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    move-object/from16 v5, p4

    goto :goto_6

    :goto_5
    monitor-exit v11

    throw v0

    :cond_f
    invoke-static {v1, v4}, Landroidx/camera/camera2/pipe/RequestsKt;->writeParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    move-object/from16 v5, p4

    invoke-static {v1, v5}, Landroidx/camera/camera2/pipe/RequestsKt;->writeParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/Request;->getParameters()Ljava/util/Map;

    move-result-object v9

    invoke-static {v1, v9}, Landroidx/camera/camera2/pipe/RequestsKt;->writeParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    invoke-static {v1, v6}, Landroidx/camera/camera2/pipe/RequestsKt;->writeParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    :goto_6
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->nextRequestNumber()J

    move-result-wide v11

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v9, v2

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    instance-of v13, v2, Landroidx/camera/camera2/pipe/compat/CameraConstrainedHighSpeedCaptureSessionWrapper;

    if-eqz v13, :cond_1a

    check-cast v2, Landroidx/camera/camera2/pipe/compat/CameraConstrainedHighSpeedCaptureSessionWrapper;

    invoke-interface {v2, v1}, Landroidx/camera/camera2/pipe/compat/CameraConstrainedHighSpeedCaptureSessionWrapper;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_10

    return-object v16

    :cond_10
    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/Request;->getStreams()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    instance-of v13, v2, Ljava/util/Collection;

    if-eqz v13, :cond_12

    move-object v13, v2

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_12

    :cond_11
    move-object v0, v1

    move-object/from16 v21, v3

    move-object/from16 v19, v9

    move-object v2, v14

    goto/16 :goto_e

    :cond_12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v13}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    iget-object v13, v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    invoke-interface {v13}, Landroidx/camera/camera2/pipe/StreamGraph;->getOutputs()Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/lang/Iterable;

    move-object/from16 v18, v2

    instance-of v2, v13, Ljava/util/Collection;

    if-eqz v2, :cond_14

    move-object v2, v13

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    move-object v0, v1

    move-object/from16 v21, v3

    move-object/from16 v19, v9

    move-object v2, v14

    goto/16 :goto_d

    :cond_14
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-interface {v13}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v19

    sget-object v20, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;

    move-object/from16 v22, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v20 .. v20}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;->getVIDEO_RECORD-vrKr8v8()J

    move-result-wide v2

    if-nez v19, :cond_15

    const/4 v2, 0x0

    goto :goto_9

    :cond_15
    invoke-virtual/range {v19 .. v19}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->unbox-impl()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->equals-impl0(JJ)Z

    move-result v2

    :goto_9
    if-nez v2, :cond_18

    invoke-interface {v13}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    move-result-object v2

    sget-object v3, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;->getVIDEO_RECORD-4VYZOf8()J

    move-result-wide v3

    if-nez v2, :cond_16

    const/4 v2, 0x0

    goto :goto_a

    :cond_16
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->unbox-impl()J

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->equals-impl0(JJ)Z

    move-result v2

    :goto_a
    if-eqz v2, :cond_17

    goto :goto_b

    :cond_17
    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v3, v21

    move-object/from16 v2, v22

    goto :goto_8

    :cond_18
    :goto_b
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_19

    new-instance v4, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;

    move v5, v2

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CaptureRequest;

    const/4 v13, 0x0

    move-object v0, v1

    move-object v1, v4

    move/from16 v18, v5

    move-object/from16 v19, v9

    move-object/from16 v20, v14

    move/from16 v9, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v14, v3

    move-object v3, v6

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v13}, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroid/hardware/camera2/CaptureRequest;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;IZLandroidx/camera/camera2/pipe/Request;JLjh2;)V

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v20

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v14, 0x1

    move-object v1, v0

    move-object v14, v2

    move/from16 v2, v18

    move-object/from16 v9, v19

    move-object/from16 v0, p0

    goto :goto_c

    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object v2, v9

    move-object/from16 v3, v21

    goto/16 :goto_0

    :goto_d
    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v1, v0

    move-object v14, v2

    move-object/from16 v2, v18

    move-object/from16 v9, v19

    move-object/from16 v3, v21

    move-object/from16 v0, p0

    goto/16 :goto_7

    :goto_e
    new-instance v1, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;

    move-object/from16 v14, p0

    move-object/from16 v20, v2

    iget-object v2, v14, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest;

    const/4 v13, 0x0

    move/from16 v9, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move v14, v3

    move-object v3, v4

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v13}, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroid/hardware/camera2/CaptureRequest;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;IZLandroidx/camera/camera2/pipe/Request;JLjh2;)V

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v0

    :goto_f
    move-object/from16 v2, v19

    move-object/from16 v3, v21

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v21, v3

    move-object/from16 v19, v9

    move-object v0, v14

    move-object v3, v1

    new-instance v1, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;

    const/4 v13, 0x0

    move/from16 v9, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v13}, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroid/hardware/camera2/CaptureRequest;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;IZLandroidx/camera/camera2/pipe/Request;JLjh2;)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1b
    const-string v0, "Check failed."

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v16

    :cond_1c
    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v14

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

    move-object/from16 v14, p0

    iget-object v1, v14, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    iget-object v9, v14, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    iget-object v10, v14, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    const/4 v11, 0x0

    move/from16 v2, p1

    move-object/from16 v6, p6

    move-object/from16 v5, p7

    move-object v3, v15

    move-object/from16 v7, v19

    move-object/from16 v4, v20

    move-object/from16 v8, v21

    invoke-direct/range {v0 .. v11}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;Ljava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;Ljh2;)V

    return-object v0
.end method

.method public final disconnect$camera_camera2_pipe()V
    .locals 2

    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#disconnect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getLock$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getDisconnected$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$setDisconnected$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;Z)V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getImageWriter$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljh;->d(Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getSession$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getInputSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    :cond_1
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getLastSingleRepeatingRequestSequence$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    :try_start_2
    monitor-exit v0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getAwaitRepeatingRequestOnDisconnect$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-static {p0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$awaitRepeatingRequestStarted(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)V

    :cond_3
    sget-object p0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_2
    :try_start_3
    monitor-exit v0

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public shutdown(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->disconnect$camera_camera2_pipe()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public stopRepeating()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CXCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "#stopRepeating"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->stopRepeating()Z

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public bridge synthetic submit(Landroidx/camera/camera2/pipe/CaptureSequence;)Ljava/lang/Integer;
    .locals 0

    .line 147
    check-cast p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->submit(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public submit(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->disconnected:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CXCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " disconnected. "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " won\'t be submitted"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getCaptureRequestList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    instance-of v1, v1, Landroidx/camera/camera2/pipe/compat/CameraConstrainedHighSpeedCaptureSessionWrapper;

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getRepeating()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->awaitRepeatingRequestOnDisconnect:Z

    if-eqz v1, :cond_2

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lastSingleRepeatingRequestSequence:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

    :cond_2
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getCaptureRequestList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    invoke-interface {p0, v1, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getCaptureRequestList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    invoke-interface {p0, v1, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getRepeating()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    if-eqz v1, :cond_5

    :try_start_2
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getCaptureRequestList()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getCaptureRequestList()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera2CaptureSequenceProcessor-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->debugId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
