.class public final synthetic Ls11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic e:Lu11;


# direct methods
.method public synthetic constructor <init>(IILcom/google/common/util/concurrent/ListenableFuture;Lu11;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ls11;->b:I

    iput p2, p0, Ls11;->c:I

    iput-object p3, p0, Ls11;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p4, p0, Ls11;->e:Lu11;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Ls11;->b:I

    iget v1, p0, Ls11;->c:I

    iget-object v2, p0, Ls11;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p0, p0, Ls11;->e:Lu11;

    iget-object v3, p0, Lu11;->a:Landroidx/camera/view/PreviewView;

    const/4 v4, 0x1

    :try_start_0
    new-instance v5, Landroidx/camera/core/Preview$Builder;

    invoke-direct {v5}, Landroidx/camera/core/Preview$Builder;-><init>()V

    new-instance v6, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    invoke-direct {v6}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;-><init>()V

    sget-object v7, Landroidx/camera/core/resolutionselector/ResolutionStrategy;->HIGHEST_AVAILABLE_STRATEGY:Landroidx/camera/core/resolutionselector/ResolutionStrategy;

    invoke-virtual {v6, v7}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->setResolutionStrategy(Landroidx/camera/core/resolutionselector/ResolutionStrategy;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    move-result-object v6

    new-instance v8, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    invoke-direct {v8, v0, v4}, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;-><init>(II)V

    invoke-virtual {v6, v8}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->setAspectRatioStrategy(Landroidx/camera/core/resolutionselector/AspectRatioStrategy;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->build()Landroidx/camera/core/resolutionselector/ResolutionSelector;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/camera/core/Preview$Builder;->setResolutionSelector(Landroidx/camera/core/resolutionselector/ResolutionSelector;)Landroidx/camera/core/Preview$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/camera/core/Preview$Builder;->setTargetRotation(I)Landroidx/camera/core/Preview$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/core/Preview$Builder;->build()Landroidx/camera/core/Preview;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v2}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    new-instance v6, Landroidx/camera/core/CameraSelector$Builder;

    invoke-direct {v6}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    invoke-virtual {v6, v4}, Landroidx/camera/core/CameraSelector$Builder;->requireLensFacing(I)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object v6

    new-instance v8, Landroidx/camera/core/ImageAnalysis$Builder;

    invoke-direct {v8}, Landroidx/camera/core/ImageAnalysis$Builder;-><init>()V

    new-instance v9, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    invoke-direct {v9}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;-><init>()V

    invoke-virtual {v9, v7}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->setResolutionStrategy(Landroidx/camera/core/resolutionselector/ResolutionStrategy;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    move-result-object v7

    new-instance v9, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    invoke-direct {v9, v0, v4}, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;-><init>(II)V

    invoke-virtual {v7, v9}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->setAspectRatioStrategy(Landroidx/camera/core/resolutionselector/AspectRatioStrategy;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->build()Landroidx/camera/core/resolutionselector/ResolutionSelector;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/camera/core/ImageAnalysis$Builder;->setResolutionSelector(Landroidx/camera/core/resolutionselector/ResolutionSelector;)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageAnalysis$Builder;->setTargetRotation(I)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageAnalysis$Builder;->setBackpressureStrategy(I)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis$Builder;->build()Landroidx/camera/core/ImageAnalysis;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lu11;->a(Landroidx/camera/core/ImageAnalysis;)V

    iget-object v7, p0, Lu11;->b:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$d;

    iget-object v7, v7, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$d;->f:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x2

    new-array v8, v8, [Landroidx/camera/core/UseCase;

    aput-object v5, v8, v1

    aput-object v0, v8, v4

    invoke-virtual {v2, v7, v6, v8}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object v0

    iget-object v2, p0, Lu11;->c:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$e;

    invoke-virtual {v2}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$e;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v6

    invoke-interface {v6}, Landroidx/camera/core/CameraInfo;->getTorchState()Landroidx/lifecycle/LiveData;

    move-result-object v6

    new-instance v7, Lt11;

    invoke-direct {v7, p0, v1}, Lt11;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lu11$a;

    invoke-direct {v1, v7}, Lu11$a;-><init>(Lt11;)V

    invoke-virtual {v6, v2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v6, Lx11;

    invoke-direct {v6, v3, p0, v1}, Lx11;-><init>(Landroid/view/View;Lu11;Landroidx/camera/core/CameraControl;)V

    invoke-virtual {v2, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v6, Lv11;

    invoke-direct {v6, v3, v3, p0, v1}, Lv11;-><init>(Landroid/view/View;Landroidx/camera/view/PreviewView;Lu11;Landroidx/camera/core/CameraControl;)V

    invoke-virtual {v2, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-object v0, p0, Lu11;->l:Landroidx/camera/core/Camera;

    invoke-virtual {v3}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    iget-object p0, p0, Lu11;->j:Lnl3;

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u0435\u0442\u0441\u044f \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0434\u043e\u0441\u0442\u0443\u043f \u043a \u043a\u0430\u043c\u0435\u0440\u0435"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
