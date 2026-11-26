.class public final Landroidx/camera/camera2/pipe/graph/Controller3A;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/camera/camera2/pipe/config/CameraGraphScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/graph/Controller3A$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/graph/Controller3A$Companion;

.field private static final aeConvergedStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final aeLockedStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final aePostPrecaptureStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final aePrecaptureAndAfCancelParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final aePrecaptureCancelParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final aeUnlockedStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final afConvergedStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final afLockedStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final afUnlockedStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final awbConvergedStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final awbLockedStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final awbPostPrecaptureStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final awbUnlockedStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final deferredResult3ASubmitFailed:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation
.end field

.field private static final parameterForAfTriggerCancel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final parameterForAfTriggerStart:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final parametersForAePrecapture:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final parametersForAePrecaptureAndAfTrigger:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final unlock3APostCaptureAfUnlockedCondition:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final unlock3APostCaptureLockAeAndCancelAfParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "+",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final unlock3APostCaptureLockAeParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final unlock3APostCaptureUnlockAeParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final graphListener3A:Landroidx/camera/camera2/pipe/graph/Listener3A;

.field private final graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

.field private final graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

.field private lastUpdate3AResult:Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation
.end field

.field private final metadata:Landroidx/camera/camera2/pipe/CameraMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Landroidx/camera/camera2/pipe/graph/Controller3A$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/graph/Controller3A$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->Companion:Landroidx/camera/camera2/pipe/graph/Controller3A$Companion;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Landroidx/camera/camera2/pipe/graph/Controller3A;->aeConvergedStateList:Ljava/util/List;

    filled-new-array {v2, v4}, [Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Landroidx/camera/camera2/pipe/graph/Controller3A;->awbConvergedStateList:Ljava/util/List;

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v2, v5, v3, v6}, [Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sput-object v7, Landroidx/camera/camera2/pipe/graph/Controller3A;->afConvergedStateList:Ljava/util/List;

    invoke-static {v4}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sput-object v7, Landroidx/camera/camera2/pipe/graph/Controller3A;->aeLockedStateList:Ljava/util/List;

    invoke-static {v4}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sput-object v7, Landroidx/camera/camera2/pipe/graph/Controller3A;->awbLockedStateList:Ljava/util/List;

    filled-new-array {v3, v6}, [Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    sput-object v6, Landroidx/camera/camera2/pipe/graph/Controller3A;->afLockedStateList:Ljava/util/List;

    filled-new-array {v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    sput-object v6, Landroidx/camera/camera2/pipe/graph/Controller3A;->aePostPrecaptureStateList:Ljava/util/List;

    filled-new-array {v2, v4}, [Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    sput-object v6, Landroidx/camera/camera2/pipe/graph/Controller3A;->awbPostPrecaptureStateList:Ljava/util/List;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v8, Landroidx/camera/camera2/pipe/graph/Controller3A;->parameterForAfTriggerStart:Ljava/util/Map;

    invoke-static {v6, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v8, Landroidx/camera/camera2/pipe/graph/Controller3A;->parameterForAfTriggerCancel:Ljava/util/Map;

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8, v7}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v9, Landroidx/camera/camera2/pipe/graph/Controller3A;->parametersForAePrecapture:Ljava/util/Map;

    new-instance v9, Lb36;

    invoke-direct {v9, v6, v7}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Lb36;

    invoke-direct {v10, v8, v7}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v9, v10}, [Lb36;

    move-result-object v9

    invoke-static {v9}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v9

    sput-object v9, Landroidx/camera/camera2/pipe/graph/Controller3A;->parametersForAePrecaptureAndAfTrigger:Ljava/util/Map;

    new-instance v9, Landroidx/camera/camera2/pipe/Result3A;

    sget-object v10, Landroidx/camera/camera2/pipe/Result3A$Status;->Companion:Landroidx/camera/camera2/pipe/Result3A$Status$Companion;

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/Result3A$Status$Companion;->getSUBMIT_FAILED-JvTi9ms()I

    move-result v10

    invoke-direct {v9, v10, v1, v0, v1}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/FrameMetadata;ILjh2;)V

    invoke-static {v9}, Lga1;->a(Ljava/lang/Object;)Lyp1;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->deferredResult3ASubmitFailed:Lxp1;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, v7, v2, v3}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->aeUnlockedStateList:Ljava/util/List;

    filled-new-array {v0, v4, v7, v2, v5}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->afUnlockedStateList:Ljava/util/List;

    filled-new-array {v0, v7, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->awbUnlockedStateList:Ljava/util/List;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v4, Landroidx/camera/camera2/pipe/graph/Controller3A;->unlock3APostCaptureLockAeParams:Ljava/util/Map;

    new-instance v4, Lb36;

    invoke-direct {v4, v6, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lb36;

    invoke-direct {v5, v0, v3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, v5}, [Lb36;

    move-result-object v3

    invoke-static {v3}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v3

    sput-object v3, Landroidx/camera/camera2/pipe/graph/Controller3A;->unlock3APostCaptureLockAeAndCancelAfParams:Ljava/util/Map;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->unlock3APostCaptureUnlockAeParams:Ljava/util/Map;

    invoke-static {v8, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->aePrecaptureCancelParams:Ljava/util/Map;

    new-instance v0, Lb36;

    invoke-direct {v0, v6, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lb36;

    invoke-direct {v3, v8, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v3}, [Lb36;

    move-result-object v0

    invoke-static {v0}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->aePrecaptureAndAfCancelParams:Ljava/util/Map;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerKt;->toConditionChecker(Ljava/util/Map;)Lnl3;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->unlock3APostCaptureAfUnlockedCondition:Lnl3;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/graph/GraphProcessor;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/graph/Listener3A;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphListener3A:Landroidx/camera/camera2/pipe/graph/Listener3A;

    return-void
.end method

.method public static synthetic a(ZZLandroidx/camera/camera2/pipe/FrameMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/graph/Controller3A;->createLock3AForCaptureExitConditions$lambda$0(ZZLandroidx/camera/camera2/pipe/FrameMetadata;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getLastUpdate3AResult$p(Landroidx/camera/camera2/pipe/graph/Controller3A;)Lmk2;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->lastUpdate3AResult:Lmk2;

    return-object p0
.end method

.method public static final synthetic access$getParameterForAfTriggerCancel$cp()Ljava/util/Map;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->parameterForAfTriggerCancel:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getParameterForAfTriggerStart$cp()Ljava/util/Map;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->parameterForAfTriggerStart:Ljava/util/Map;

    return-object v0
.end method

.method private final createConverged3AExitConditions(ZZZ)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    sget-object p0, Lmx2;->b:Lmx2;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p1, :cond_1

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->aeConvergedStateList:Ljava/util/List;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object p3, Landroidx/camera/camera2/pipe/graph/Controller3A;->awbConvergedStateList:Ljava/util/List;

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p2, :cond_3

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object p2, Landroidx/camera/camera2/pipe/graph/Controller3A;->afConvergedStateList:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p0
.end method

.method private final createListenerFor3AParams-0dPwJB0(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;)Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;
    .locals 6

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/AeMode;->unbox-impl()I

    move-result p1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/AfMode;->unbox-impl()I

    move-result p1

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/AwbMode;->unbox-impl()I

    move-result p1

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/FlashMode;->unbox-impl()I

    move-result p1

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :cond_3
    new-instance v0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;

    invoke-static {p0}, Ln05;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;-><init>(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Long;ILjh2;)V

    return-object v0
.end method

.method public static synthetic createListenerFor3AParams-0dPwJB0$default(Landroidx/camera/camera2/pipe/graph/Controller3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/graph/Controller3A;->createListenerFor3AParams-0dPwJB0(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;)Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;

    move-result-object p0

    return-object p0
.end method

.method private final createLock3AForCaptureExitConditions(ZZ)Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lnl3<",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance p0, Lh02;

    invoke-direct {p0, p2, p1}, Lh02;-><init>(ZZ)V

    return-object p0
.end method

.method private static final createLock3AForCaptureExitConditions$lambda$0(ZZLandroidx/camera/camera2/pipe/FrameMetadata;)Z
    .locals 6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, v0}, Landroidx/camera/camera2/pipe/FrameMetadata;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/AfMode;->constructor-impl(I)I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/AfMode;->isOn-impl(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1}, Landroidx/camera/camera2/pipe/FrameMetadata;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->afLockedStateList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1, v0}, Landroidx/camera/camera2/pipe/graph/Controller3AKt;->access$isNullOrIn(Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroidx/camera/camera2/pipe/AfMode;->isContinuous-impl(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/camera/camera2/pipe/graph/Controller3A;->afConvergedStateList:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, v0}, Landroidx/camera/camera2/pipe/FrameMetadata;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lqn1;->M(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, v0}, Landroidx/camera/camera2/pipe/FrameMetadata;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/AeMode;->constructor-impl(I)I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/AeMode;->isOn-impl(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, v0}, Landroidx/camera/camera2/pipe/FrameMetadata;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Landroidx/camera/camera2/pipe/graph/Controller3A;->aePostPrecaptureStateList:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-static {v0, v3}, Landroidx/camera/camera2/pipe/graph/Controller3AKt;->access$isNullOrIn(Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, v3}, Landroidx/camera/camera2/pipe/FrameMetadata;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    :cond_6
    move v4, v2

    :goto_2
    invoke-static {v4}, Landroidx/camera/camera2/pipe/AwbMode;->constructor-impl(I)I

    move-result v4

    if-eqz p0, :cond_7

    if-nez v3, :cond_7

    move p0, v2

    goto :goto_3

    :cond_7
    if-eqz p0, :cond_8

    invoke-static {v4}, Landroidx/camera/camera2/pipe/AwbMode;->isOn-impl(I)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p0}, Landroidx/camera/camera2/pipe/FrameMetadata;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    sget-object v3, Landroidx/camera/camera2/pipe/graph/Controller3A;->awbPostPrecaptureStateList:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-static {p0, v3}, Landroidx/camera/camera2/pipe/graph/Controller3AKt;->access$isNullOrIn(Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result p0

    goto :goto_3

    :cond_8
    move p0, v1

    :goto_3
    sget-object v3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lock3AForCapture state "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroidx/camera/camera2/pipe/FrameMetadata;->getFrameNumber-Ugla2oM()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/camera/camera2/pipe/FrameNumber;->toString-impl(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": meetsAeCondition = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", meetsAfCondition = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", meetsAwbCondition = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "CXCP"

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    if-eqz p0, :cond_a

    return v1

    :cond_a
    return v2
.end method

.method private final createLocked3AExitConditions(ZZZ)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    sget-object p0, Lmx2;->b:Lmx2;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p1, :cond_1

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->aeLockedStateList:Ljava/util/List;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object p2, Landroidx/camera/camera2/pipe/graph/Controller3A;->afLockedStateList:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p3, :cond_3

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object p2, Landroidx/camera/camera2/pipe/graph/Controller3A;->awbLockedStateList:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p0
.end method

.method private final createUnLocked3AExitConditions(ZZZ)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    sget-object p0, Lmx2;->b:Lmx2;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p1, :cond_1

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->aeUnlockedStateList:Ljava/util/List;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object p2, Landroidx/camera/camera2/pipe/graph/Controller3A;->afUnlockedStateList:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p3, :cond_3

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object p2, Landroidx/camera/camera2/pipe/graph/Controller3A;->awbUnlockedStateList:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p0
.end method

.method public static synthetic lock3A-Qz1gx5w$default(Landroidx/camera/camera2/pipe/graph/Controller3A;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;ILjava/lang/Long;Ljava/lang/Long;Le02;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move/from16 v0, p14

    const-wide v1, 0xb2d05e00L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    move-object/from16 v5, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    move-object v6, v3

    goto :goto_1

    :cond_1
    move-object/from16 v6, p2

    :goto_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    move-object v7, v3

    goto :goto_2

    :cond_2
    move-object/from16 v7, p3

    :goto_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_3

    move-object v8, v3

    goto :goto_3

    :cond_3
    move-object/from16 v8, p4

    :goto_3
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_4

    move-object v9, v3

    goto :goto_4

    :cond_4
    move-object/from16 v9, p5

    :goto_4
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_5

    move-object v10, v3

    goto :goto_5

    :cond_5
    move-object/from16 v10, p6

    :goto_5
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_6

    move-object v11, v3

    goto :goto_6

    :cond_6
    move-object/from16 v11, p7

    :goto_6
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_7

    move-object v12, v3

    goto :goto_7

    :cond_7
    move-object/from16 v12, p8

    :goto_7
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_8

    move-object v13, v3

    goto :goto_8

    :cond_8
    move-object/from16 v13, p9

    :goto_8
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_9

    const/16 v2, 0x3c

    move v14, v2

    goto :goto_9

    :cond_9
    move/from16 v14, p10

    :goto_9
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_a

    move-object v15, v1

    goto :goto_a

    :cond_a
    move-object/from16 v15, p11

    :goto_a
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    move-object/from16 v16, v1

    :goto_b
    move-object/from16 v4, p0

    move-object/from16 v17, p13

    goto :goto_c

    :cond_b
    move-object/from16 v16, p12

    goto :goto_b

    :goto_c
    invoke-virtual/range {v4 .. v17}, Landroidx/camera/camera2/pipe/graph/Controller3A;->lock3A-Qz1gx5w(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;ILjava/lang/Long;Ljava/lang/Long;Le02;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final lock3AForCapture(Ljava/util/Map;Lnl3;IJ)Lmk2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            "Ljava/lang/Boolean;",
            ">;IJ)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->getRepeatingRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->deferredResult3ASubmitFailed:Lxp1;

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Landroidx/camera/camera2/pipe/graph/Controller3A;->parametersForAePrecaptureAndAfTrigger:Ljava/util/Map;

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    goto :goto_0

    :cond_3
    new-instance v0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;

    if-nez p2, :cond_4

    invoke-direct {p0, v2, v1}, Landroidx/camera/camera2/pipe/graph/Controller3A;->createLock3AForCaptureExitConditions(ZZ)Lnl3;

    move-result-object p2

    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-direct {v0, p2, p3, p4}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;-><init>(Lnl3;Ljava/lang/Integer;Ljava/lang/Long;)V

    iget-object p2, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphListener3A:Landroidx/camera/camera2/pipe/graph/Listener3A;

    invoke-virtual {p2, v0}, Landroidx/camera/camera2/pipe/graph/Listener3A;->addListener(Landroidx/camera/camera2/pipe/graph/Result3AStateListener;)V

    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "CXCP"

    const-string p3, "lock3AForCapture - sending a request to trigger ae precapture metering and af."

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p2, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {p2, p1}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->trigger(Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphListener3A:Landroidx/camera/camera2/pipe/graph/Listener3A;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/graph/Listener3A;->removeListener(Landroidx/camera/camera2/pipe/graph/Result3AStateListener;)V

    sget-object p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->deferredResult3ASubmitFailed:Lxp1;

    return-object p0

    :cond_6
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->toCaptureRequestParametersMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->update3AParameters(Ljava/util/Map;)V

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->getResult()Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lock3AForCapture$default(Landroidx/camera/camera2/pipe/graph/Controller3A;Ljava/util/Map;Lnl3;IJILjava/lang/Object;)Lmk2;
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    const/16 p3, 0x3c

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    const-wide p4, 0xb2d05e00L

    .line 36
    :cond_3
    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/pipe/graph/Controller3A;->lock3AForCapture(Ljava/util/Map;Lnl3;IJ)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lock3AForCapture$default(Landroidx/camera/camera2/pipe/graph/Controller3A;Lnl3;IJILjava/lang/Object;)Lmk2;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/16 p2, 0x3c

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const-wide p3, 0xb2d05e00L

    .line 35
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/graph/Controller3A;->lock3AForCapture(Lnl3;IJ)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lock3AForCapture$default(Landroidx/camera/camera2/pipe/graph/Controller3A;ZZIJILjava/lang/Object;)Lmk2;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    const/16 p3, 0x3c

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    const-wide p4, 0xb2d05e00L

    :cond_3
    move-wide p6, p4

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Landroidx/camera/camera2/pipe/graph/Controller3A;->lock3AForCapture(ZZIJ)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method private final lock3ANow-R6AlCjU(Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Ljava/lang/Integer;Ljava/lang/Long;)Lmk2;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/Lock3ABehavior;",
            "Landroidx/camera/camera2/pipe/Lock3ABehavior;",
            "Landroidx/camera/camera2/pipe/Lock3ABehavior;",
            "Landroidx/camera/camera2/pipe/AeMode;",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ")",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v11, v1

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v11, v2

    :goto_0
    if-nez p3, :cond_1

    move-object v13, v1

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v13, v2

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v11, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-eqz p2, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    if-eqz v13, :cond_4

    move v2, v3

    :cond_4
    invoke-direct {v0, v4, v5, v2}, Landroidx/camera/camera2/pipe/graph/Controller3A;->createLocked3AExitConditions(ZZZ)Ljava/util/Map;

    move-result-object v2

    const-string v3, "CXCP"

    if-nez p5, :cond_6

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    move-object v2, v3

    move-object v3, v1

    goto :goto_6

    :cond_6
    :goto_4
    if-nez p5, :cond_7

    invoke-static {v2}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerKt;->toConditionChecker(Ljava/util/Map;)Lnl3;

    move-result-object v2

    goto :goto_5

    :cond_7
    move-object/from16 v2, p5

    :goto_5
    new-instance v4, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct {v4, v2, v5, v6}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;-><init>(Lnl3;Ljava/lang/Integer;Ljava/lang/Long;)V

    iget-object v2, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphListener3A:Landroidx/camera/camera2/pipe/graph/Listener3A;

    invoke-virtual {v2, v4}, Landroidx/camera/camera2/pipe/graph/Listener3A;->addListener(Landroidx/camera/camera2/pipe/graph/Result3AStateListener;)V

    move-object v2, v3

    iget-object v3, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    const/16 v14, 0x17f

    const/4 v15, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v12, v10

    const/4 v10, 0x0

    move-object/from16 v16, v12

    const/4 v12, 0x0

    invoke-static/range {v3 .. v15}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->update-7jOEVJU$default(Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    sget-object v3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lock3A - submitting request with aeLock="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " , awbLock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v3, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    iget-object v4, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->toCaptureRequestParametersMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->update3AParameters(Ljava/util/Map;)V

    invoke-virtual/range {v16 .. v16}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->getResult()Lmk2;

    move-result-object v3

    :goto_6
    if-nez p2, :cond_9

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v3

    :cond_9
    if-eqz p4, :cond_a

    invoke-virtual/range {p4 .. p4}, Landroidx/camera/camera2/pipe/AeMode;->unbox-impl()I

    move-result v1

    iget-object v4, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->getCurrent()Landroidx/camera/camera2/pipe/graph/State3A;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/graph/State3A;->getAeMode-O_cDUUs()Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v4

    iget-object v5, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v6

    const/16 v16, 0x3fe

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v5 .. v17}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->update-7jOEVJU$default(Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    iget-object v5, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->toCaptureRequestParametersMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v1, v5}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->update3AParameters(Ljava/util/Map;)V

    move-object v1, v4

    :cond_a
    sget-object v4, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "lock3A - submitting a request to lock af."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v2, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    sget-object v4, Landroidx/camera/camera2/pipe/graph/Controller3A;->parameterForAfTriggerStart:Ljava/util/Map;

    invoke-interface {v2, v4}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->trigger(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->deferredResult3ASubmitFailed:Lxp1;

    return-object v0

    :cond_c
    iget-object v4, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v15, 0x2ff

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static/range {v4 .. v16}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->update-7jOEVJU$default(Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/AeMode;->unbox-impl()I

    move-result v1

    iget-object v4, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v5

    const/16 v15, 0x3fe

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v4 .. v16}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->update-7jOEVJU$default(Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    iget-object v0, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->toCaptureRequestParametersMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->update3AParameters(Ljava/util/Map;)V

    :cond_d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v3
.end method

.method public static synthetic lock3ANow-R6AlCjU$default(Landroidx/camera/camera2/pipe/graph/Controller3A;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Lmk2;
    .locals 8

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/pipe/graph/Controller3A;->lock3ANow-R6AlCjU(Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Ljava/lang/Integer;Ljava/lang/Long;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic setTorchOff-NqN7i0k$default(Landroidx/camera/camera2/pipe/graph/Controller3A;Landroidx/camera/camera2/pipe/AeMode;ILjava/lang/Object;)Lmk2;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/graph/Controller3A;->setTorchOff-NqN7i0k(Landroidx/camera/camera2/pipe/AeMode;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic submit3A-ydBZfZg$default(Landroidx/camera/camera2/pipe/graph/Controller3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lmk2;
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move-object p6, v0

    :cond_5
    invoke-virtual/range {p0 .. p6}, Landroidx/camera/camera2/pipe/graph/Controller3A;->submit3A-ydBZfZg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic unlock3A$default(Landroidx/camera/camera2/pipe/graph/Controller3A;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lnl3;ILjava/lang/Long;ILjava/lang/Object;)Lmk2;
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    const/16 p5, 0x3c

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    const-wide p6, 0xb2d05e00L

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    :cond_5
    invoke-virtual/range {p0 .. p6}, Landroidx/camera/camera2/pipe/graph/Controller3A;->unlock3A(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lnl3;ILjava/lang/Long;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic unlock3APostCapture$default(Landroidx/camera/camera2/pipe/graph/Controller3A;ZILjava/lang/Object;)Lmk2;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/graph/Controller3A;->unlock3APostCapture(Z)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method private final unlock3APostCaptureAndroidMAndAbove(Z)Lmk2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CXCP"

    const-string v1, "unlock3APostCapture - sending a request to reset af and ae precapture metering."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->aePrecaptureAndAfCancelParams:Ljava/util/Map;

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->aePrecaptureCancelParams:Ljava/util/Map;

    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {v1, v0}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->trigger(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->deferredResult3ASubmitFailed:Lxp1;

    return-object p0

    :cond_2
    if-eqz p1, :cond_3

    new-instance v0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;

    sget-object v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->unlock3APostCaptureAfUnlockedCondition:Lnl3;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;-><init>(Lnl3;Ljava/lang/Integer;Ljava/lang/Long;ILjh2;)V

    goto :goto_1

    :cond_3
    new-instance v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;

    const/4 v5, 0x6

    const/4 v6, 0x0

    sget-object v2, Lmx2;->b:Lmx2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;-><init>(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Long;ILjh2;)V

    move-object v0, v1

    :goto_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphListener3A:Landroidx/camera/camera2/pipe/graph/Listener3A;

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/pipe/graph/Listener3A;->addListener(Landroidx/camera/camera2/pipe/graph/Result3AStateListener;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->toCaptureRequestParametersMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->update3AParameters(Ljava/util/Map;)V

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->getResult()Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic unlock3APostCaptureAndroidMAndAbove$default(Landroidx/camera/camera2/pipe/graph/Controller3A;ZILjava/lang/Object;)Lmk2;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/graph/Controller3A;->unlock3APostCaptureAndroidMAndAbove(Z)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic update3A-169HPGg$default(Landroidx/camera/camera2/pipe/graph/Controller3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lmk2;
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    move-object p7, v0

    :cond_6
    invoke-virtual/range {p0 .. p7}, Landroidx/camera/camera2/pipe/graph/Controller3A;->update3A-169HPGg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final lock3A-Qz1gx5w(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;ILjava/lang/Long;Ljava/lang/Long;Le02;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Landroidx/camera/camera2/pipe/Lock3ABehavior;",
            "Landroidx/camera/camera2/pipe/Lock3ABehavior;",
            "Landroidx/camera/camera2/pipe/Lock3ABehavior;",
            "Landroidx/camera/camera2/pipe/AeMode;",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            "Ljava/lang/Boolean;",
            ">;I",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Le02<",
            "-",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move/from16 v3, p10

    move-object/from16 v4, p13

    instance-of v5, v4, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;

    iget v6, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->label:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;

    invoke-direct {v5, v0, v4}, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;-><init>(Landroidx/camera/camera2/pipe/graph/Controller3A;Le02;)V

    :goto_0
    iget-object v4, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->result:Ljava/lang/Object;

    sget-object v6, La32;->COROUTINE_SUSPENDED:La32;

    iget v7, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->label:I

    const/4 v8, 0x1

    const-string v9, "CXCP"

    const/4 v10, 0x0

    if-eqz v7, :cond_2

    if-ne v7, v8, :cond_1

    iget v1, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->I$0:I

    iget-object v2, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->L$6:Ljava/lang/Object;

    check-cast v2, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;

    iget-object v3, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->L$5:Ljava/lang/Object;

    check-cast v3, Lr07;

    iget-object v6, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->L$4:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    iget-object v7, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lnl3;

    iget-object v8, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->L$2:Ljava/lang/Object;

    check-cast v8, Landroidx/camera/camera2/pipe/AeMode;

    iget-object v11, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->L$1:Ljava/lang/Object;

    check-cast v11, Landroidx/camera/camera2/pipe/Lock3ABehavior;

    iget-object v5, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/camera/camera2/pipe/Lock3ABehavior;

    invoke-static {v4}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 v25, v3

    move v3, v1

    move-object v1, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v11

    move-object v11, v2

    move-object/from16 v2, v25

    goto/16 :goto_7

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v10

    :cond_2
    invoke-static {v4}, Lr57;->b(Ljava/lang/Object;)V

    new-instance v4, Lr07;

    invoke-direct {v4}, Lr07;-><init>()V

    move-object/from16 v7, p5

    iput-object v7, v4, Lr07;->b:Ljava/lang/Object;

    sget-object v7, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object v11, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v7, v11}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsAutoFocusTrigger(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v7

    if-nez v7, :cond_3

    iput-object v10, v4, Lr07;->b:Ljava/lang/Object;

    :cond_3
    if-nez v1, :cond_4

    iget-object v7, v4, Lr07;->b:Ljava/lang/Object;

    if-nez v7, :cond_4

    if-nez v2, :cond_4

    new-instance v0, Landroidx/camera/camera2/pipe/Result3A;

    sget-object v1, Landroidx/camera/camera2/pipe/Result3A$Status;->Companion:Landroidx/camera/camera2/pipe/Result3A$Status$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/Result3A$Status$Companion;->getOK-JvTi9ms()I

    move-result v1

    invoke-direct {v0, v1, v10, v10}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/FrameMetadata;Ljh2;)V

    invoke-static {v0}, Lga1;->a(Ljava/lang/Object;)Lyp1;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v11, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    const/16 v22, 0x38f

    const/16 v23, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    invoke-static/range {v11 .. v23}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->update-7jOEVJU$default(Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    iget-object v7, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    iget-object v11, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->toCaptureRequestParametersMap()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v7, v11}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->update3AParameters(Ljava/util/Map;)V

    iget-object v7, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {v7}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->getRepeatingRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v7

    if-nez v7, :cond_5

    sget-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->deferredResult3ASubmitFailed:Lxp1;

    return-object v0

    :cond_5
    iget-object v7, v4, Lr07;->b:Ljava/lang/Object;

    check-cast v7, Landroidx/camera/camera2/pipe/Lock3ABehavior;

    invoke-static {v7}, Landroidx/camera/camera2/pipe/graph/Controller3AKt;->shouldUnlockAf-t6FjEyI(Landroidx/camera/camera2/pipe/Lock3ABehavior;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "lock3A - sending a request to unlock af first."

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v7, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    sget-object v11, Landroidx/camera/camera2/pipe/graph/Controller3A;->parameterForAfTriggerCancel:Ljava/util/Map;

    invoke-interface {v7, v11}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->trigger(Ljava/util/Map;)Z

    move-result v7

    if-nez v7, :cond_7

    sget-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->deferredResult3ASubmitFailed:Lxp1;

    return-object v0

    :cond_7
    invoke-static {v1}, Landroidx/camera/camera2/pipe/graph/Controller3AKt;->shouldWaitForAeToConverge-t6FjEyI(Landroidx/camera/camera2/pipe/Lock3ABehavior;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, v4, Lr07;->b:Ljava/lang/Object;

    check-cast v7, Landroidx/camera/camera2/pipe/Lock3ABehavior;

    invoke-static {v7}, Landroidx/camera/camera2/pipe/graph/Controller3AKt;->shouldWaitForAfToConverge-t6FjEyI(Landroidx/camera/camera2/pipe/Lock3ABehavior;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v2}, Landroidx/camera/camera2/pipe/graph/Controller3AKt;->shouldWaitForAwbToConverge-t6FjEyI(Landroidx/camera/camera2/pipe/Lock3ABehavior;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_1

    :cond_8
    move-object/from16 v8, p7

    move-object/from16 v7, p9

    move-object/from16 v6, p12

    move-object v5, v1

    goto/16 :goto_8

    :cond_9
    :goto_1
    if-nez p8, :cond_a

    invoke-static {v1}, Landroidx/camera/camera2/pipe/graph/Controller3AKt;->shouldWaitForAeToConverge-t6FjEyI(Landroidx/camera/camera2/pipe/Lock3ABehavior;)Z

    move-result v7

    iget-object v11, v4, Lr07;->b:Ljava/lang/Object;

    check-cast v11, Landroidx/camera/camera2/pipe/Lock3ABehavior;

    invoke-static {v11}, Landroidx/camera/camera2/pipe/graph/Controller3AKt;->shouldWaitForAfToConverge-t6FjEyI(Landroidx/camera/camera2/pipe/Lock3ABehavior;)Z

    move-result v11

    invoke-static {v2}, Landroidx/camera/camera2/pipe/graph/Controller3AKt;->shouldWaitForAwbToConverge-t6FjEyI(Landroidx/camera/camera2/pipe/Lock3ABehavior;)Z

    move-result v12

    invoke-direct {v0, v7, v11, v12}, Landroidx/camera/camera2/pipe/graph/Controller3A;->createConverged3AExitConditions(ZZZ)Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerKt;->toConditionChecker(Ljava/util/Map;)Lnl3;

    move-result-object v7

    goto :goto_2

    :cond_a
    move-object/from16 v7, p8

    :goto_2
    new-instance v11, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v13, p11

    invoke-direct {v11, v7, v12, v13}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;-><init>(Lnl3;Ljava/lang/Integer;Ljava/lang/Long;)V

    iget-object v7, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphListener3A:Landroidx/camera/camera2/pipe/graph/Listener3A;

    invoke-virtual {v7, v11}, Landroidx/camera/camera2/pipe/graph/Listener3A;->addListener(Landroidx/camera/camera2/pipe/graph/Result3AStateListener;)V

    invoke-static {v1}, Landroidx/camera/camera2/pipe/graph/Controller3AKt;->shouldUnlockAe-t6FjEyI(Landroidx/camera/camera2/pipe/Lock3ABehavior;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_b
    move-object v7, v10

    :goto_3
    invoke-static {v2}, Landroidx/camera/camera2/pipe/graph/Controller3AKt;->shouldUnlockAwb-t6FjEyI(Landroidx/camera/camera2/pipe/Lock3ABehavior;)Z

    move-result v12

    if-eqz v12, :cond_c

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_c
    move-object v12, v10

    :goto_4
    if-nez v7, :cond_d

    if-eqz v12, :cond_f

    :cond_d
    sget-object v13, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v13}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v13

    if-eqz v13, :cond_e

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "lock3A - setting aeLock="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", awbLock="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v22, v12

    iget-object v12, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    const/16 v23, 0x17f

    const/16 v24, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v7

    invoke-static/range {v12 .. v24}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->update-7jOEVJU$default(Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    :cond_f
    iget-object v7, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    iget-object v12, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    invoke-virtual {v12}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->toCaptureRequestParametersMap()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v7, v12}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->update3AParameters(Ljava/util/Map;)V

    sget-object v7, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v7

    if-eqz v7, :cond_13

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "lock3A - waiting for"

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/camera/camera2/pipe/graph/Controller3AKt;->shouldWaitForAeToConverge-t6FjEyI(Landroidx/camera/camera2/pipe/Lock3ABehavior;)Z

    move-result v12

    const-string v13, ""

    if-eqz v12, :cond_10

    const-string v12, " ae"

    goto :goto_5

    :cond_10
    move-object v12, v13

    :goto_5
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v4, Lr07;->b:Ljava/lang/Object;

    check-cast v12, Landroidx/camera/camera2/pipe/Lock3ABehavior;

    invoke-static {v12}, Landroidx/camera/camera2/pipe/graph/Controller3AKt;->shouldWaitForAfToConverge-t6FjEyI(Landroidx/camera/camera2/pipe/Lock3ABehavior;)Z

    move-result v12

    if-eqz v12, :cond_11

    const-string v12, " af"

    goto :goto_6

    :cond_11
    move-object v12, v13

    :goto_6
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroidx/camera/camera2/pipe/graph/Controller3AKt;->shouldWaitForAwbToConverge-t6FjEyI(Landroidx/camera/camera2/pipe/Lock3ABehavior;)Z

    move-result v12

    if-eqz v12, :cond_12

    const-string v13, " awb"

    :cond_12
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " to converge before locking them."

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->getResult()Lmk2;

    move-result-object v7

    iput-object v1, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->L$0:Ljava/lang/Object;

    iput-object v2, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->L$1:Ljava/lang/Object;

    move-object/from16 v12, p7

    iput-object v12, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->L$2:Ljava/lang/Object;

    move-object/from16 v13, p9

    iput-object v13, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->L$3:Ljava/lang/Object;

    move-object/from16 v14, p12

    iput-object v14, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->L$4:Ljava/lang/Object;

    iput-object v4, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->L$5:Ljava/lang/Object;

    iput-object v11, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->L$6:Ljava/lang/Object;

    iput v3, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->I$0:I

    iput v8, v5, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->label:I

    invoke-interface {v7, v5}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v6, :cond_14

    return-object v6

    :cond_14
    move-object v6, v5

    move-object v5, v1

    move-object v1, v6

    move-object v8, v12

    move-object v7, v13

    move-object v6, v14

    :goto_7
    check-cast v1, Landroidx/camera/camera2/pipe/Result3A;

    sget-object v12, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v12}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v12

    if-eqz v12, :cond_16

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "lock3A - converged at frame number="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/Result3A;->getFrameMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object v13

    if-eqz v13, :cond_15

    invoke-interface {v13}, Landroidx/camera/camera2/pipe/FrameMetadata;->getFrameNumber-Ugla2oM()J

    move-result-wide v13

    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v13, v14}, Ljava/lang/Long;-><init>(J)V

    :cond_15
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", status="

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/Result3A;->getStatus-JvTi9ms()I

    move-result v10

    invoke-static {v10}, Landroidx/camera/camera2/pipe/Result3A$Status;->toString-impl(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/Result3A;->getStatus-JvTi9ms()I

    move-result v1

    sget-object v9, Landroidx/camera/camera2/pipe/Result3A$Status;->Companion:Landroidx/camera/camera2/pipe/Result3A$Status$Companion;

    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/Result3A$Status$Companion;->getOK-JvTi9ms()I

    move-result v9

    invoke-static {v1, v9}, Landroidx/camera/camera2/pipe/Result3A$Status;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->getResult()Lmk2;

    move-result-object v0

    return-object v0

    :cond_17
    :goto_8
    iget-object v1, v4, Lr07;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/pipe/Lock3ABehavior;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 p1, v0

    move-object/from16 p3, v1

    move-object/from16 p4, v2

    move-object/from16 p7, v4

    move-object/from16 p2, v5

    move-object/from16 p8, v6

    move-object/from16 p6, v7

    move-object/from16 p5, v8

    invoke-direct/range {p1 .. p8}, Landroidx/camera/camera2/pipe/graph/Controller3A;->lock3ANow-R6AlCjU(Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Ljava/lang/Integer;Ljava/lang/Long;)Lmk2;

    move-result-object v0

    return-object v0
.end method

.method public final lock3AForCapture(Lnl3;IJ)Lmk2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            "Ljava/lang/Boolean;",
            ">;IJ)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 129
    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/pipe/graph/Controller3A;->lock3AForCapture(Ljava/util/Map;Lnl3;IJ)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public final lock3AForCapture(ZZIJ)Lmk2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIJ)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 125
    sget-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->parametersForAePrecaptureAndAfTrigger:Ljava/util/Map;

    goto :goto_0

    .line 126
    :cond_0
    sget-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->parametersForAePrecapture:Ljava/util/Map;

    .line 127
    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/graph/Controller3A;->createLock3AForCaptureExitConditions(ZZ)Lnl3;

    move-result-object p2

    move-object p1, v0

    .line 128
    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/pipe/graph/Controller3A;->lock3AForCapture(Ljava/util/Map;Lnl3;IJ)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public final reset3A(Landroidx/camera/camera2/pipe/graph/State3A;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/Controller3A;->state3ASnapshot()Landroidx/camera/camera2/pipe/graph/State3A;

    move-result-object v0

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->setCurrent(Landroidx/camera/camera2/pipe/graph/State3A;)V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->toCaptureRequestParametersMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->update3AParameters(Ljava/util/Map;)V

    invoke-static {p1, v0}, Landroidx/camera/camera2/pipe/graph/GraphState3AKt;->wasAfLocked(Landroidx/camera/camera2/pipe/graph/State3A;Landroidx/camera/camera2/pipe/graph/State3A;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v9, 0x3d

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v10}, Landroidx/camera/camera2/pipe/graph/Controller3A;->unlock3A$default(Landroidx/camera/camera2/pipe/graph/Controller3A;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lnl3;ILjava/lang/Long;ILjava/lang/Object;)Lmk2;

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-static {p1, v0}, Landroidx/camera/camera2/pipe/graph/GraphState3AKt;->wasAfUnlocked(Landroidx/camera/camera2/pipe/graph/State3A;Landroidx/camera/camera2/pipe/graph/State3A;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v2, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    sget-object p1, Landroidx/camera/camera2/pipe/graph/Controller3A;->parameterForAfTriggerStart:Ljava/util/Map;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->trigger(Ljava/util/Map;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final setTorchOff-NqN7i0k(Landroidx/camera/camera2/pipe/AeMode;)Lmk2;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/AeMode;",
            ")",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/pipe/FlashMode;->Companion:Landroidx/camera/camera2/pipe/FlashMode$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/FlashMode$Companion;->getOFF-Le5xUZU()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/FlashMode;->box-impl(I)Landroidx/camera/camera2/pipe/FlashMode;

    move-result-object v5

    const/16 v9, 0x76

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v10}, Landroidx/camera/camera2/pipe/graph/Controller3A;->update3A-169HPGg$default(Landroidx/camera/camera2/pipe/graph/Controller3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public final setTorchOn()Lmk2;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->getCurrent()Landroidx/camera/camera2/pipe/graph/State3A;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/State3A;->getAeMode-O_cDUUs()Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v0

    sget-object v1, Landroidx/camera/camera2/pipe/AeMode;->Companion:Landroidx/camera/camera2/pipe/AeMode$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON-bOjpiJc()I

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/AeMode;->unbox-impl()I

    move-result v4

    invoke-static {v4, v2}, Landroidx/camera/camera2/pipe/AeMode;->equals-impl0(II)Z

    move-result v2

    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getOFF-bOjpiJc()I

    move-result v2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/AeMode;->unbox-impl()I

    move-result v0

    invoke-static {v0, v2}, Landroidx/camera/camera2/pipe/AeMode;->equals-impl0(II)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON-bOjpiJc()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v0

    :goto_2
    move-object v2, v0

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    :goto_4
    sget-object v0, Landroidx/camera/camera2/pipe/FlashMode;->Companion:Landroidx/camera/camera2/pipe/FlashMode$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/FlashMode$Companion;->getTORCH-Le5xUZU()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/FlashMode;->box-impl(I)Landroidx/camera/camera2/pipe/FlashMode;

    move-result-object v5

    const/16 v9, 0x76

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v10}, Landroidx/camera/camera2/pipe/graph/Controller3A;->update3A-169HPGg$default(Landroidx/camera/camera2/pipe/graph/Controller3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public final state3ASnapshot()Landroidx/camera/camera2/pipe/graph/State3A;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->getCurrent()Landroidx/camera/camera2/pipe/graph/State3A;

    move-result-object p0

    return-object p0
.end method

.method public final submit3A-ydBZfZg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/AeMode;",
            "Landroidx/camera/camera2/pipe/AfMode;",
            "Landroidx/camera/camera2/pipe/AwbMode;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->getRepeatingRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->deferredResult3ASubmitFailed:Lxp1;

    return-object p0

    :cond_0
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Landroidx/camera/camera2/pipe/graph/Controller3A;->createListenerFor3AParams-0dPwJB0$default(Landroidx/camera/camera2/pipe/graph/Controller3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;

    move-result-object p0

    iget-object p1, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphListener3A:Landroidx/camera/camera2/pipe/graph/Listener3A;

    invoke-virtual {p1, p0}, Landroidx/camera/camera2/pipe/graph/Listener3A;->addListener(Landroidx/camera/camera2/pipe/graph/Result3AStateListener;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/AeMode;->unbox-impl()I

    move-result p2

    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/AfMode;->unbox-impl()I

    move-result p2

    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/AwbMode;->unbox-impl()I

    move-result p2

    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 p2, 0x0

    if-eqz p4, :cond_4

    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p4, Ljava/util/Collection;

    new-array v1, p2, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {p4, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p5, :cond_5

    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p5, Ljava/util/Collection;

    new-array p4, p2, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {p5, p4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p6, :cond_6

    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p6, Ljava/util/Collection;

    new-array p2, p2, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {p6, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object p2, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {p2, p1}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->trigger(Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphListener3A:Landroidx/camera/camera2/pipe/graph/Listener3A;

    invoke-virtual {p1, p0}, Landroidx/camera/camera2/pipe/graph/Listener3A;->removeListener(Landroidx/camera/camera2/pipe/graph/Result3AStateListener;)V

    sget-object p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->deferredResult3ASubmitFailed:Lxp1;

    return-object p0

    :cond_7
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->getResult()Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public final unlock3A(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lnl3;ILjava/lang/Long;)Lmk2;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            "Ljava/lang/Boolean;",
            ">;I",
            "Ljava/lang/Long;",
            ")",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    sget-object v3, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object v4, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v3, v4}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsAutoFocusTrigger(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v3, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v2, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v0, Landroidx/camera/camera2/pipe/Result3A;

    sget-object v1, Landroidx/camera/camera2/pipe/Result3A$Status;->Companion:Landroidx/camera/camera2/pipe/Result3A$Status$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/Result3A$Status$Companion;->getOK-JvTi9ms()I

    move-result v1

    invoke-direct {v0, v1, v4, v4}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/FrameMetadata;Ljh2;)V

    invoke-static {v0}, Lga1;->a(Ljava/lang/Object;)Lyp1;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v6, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {v6}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->getRepeatingRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v6

    if-nez v6, :cond_2

    sget-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->deferredResult3ASubmitFailed:Lxp1;

    return-object v0

    :cond_2
    invoke-static {v3, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "CXCP"

    if-eqz v6, :cond_6

    sget-object v6, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "unlock3A - sending a request to unlock af first."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v8, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    sget-object v9, Landroidx/camera/camera2/pipe/graph/Controller3A;->parameterForAfTriggerCancel:Ljava/util/Map;

    invoke-interface {v8, v9}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->trigger(Ljava/util/Map;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "unlock3A - failed to send a request to unlock af first."

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->deferredResult3ASubmitFailed:Lxp1;

    return-object v0

    :cond_5
    iget-object v8, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v19, 0x2ff

    const/16 v20, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-static/range {v8 .. v20}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->update-7jOEVJU$default(Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    :cond_6
    if-nez p4, :cond_7

    invoke-static {v1, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v3, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v2, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    invoke-direct {v0, v6, v3, v8}, Landroidx/camera/camera2/pipe/graph/Controller3A;->createUnLocked3AExitConditions(ZZZ)Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerKt;->toConditionChecker(Ljava/util/Map;)Lnl3;

    move-result-object v3

    goto :goto_1

    :cond_7
    move-object/from16 v3, p4

    :goto_1
    new-instance v6, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v9, p6

    invoke-direct {v6, v3, v8, v9}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;-><init>(Lnl3;Ljava/lang/Integer;Ljava/lang/Long;)V

    iget-object v3, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphListener3A:Landroidx/camera/camera2/pipe/graph/Listener3A;

    invoke-virtual {v3, v6}, Landroidx/camera/camera2/pipe/graph/Listener3A;->addListener(Landroidx/camera/camera2/pipe/graph/Result3AStateListener;)V

    invoke-static {v1, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_8
    move-object v1, v4

    :goto_2
    invoke-static {v2, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_9
    if-nez v1, :cond_a

    if-eqz v4, :cond_c

    :cond_a
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unlock3A - updating graph state, aeLock="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", awbLock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v8, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    const/16 v19, 0x17f

    const/16 v20, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v1

    move-object/from16 v18, v4

    invoke-static/range {v8 .. v20}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->update-7jOEVJU$default(Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    :cond_c
    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    iget-object v0, v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->toCaptureRequestParametersMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->update3AParameters(Ljava/util/Map;)V

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->getResult()Lmk2;

    move-result-object v0

    return-object v0
.end method

.method public final unlock3APostCapture(Z)Lmk2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->getRepeatingRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Landroidx/camera/camera2/pipe/graph/Controller3A;->deferredResult3ASubmitFailed:Lxp1;

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/graph/Controller3A;->unlock3APostCaptureAndroidMAndAbove(Z)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public final update3A-169HPGg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/AeMode;",
            "Landroidx/camera/camera2/pipe/AfMode;",
            "Landroidx/camera/camera2/pipe/AwbMode;",
            "Landroidx/camera/camera2/pipe/FlashMode;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "Controller3A#update3A: cancelling previous request "

    iget-object v2, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->getRepeatingRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v3, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    const/16 v14, 0x380

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v3 .. v15}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->update-7jOEVJU$default(Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    iget-object v0, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    iget-object v1, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->toCaptureRequestParametersMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->update3AParameters(Ljava/util/Map;)V

    sget-object v0, Landroidx/camera/camera2/pipe/graph/Controller3A;->deferredResult3ASubmitFailed:Lxp1;

    return-object v0

    :cond_0
    invoke-direct/range {p0 .. p4}, Landroidx/camera/camera2/pipe/graph/Controller3A;->createListenerFor3AParams-0dPwJB0(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;)Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;

    move-result-object v15

    iget-object v2, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphListener3A:Landroidx/camera/camera2/pipe/graph/Listener3A;

    invoke-virtual {v2, v15}, Landroidx/camera/camera2/pipe/graph/Listener3A;->addListener(Landroidx/camera/camera2/pipe/graph/Result3AStateListener;)V

    iget-object v2, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    const/16 v13, 0x380

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v14}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->update-7jOEVJU$default(Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    iget-object v2, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    iget-object v3, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->toCaptureRequestParametersMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->update3AParameters(Ljava/util/Map;)V

    invoke-virtual {v15}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->getResult()Lmk2;

    move-result-object v2

    monitor-enter p0

    :try_start_0
    sget-object v3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "CXCP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/camera/camera2/pipe/graph/Controller3A;->access$getLastUpdate3AResult$p(Landroidx/camera/camera2/pipe/graph/Controller3A;)Lmk2;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->lastUpdate3AResult:Lmk2;

    if-eqz v0, :cond_2

    const-string v3, "A newer call for 3A state update initiated."

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lpib;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v3

    invoke-interface {v0, v3}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    iput-object v2, v1, Landroidx/camera/camera2/pipe/graph/Controller3A;->lastUpdate3AResult:Lmk2;

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_1
    monitor-exit p0

    throw v0
.end method
