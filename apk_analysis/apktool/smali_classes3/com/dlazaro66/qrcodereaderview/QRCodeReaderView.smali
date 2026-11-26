.class public Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;,
        Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.dlazaro66.qrcodereaderview.QRCodeReaderView"


# instance fields
.field private decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

.field private decodeHints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnd2;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraManager:Ld11;

.field private mOnQRCodeReadListener:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mQRCodeReader:Luu6;

.field private mQrDecodingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mQrDecodingEnabled:Z

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->checkCameraHardware()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ld11;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Ld11;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    iput-object p0, p1, Ld11;->f:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {p1}, Ld11;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p1, Ld11;->b:Lhy5;

    iget-object p1, p1, Lhy5;->b:Landroid/hardware/Camera;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setBackCamera()V

    return-void

    :cond_2
    const-string p0, "Error: Camera not found"

    invoke-static {p0}, Ln7;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic access$000(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)I
    .locals 0

    iget p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mPreviewWidth:I

    return p0
.end method

.method public static synthetic access$100(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)I
    .locals 0

    iget p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mPreviewHeight:I

    return p0
.end method

.method public static synthetic access$200(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Ld11;
    .locals 0

    iget-object p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Luu6;
    .locals 0

    iget-object p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mQRCodeReader:Luu6;

    return-object p0
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;
    .locals 0

    iget-object p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mOnQRCodeReadListener:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)I
    .locals 0

    invoke-direct {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getCameraDisplayOrientation()I

    move-result p0

    return p0
.end method

.method private checkCameraHardware()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.camera.front"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.camera.any"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getCameraDisplayOrientation()I
    .locals 4

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iget-object v1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    iget v1, v1, Ld11;->h:I

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    if-eq p0, v1, :cond_2

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1

    const/4 v3, 0x3

    if-eq p0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10e

    goto :goto_0

    :cond_1
    const/16 v2, 0xb4

    goto :goto_0

    :cond_2
    const/16 v2, 0x5a

    :cond_3
    :goto_0
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    if-ne p0, v1, :cond_4

    add-int/2addr v0, v2

    rem-int/lit16 v0, v0, 0x168

    rsub-int p0, v0, 0x168

    rem-int/lit16 p0, p0, 0x168

    return p0

    :cond_4
    sub-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method


# virtual methods
.method public forceAutoFocus()V
    .locals 0

    iget-object p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ld11;->c:Liy;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Liy;->b()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1

    iget-boolean p2, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mQrDecodingEnabled:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p2

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    invoke-virtual {p2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p2

    sget-object v0, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeHints:Ljava/util/Map;

    invoke-direct {p2, p0, v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;-><init>(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;Ljava/util/Map;)V

    iput-object p2, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeFrameTask:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;

    filled-new-array {p1}, [[B

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutofocusInterval(J)V
    .locals 2

    iget-object p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    if-eqz p0, :cond_1

    iput-wide p1, p0, Ld11;->i:J

    iget-object p0, p0, Ld11;->c:Liy;

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Liy;->a:J

    return-void

    :cond_0
    const-string p0, "AutoFocusInterval must be greater than 0."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setBackCamera()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setPreviewCameraId(I)V

    return-void
.end method

.method public setDecodeHints(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lnd2;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->decodeHints:Ljava/util/Map;

    return-void
.end method

.method public setFrontCamera()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setPreviewCameraId(I)V

    return-void
.end method

.method public setOnQRCodeReadListener(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mOnQRCodeReadListener:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;

    return-void
.end method

.method public setPreviewCameraId(I)V
    .locals 0

    iget-object p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    monitor-enter p0

    :try_start_0
    iput p1, p0, Ld11;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setQRDecodingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mQrDecodingEnabled:Z

    return-void
.end method

.method public setTorchEnabled(Z)V
    .locals 5

    iget-object p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    if-eqz p0, :cond_5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld11;->b:Lhy5;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lhy5;->b:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "torch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-eq p1, v1, :cond_4

    iget-object v1, p0, Ld11;->c:Liy;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v1}, Liy;->c()V

    const/4 v1, 0x0

    iput-object v1, p0, Ld11;->c:Liy;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v1, v0, Lhy5;->b:Landroid/hardware/Camera;

    invoke-static {p1, v1}, Ll01;->e(ZLandroid/hardware/Camera;)V

    if-eqz v3, :cond_4

    new-instance p1, Liy;

    iget-object v0, v0, Lhy5;->b:Landroid/hardware/Camera;

    invoke-direct {p1, v0}, Liy;-><init>(Landroid/hardware/Camera;)V

    iput-object p1, p0, Ld11;->c:Liy;

    invoke-virtual {p1}, Liy;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    return-void
.end method

.method public startCamera()V
    .locals 0

    iget-object p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    invoke-virtual {p0}, Ld11;->d()V

    return-void
.end method

.method public stopCamera()V
    .locals 0

    iget-object p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    invoke-virtual {p0}, Ld11;->e()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    sget-object p2, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    const-string p3, "surfaceChanged"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "Error: preview surface does not exist"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    iget-object p3, p1, Ld11;->a:Ll01;

    iget-object p3, p3, Ll01;->c:Landroid/graphics/Point;

    if-nez p3, :cond_1

    const-string p0, "Error: preview size does not exist"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget p2, p3, Landroid/graphics/Point;->x:I

    iput p2, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mPreviewWidth:I

    iget p2, p3, Landroid/graphics/Point;->y:I

    iput p2, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mPreviewHeight:I

    invoke-virtual {p1}, Ld11;->e()V

    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    iput-object p0, p1, Ld11;->f:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {p1}, Ld11;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p1, Ld11;->b:Lhy5;

    iget-object p1, p1, Lhy5;->b:Landroid/hardware/Camera;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_2
    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    invoke-direct {p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getCameraDisplayOrientation()I

    move-result p2

    iput p2, p1, Ld11;->g:I

    invoke-virtual {p1}, Ld11;->b()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p1, p1, Ld11;->b:Lhy5;

    iget-object p1, p1, Lhy5;->b:Landroid/hardware/Camera;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    :cond_3
    iget-object p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    invoke-virtual {p0}, Ld11;->d()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    sget-object v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Ld11;->c(Landroid/view/SurfaceHolder;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    sget-object v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not openDriver: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    invoke-virtual {p1}, Ld11;->a()V

    :goto_1
    :try_start_1
    new-instance p1, Luu6;

    invoke-direct {p1}, Luu6;-><init>()V

    iput-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mQRCodeReader:Luu6;

    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    invoke-virtual {p1}, Ld11;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    sget-object v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    invoke-virtual {p0}, Ld11;->a()V

    :goto_2
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    sget-object p1, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->TAG:Ljava/lang/String;

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    const/4 v0, 0x0

    iput-object v0, p1, Ld11;->f:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {p1}, Ld11;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Ld11;->b:Lhy5;

    iget-object p1, p1, Lhy5;->b:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    iget-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    invoke-virtual {p1}, Ld11;->e()V

    iget-object p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->mCameraManager:Ld11;

    invoke-virtual {p0}, Ld11;->a()V

    return-void
.end method
