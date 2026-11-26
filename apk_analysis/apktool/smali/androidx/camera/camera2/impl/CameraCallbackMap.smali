.class public final Landroidx/camera/camera2/impl/CameraCallbackMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/Request$Listener;


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/CameraCallbackMap$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/impl/CameraCallbackMap$Companion;


# instance fields
.field private final callbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/CameraCaptureCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private volatile callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/CameraCaptureCallback;",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final rejectOperationCameraCaptureSession$delegate:Lcl4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/impl/CameraCallbackMap$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/impl/CameraCallbackMap$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/impl/CameraCallbackMap;->Companion:Landroidx/camera/camera2/impl/CameraCallbackMap$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbackMap:Ljava/util/Map;

    new-instance v0, Le01;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le01;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->rejectOperationCameraCaptureSession$delegate:Lcl4;

    sget-object v0, Lmx2;->b:Lmx2;

    iput-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onStarted_uGKBvU4$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method public static synthetic b(Landroidx/camera/core/impl/CameraCaptureCallback;I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onAborted$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;I)V

    return-void
.end method

.method public static synthetic c(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onCaptureProgress$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public static synthetic d(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/camera2/adapter/CaptureResultAdapter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onComplete_CcXjc1I$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/camera2/adapter/CaptureResultAdapter;)V

    return-void
.end method

.method public static synthetic e(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onFailed_CcXjc1I$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method public static synthetic f(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/core/impl/CameraCaptureFailure;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onFailed_CcXjc1I$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/core/impl/CameraCaptureFailure;)V

    return-void
.end method

.method public static synthetic g(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onRequestSequenceAborted$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method private final getCameraCaptureSession(Landroidx/camera/camera2/pipe/RequestMetadata;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 2

    const-class v0, Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-static {}, Lqz0;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraExtensionSession;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getRejectOperationCameraCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private final getCaptureConfigId(Landroidx/camera/camera2/pipe/RequestMetadata;)I
    .locals 1

    invoke-static {}, Landroidx/camera/camera2/impl/TagsKt;->getCAMERAX_TAG_BUNDLE()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/Metadata;->get(Landroidx/camera/camera2/pipe/Metadata$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/TagBundle;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const-string v0, "CAPTURE_CONFIG_ID_KEY"

    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/TagBundle;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    move-object p1, p0

    check-cast p1, Ljava/lang/Integer;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private final getRejectOperationCameraCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->rejectOperationCameraCaptureSession$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method public static synthetic h(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onReadoutStarted_mP9r_9w$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method public static synthetic i(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onCaptureProgress$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;I)V

    return-void
.end method

.method public static synthetic j()Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;
    .locals 1

    invoke-static {}, Landroidx/camera/camera2/impl/CameraCallbackMap;->rejectOperationCameraCaptureSession_delegate$lambda$0()Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic k(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onRequestSequenceCompleted_RuT0dZU$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;J)V

    return-void
.end method

.method public static synthetic l(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onComplete_CcXjc1I$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public static synthetic m(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onPartialCaptureResult_CcXjc1I$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public static synthetic n(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onRequestSequenceAborted$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public static synthetic o(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onBufferLost_iiEMlm4$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    return-void
.end method

.method private static final onAborted$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureCancelled(I)V

    return-void
.end method

.method private static final onBufferLost_iiEMlm4$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 6

    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Landroidx/camera/camera2/compat/Api24Compat;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    return-void
.end method

.method private static final onCaptureProgress$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method private static final onCaptureProgress$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;I)V
    .locals 0

    invoke-direct {p1, p2}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCaptureConfigId(Landroidx/camera/camera2/pipe/RequestMetadata;)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureProcessProgressed(II)V

    return-void
.end method

.method private static final onComplete_CcXjc1I$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method private static final onComplete_CcXjc1I$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/camera2/adapter/CaptureResultAdapter;)V
    .locals 0

    invoke-direct {p1, p2}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCaptureConfigId(Landroidx/camera/camera2/pipe/RequestMetadata;)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureCompleted(ILandroidx/camera/core/impl/CameraCaptureResult;)V

    return-void
.end method

.method private static final onFailed_CcXjc1I$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method private static final onFailed_CcXjc1I$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/core/impl/CameraCaptureFailure;)V
    .locals 0

    invoke-direct {p1, p2}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCaptureConfigId(Landroidx/camera/camera2/pipe/RequestMetadata;)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureFailed(ILandroidx/camera/core/impl/CameraCaptureFailure;)V

    return-void
.end method

.method private static final onPartialCaptureResult_CcXjc1I$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method private static final onReadoutStarted_mP9r_9w$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 7

    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Landroidx/camera/camera2/compat/Api34Compat;->onReadoutStarted(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method private static final onRequestSequenceAborted$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    return-void
.end method

.method private static final onRequestSequenceAborted$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    invoke-direct {p1, p2}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCaptureConfigId(Landroidx/camera/camera2/pipe/RequestMetadata;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureCancelled(I)V

    return-void
.end method

.method private static final onRequestSequenceCompleted_RuT0dZU$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;J)V
    .locals 1

    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    return-void
.end method

.method private static final onStarted_uGKBvU4$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 7

    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method private static final onStarted_uGKBvU4$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    invoke-direct {p1, p2}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCaptureConfigId(Landroidx/camera/camera2/pipe/RequestMetadata;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureStarted(I)V

    return-void
.end method

.method public static synthetic p(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onStarted_uGKBvU4$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method private static final rejectOperationCameraCaptureSession_delegate$lambda$0()Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final addCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbackMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbackMap:Ljava/util/Map;

    invoke-static {p1}, Ln05;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was already registered!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onAborted(Landroidx/camera/camera2/pipe/Request;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Request;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Landroidx/camera/camera2/impl/TagsKt;->getCAMERAX_TAG_BUNDLE()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroidx/camera/core/impl/TagBundle;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Landroidx/camera/core/impl/TagBundle;

    goto :goto_1

    :cond_0
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_1

    const-string v3, "CAPTURE_CONFIG_ID_KEY"

    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/TagBundle;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_1
    move-object v2, v4

    :goto_2
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, -0x1

    :goto_3
    new-instance v3, Lf01;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lf01;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onBufferLost-iiEMlm4(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/concurrent/Executor;

    instance-of v1, v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    if-eqz v1, :cond_0

    const-class v1, Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/hardware/camera2/CameraCaptureSession;

    const-class v1, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/hardware/camera2/CaptureRequest;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getStreams()Ljava/util/Map;

    move-result-object v1

    invoke-static {p4}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/view/Surface;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    new-instance v2, Lsz0;

    move-object v3, v0

    check-cast v3, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    move-wide v7, p2

    invoke-direct/range {v2 .. v8}, Lsz0;-><init>(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    invoke-interface {p5, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCaptureProgress(Landroidx/camera/camera2/pipe/RequestMetadata;I)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    instance-of v3, v2, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    if-eqz v3, :cond_1

    const-class v3, Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v3}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    invoke-interface {p1, v3}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCaptureSession;

    const-class v4, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v4}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v4

    invoke-interface {p1, v4}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest;

    const-class v5, Landroid/hardware/camera2/CaptureResult;

    invoke-static {v5}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v5

    invoke-interface {p1, v5}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CaptureResult;

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    new-instance v6, La01;

    check-cast v2, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-direct {v6, v2, v3, v4, v5}, La01;-><init>(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    invoke-interface {v1, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v3, Lb01;

    invoke-direct {v3, v2, p0, p1, p2}, Lb01;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/concurrent/Executor;

    instance-of v0, v7, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCameraCaptureSession(Landroidx/camera/camera2/pipe/RequestMetadata;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    const-class v2, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-interface {p1, v2}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    const-class v3, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {v3}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    invoke-interface {p4, v3}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    new-instance v5, Lwz0;

    check-cast v7, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-direct {v5, v7, v0, v2, v3}, Lwz0;-><init>(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-interface {v8, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;

    const/4 v5, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/adapter/CaptureResultAdapter;-><init>(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;Ljh2;)V

    new-instance v2, Lxz0;

    invoke-direct {v2, v7, p0, p1, v0}, Lxz0;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/camera2/adapter/CaptureResultAdapter;)V

    invoke-interface {v8, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/Executor;

    instance-of v1, v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCameraCaptureSession(Landroidx/camera/camera2/pipe/RequestMetadata;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v4

    const-class v1, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/hardware/camera2/CaptureRequest;

    const-class v1, Landroid/hardware/camera2/CaptureFailure;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-interface {p4, v1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/hardware/camera2/CaptureFailure;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    new-instance v2, Lc01;

    move-object v3, v0

    check-cast v3, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lc01;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/camera/core/impl/CameraCaptureFailure;

    sget-object v2, Landroidx/camera/core/impl/CameraCaptureFailure$Reason;->ERROR:Landroidx/camera/core/impl/CameraCaptureFailure$Reason;

    invoke-direct {v1, v2}, Landroidx/camera/core/impl/CameraCaptureFailure;-><init>(Landroidx/camera/core/impl/CameraCaptureFailure$Reason;)V

    new-instance v2, Ld01;

    invoke-direct {v2, v0, p0, p1, v1}, Ld01;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/core/impl/CameraCaptureFailure;)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    instance-of v0, p3, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    if-eqz v0, :cond_0

    const-class v0, Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCaptureSession;

    const-class v1, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    const-class v2, Landroid/hardware/camera2/CaptureResult;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-interface {p4, v2}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    new-instance v3, Lg01;

    check-cast p3, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-direct {v3, p3, v0, v1, v2}, Lg01;-><init>(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    invoke-interface {p2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onReadoutStarted-mP9r-9w(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    instance-of v2, v1, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    if-eqz v2, :cond_1

    const-class v2, Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-interface {p1, v2}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/hardware/camera2/CameraCaptureSession;

    const-class v2, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-interface {p1, v2}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/hardware/camera2/CaptureRequest;

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    new-instance v3, Lh01;

    move-object v4, v1

    check-cast v4, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    move-wide v9, p2

    move-wide v7, p4

    invoke-direct/range {v3 .. v10}, Lh01;-><init>(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onRequestSequenceAborted(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    instance-of v3, v2, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-class v3, Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v3}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    invoke-interface {p1, v3}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCaptureSession;

    const-class v5, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v5}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v5

    invoke-interface {p1, v5}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CaptureRequest;

    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    new-instance v5, Lyz0;

    check-cast v2, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-direct {v5, v4, v2, v3}, Lyz0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v3, Lzz0;

    invoke-direct {v3, v2, p0, p1, v4}, Lzz0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onRequestSequenceCompleted-RuT0dZU(Landroidx/camera/camera2/pipe/RequestMetadata;J)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    instance-of v3, v2, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCameraCaptureSession(Landroidx/camera/camera2/pipe/RequestMetadata;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    const-class v4, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v4}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v4

    invoke-interface {p1, v4}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest;

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    new-instance v4, Ltz0;

    check-cast v2, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-direct {v4, v2, v3, p2, p3}, Ltz0;-><init>(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;J)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStarted-uGKBvU4(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    instance-of v3, v2, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    if-eqz v3, :cond_1

    invoke-direct/range {p0 .. p1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCameraCaptureSession(Landroidx/camera/camera2/pipe/RequestMetadata;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v6

    const-class v3, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v3}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    invoke-interface {p1, v3}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/hardware/camera2/CaptureRequest;

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    new-instance v4, Luz0;

    move-object v5, v2

    check-cast v5, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    move-wide v10, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v4 .. v11}, Luz0;-><init>(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v3, Lvz0;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p0, p1, v4}, Lvz0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final removeCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbackMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbackMap:Ljava/util/Map;

    invoke-static {p1}, Ln05;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
