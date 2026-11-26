.class public final synthetic Ltd7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltd7;->b:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Ltd7;->b:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->k:Lu11;

    if-eqz p0, :cond_1

    iget-object p1, p0, Lu11;->l:Landroidx/camera/core/Camera;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroidx/camera/core/CameraInfo;->getTorchState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lu11;->l:Landroidx/camera/core/Camera;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, v0}, Landroidx/camera/core/CameraControl;->enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_1
    return-void
.end method
