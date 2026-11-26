.class public final Lu11;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/camera/view/PreviewView;

.field public final b:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$d;

.field public final c:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$e;

.field public final d:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$f;

.field public final e:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$g;

.field public final f:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

.field public final g:Llb5;

.field public final h:Lla3;

.field public final i:Landroid/view/View;

.field public final j:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Throwable;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/concurrent/ExecutorService;

.field public l:Landroidx/camera/core/Camera;


# direct methods
.method public constructor <init>(Landroidx/camera/view/PreviewView;Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$d;Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$e;Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$f;Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$g;Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Llb5;Lla3;Landroid/view/View;Lnl3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu11;->a:Landroidx/camera/view/PreviewView;

    iput-object p2, p0, Lu11;->b:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$d;

    iput-object p3, p0, Lu11;->c:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$e;

    iput-object p4, p0, Lu11;->d:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$f;

    iput-object p5, p0, Lu11;->e:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$g;

    iput-object p6, p0, Lu11;->f:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    iput-object p7, p0, Lu11;->g:Llb5;

    iput-object p8, p0, Lu11;->h:Lla3;

    iput-object p9, p0, Lu11;->i:Landroid/view/View;

    iput-object p10, p0, Lu11;->j:Lnl3;

    invoke-virtual {p0}, Lu11;->b()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/camera/core/ImageAnalysis;)V
    .locals 5

    iget-object v0, p0, Lu11;->a:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lu11;->f:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    iget-object v3, p0, Lu11;->h:Lla3;

    iget-object v4, p0, Lu11;->g:Llb5;

    invoke-interface {v4, v1, v2, v3}, Llb5;->a(Landroid/content/Context;Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Lla3;)Landroidx/camera/core/ImageAnalysis$Analyzer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lu11;->k:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, v0, v1}, Landroidx/camera/core/ImageAnalysis;->setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f140588

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final b()V
    .locals 8

    iget-object v0, p0, Lu11;->a:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "android.permission.CAMERA"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lff7;->a:Lff7$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lff7;->a:Lff7$a;

    invoke-virtual {v3, v2}, Lff7$a;->a(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v4, v2

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v2, v2, v4

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_1
    :goto_1
    sget-object v4, Landroidx/camera/lifecycle/ProcessCameraProvider;->Companion:Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v5}, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;->getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    new-instance v5, Ls11;

    invoke-direct {v5, v2, v3, v4, p0}, Ls11;-><init>(IILcom/google/common/util/concurrent/ListenableFuture;Lu11;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    iget-object p0, p0, Lu11;->j:Lnl3;

    invoke-interface {p0, v2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u0435\u0442\u0441\u044f \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0434\u043e\u0441\u0442\u0443\u043f \u043a \u043a\u0430\u043c\u0435\u0440\u0435"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    iget-object p0, p0, Lu11;->d:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$f;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$f;->invoke()Ljava/lang/Object;

    return-void
.end method
