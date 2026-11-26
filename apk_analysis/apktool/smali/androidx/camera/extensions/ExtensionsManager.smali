.class public final Landroidx/camera/extensions/ExtensionsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/ExtensionsManager$Companion;,
        Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/extensions/ExtensionsManager$Companion;

.field private static final EXTENSIONS_LOCK:Ljava/lang/Object;

.field private static final MINIMUM_SUPPORTED_API_LEVEL:I = 0x21

.field private static final TAG:Ljava/lang/String; = "ExtensionsManager"

.field private static sDeinitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static sExtensionsManager:Landroidx/camera/extensions/ExtensionsManager;

.field private static sInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/extensions/ExtensionsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final extensionsAvailability:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

.field private final extensionsInfo:Landroidx/camera/extensions/ExtensionsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/extensions/ExtensionsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/extensions/ExtensionsManager$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/extensions/ExtensionsManager;->Companion:Landroidx/camera/extensions/ExtensionsManager$Companion;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/camera/extensions/ExtensionsManager;->EXTENSIONS_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;Landroidx/camera/core/CameraProvider;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsManager;->extensionsAvailability:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    new-instance p1, Landroidx/camera/extensions/ExtensionsInfo;

    invoke-direct {p1, p2, p3}, Landroidx/camera/extensions/ExtensionsInfo;-><init>(Landroidx/camera/core/CameraProvider;Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsManager;->extensionsInfo:Landroidx/camera/extensions/ExtensionsInfo;

    return-void
.end method

.method public static final synthetic access$getEXTENSIONS_LOCK$cp()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/camera/extensions/ExtensionsManager;->EXTENSIONS_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getSDeinitializeFuture$cp()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    sget-object v0, Landroidx/camera/extensions/ExtensionsManager;->sDeinitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public static final synthetic access$getSExtensionsManager$cp()Landroidx/camera/extensions/ExtensionsManager;
    .locals 1

    sget-object v0, Landroidx/camera/extensions/ExtensionsManager;->sExtensionsManager:Landroidx/camera/extensions/ExtensionsManager;

    return-object v0
.end method

.method public static final synthetic access$getSInitializeFuture$cp()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    sget-object v0, Landroidx/camera/extensions/ExtensionsManager;->sInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public static final synthetic access$setSDeinitializeFuture$cp(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    sput-object p0, Landroidx/camera/extensions/ExtensionsManager;->sDeinitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public static final synthetic access$setSExtensionsManager$cp(Landroidx/camera/extensions/ExtensionsManager;)V
    .locals 0

    sput-object p0, Landroidx/camera/extensions/ExtensionsManager;->sExtensionsManager:Landroidx/camera/extensions/ExtensionsManager;

    return-void
.end method

.method public static final synthetic access$setSInitializeFuture$cp(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    sput-object p0, Landroidx/camera/extensions/ExtensionsManager;->sInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;Landroidx/camera/core/CameraProvider;Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/camera/core/CameraProvider;",
            "Le02<",
            "-",
            "Landroidx/camera/extensions/ExtensionsManager;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/extensions/ExtensionsManager;->Companion:Landroidx/camera/extensions/ExtensionsManager$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/camera/extensions/ExtensionsManager$Companion;->getInstance(Landroid/content/Context;Landroidx/camera/core/CameraProvider;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstanceAsync(Landroid/content/Context;Landroidx/camera/core/CameraProvider;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/camera/core/CameraProvider;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/extensions/ExtensionsManager;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/extensions/ExtensionsManager;->Companion:Landroidx/camera/extensions/ExtensionsManager$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/camera/extensions/ExtensionsManager$Companion;->getInstanceAsync(Landroid/content/Context;Landroidx/camera/core/CameraProvider;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCameraExtensionsControl(Landroidx/camera/core/CameraControl;)Landroidx/camera/extensions/CameraExtensionsControl;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/camera/extensions/CameraExtensionsControls;->from(Landroidx/camera/core/CameraControl;)Landroidx/camera/extensions/CameraExtensionsControl;

    move-result-object p0

    return-object p0
.end method

.method public final getCameraExtensionsInfo(Landroidx/camera/core/CameraInfo;)Landroidx/camera/extensions/CameraExtensionsInfo;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/camera/extensions/CameraExtensionsInfos;->from(Landroidx/camera/core/CameraInfo;)Landroidx/camera/extensions/CameraExtensionsInfo;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final getEstimatedCaptureLatencyRange(Landroidx/camera/core/CameraSelector;I)Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/CameraSelector;",
            "I)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p0, Landroidx/camera/extensions/ExtensionsManager;->extensionsAvailability:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    sget-object v2, Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;->LIBRARY_AVAILABLE:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/camera/extensions/ExtensionsManager;->extensionsInfo:Landroidx/camera/extensions/ExtensionsInfo;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/camera/extensions/ExtensionsInfo;->getEstimatedCaptureLatencyRange(Landroidx/camera/core/CameraSelector;ILandroid/util/Size;)Landroid/util/Range;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getExtensionCameraFilterAndInjectCameraConfig$camera_extensions(I)Landroidx/camera/core/CameraFilter;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsManager;->extensionsAvailability:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    sget-object v1, Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;->LIBRARY_AVAILABLE:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsManager;->extensionsInfo:Landroidx/camera/extensions/ExtensionsInfo;

    invoke-virtual {v0, p1}, Landroidx/camera/extensions/ExtensionsInfo;->injectExtensionCameraConfig(I)V

    iget-object p0, p0, Landroidx/camera/extensions/ExtensionsManager;->extensionsInfo:Landroidx/camera/extensions/ExtensionsInfo;

    invoke-virtual {p0, p1}, Landroidx/camera/extensions/ExtensionsInfo;->getCameraFilter(I)Landroidx/camera/core/CameraFilter;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "This device doesn\'t support extensions function! isExtensionAvailable should be checked first before calling getExtensionEnabledCameraSelector."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getExtensionEnabledCameraSelector(Landroidx/camera/core/CameraSelector;I)Landroidx/camera/core/CameraSelector;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsManager;->extensionsAvailability:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    sget-object v1, Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;->LIBRARY_AVAILABLE:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Landroidx/camera/extensions/ExtensionsManager;->extensionsInfo:Landroidx/camera/extensions/ExtensionsInfo;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/extensions/ExtensionsInfo;->getExtensionCameraSelectorAndInjectCameraConfig(Landroidx/camera/core/CameraSelector;I)Landroidx/camera/core/CameraSelector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_1
    const-string p0, "This device doesn\'t support extensions function! isExtensionAvailable should be checked first before calling getExtensionEnabledCameraSelector."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getExtensionsAvailability$camera_extensions()Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;
    .locals 0

    iget-object p0, p0, Landroidx/camera/extensions/ExtensionsManager;->extensionsAvailability:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    return-object p0
.end method

.method public final isExtensionAvailable(Landroidx/camera/core/CameraSelector;I)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsManager;->extensionsAvailability:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    sget-object v1, Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;->LIBRARY_AVAILABLE:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Landroidx/camera/extensions/ExtensionsManager;->extensionsInfo:Landroidx/camera/extensions/ExtensionsInfo;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/extensions/ExtensionsInfo;->isExtensionAvailable(Landroidx/camera/core/CameraSelector;I)Z

    move-result p0

    return p0
.end method

.method public final isImageAnalysisSupported(Landroidx/camera/core/CameraSelector;I)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsManager;->extensionsAvailability:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    sget-object v1, Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;->LIBRARY_AVAILABLE:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Landroidx/camera/extensions/ExtensionsManager;->extensionsInfo:Landroidx/camera/extensions/ExtensionsInfo;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/extensions/ExtensionsInfo;->isImageAnalysisSupported(Landroidx/camera/core/CameraSelector;I)Z

    move-result p0

    return p0
.end method

.method public final setVendorExtenderFactory$camera_extensions(Landroidx/camera/extensions/VendorExtenderFactory;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/extensions/ExtensionsManager;->extensionsInfo:Landroidx/camera/extensions/ExtensionsInfo;

    invoke-virtual {p0, p1}, Landroidx/camera/extensions/ExtensionsInfo;->setVendorExtenderFactory(Landroidx/camera/extensions/VendorExtenderFactory;)V

    return-void
.end method

.method public final shutdown()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/extensions/ExtensionsManager;->EXTENSIONS_LOCK:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroidx/camera/extensions/ExtensionsManager;->sInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :try_start_1
    sget-object v2, Landroidx/camera/extensions/ExtensionsManager;->sDeinitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    sput-object v1, Landroidx/camera/extensions/ExtensionsManager;->sInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    sget-object v0, Landroidx/camera/extensions/ExtensionsManager;->sExtensionsManager:Landroidx/camera/extensions/ExtensionsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v1, Landroidx/camera/extensions/ExtensionsManager;->sExtensionsManager:Landroidx/camera/extensions/ExtensionsManager;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Landroidx/camera/core/impl/ExtendedCameraConfigProviderStore;->clear()V

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    sput-object v0, Landroidx/camera/extensions/ExtensionsManager;->sDeinitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    :try_start_4
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    sput-object v0, Landroidx/camera/extensions/ExtensionsManager;->sDeinitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_5
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    sput-object v0, Landroidx/camera/extensions/ExtensionsManager;->sDeinitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    throw v0
.end method
