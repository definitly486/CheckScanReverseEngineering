.class public final Landroidx/camera/core/ImageCaptureExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getTakePictureRequest(Landroidx/camera/core/ImageCapture;)Landroidx/camera/core/imagecapture/TakePictureRequest;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getTakePictureManager()Landroidx/camera/core/imagecapture/TakePictureManager;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->getCapturingRequest()Landroidx/camera/core/imagecapture/RequestWithCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->getTakePictureRequest()Landroidx/camera/core/imagecapture/TakePictureRequest;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final takePicture(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OutputFileOptions;Lll3;Lnl3;Lnl3;Le02;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/ImageCapture;",
            "Landroidx/camera/core/ImageCapture$OutputFileOptions;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Landroid/graphics/Bitmap;",
            "Lj59;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/camera/core/ImageCapture$OutputFileResults;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 96
    invoke-interface {p5}, Le02;->getContext()Lo22;

    move-result-object v0

    .line 97
    sget-object v1, Lg02$a;->b:Lg02$a;

    invoke-interface {v0, v1}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v0

    instance-of v1, v0, Lr22;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lr22;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Laq5;->a(Lr22;)Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_1

    .line 98
    :cond_1
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    :goto_1
    new-instance v8, Lc31;

    invoke-static {p5}, Lzya;->b(Le02;)Le02;

    move-result-object p5

    const/4 v1, 0x1

    invoke-direct {v8, v1, p5}, Lc31;-><init>(ILe02;)V

    .line 100
    invoke-virtual {v8}, Lc31;->u()V

    .line 101
    new-instance v7, Lr07;

    invoke-direct {v7}, Lr07;-><init>()V

    .line 102
    new-instance p5, Landroidx/camera/core/DelegatingImageSavedCallback;

    .line 103
    new-instance v3, Landroidx/camera/core/ImageCaptureExtKt$takePicture$4$1;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v3 .. v8}, Landroidx/camera/core/ImageCaptureExtKt$takePicture$4$1;-><init>(Lll3;Lnl3;Lnl3;Lr07;La31;)V

    .line 104
    invoke-direct {p5, v3}, Landroidx/camera/core/DelegatingImageSavedCallback;-><init>(Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    .line 105
    iput-object p5, v7, Lr07;->b:Ljava/lang/Object;

    .line 106
    new-instance p2, Landroidx/camera/core/ImageCaptureExtKt$takePicture$4$2;

    invoke-direct {p2, v7}, Landroidx/camera/core/ImageCaptureExtKt$takePicture$4$2;-><init>(Lr07;)V

    invoke-virtual {v8, p2}, Lc31;->n(Lnl3;)V

    .line 107
    iget-object p2, v7, Lr07;->b:Ljava/lang/Object;

    if-eqz p2, :cond_2

    check-cast p2, Landroidx/camera/core/DelegatingImageSavedCallback;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/camera/core/ImageCapture;->takePicture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    .line 108
    invoke-virtual {v8}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    .line 109
    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0

    .line 110
    :cond_2
    const-string p0, "delegatingCallback"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v2
.end method

.method public static final takePicture(Landroidx/camera/core/ImageCapture;Lll3;Lnl3;Lnl3;Le02;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/ImageCapture;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Landroid/graphics/Bitmap;",
            "Lj59;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/camera/core/ImageProxy;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p4}, Le02;->getContext()Lo22;

    move-result-object v0

    sget-object v1, Lg02$a;->b:Lg02$a;

    invoke-interface {v0, v1}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v0

    instance-of v1, v0, Lr22;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lr22;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Laq5;->a(Lr22;)Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    new-instance v8, Lc31;

    invoke-static {p4}, Lzya;->b(Le02;)Le02;

    move-result-object p4

    const/4 v1, 0x1

    invoke-direct {v8, v1, p4}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v8}, Lc31;->u()V

    new-instance v7, Lr07;

    invoke-direct {v7}, Lr07;-><init>()V

    new-instance p4, Landroidx/camera/core/DelegatingImageCapturedCallback;

    new-instance v3, Landroidx/camera/core/ImageCaptureExtKt$takePicture$2$1;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Landroidx/camera/core/ImageCaptureExtKt$takePicture$2$1;-><init>(Lll3;Lnl3;Lnl3;Lr07;La31;)V

    invoke-direct {p4, v3}, Landroidx/camera/core/DelegatingImageCapturedCallback;-><init>(Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    iput-object p4, v7, Lr07;->b:Ljava/lang/Object;

    new-instance p1, Landroidx/camera/core/ImageCaptureExtKt$takePicture$2$2;

    invoke-direct {p1, v7}, Landroidx/camera/core/ImageCaptureExtKt$takePicture$2$2;-><init>(Lr07;)V

    invoke-virtual {v8, p1}, Lc31;->n(Lnl3;)V

    iget-object p1, v7, Lr07;->b:Ljava/lang/Object;

    if-eqz p1, :cond_2

    check-cast p1, Landroidx/camera/core/DelegatingImageCapturedCallback;

    invoke-virtual {p0, v0, p1}, Landroidx/camera/core/ImageCapture;->takePicture(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    invoke-virtual {v8}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0

    :cond_2
    const-string p0, "delegatingCallback"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v2
.end method

.method public static synthetic takePicture$default(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OutputFileOptions;Lll3;Lnl3;Lnl3;Le02;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    move-object p4, v0

    .line 21
    :cond_2
    invoke-static/range {p0 .. p5}, Landroidx/camera/core/ImageCaptureExtKt;->takePicture(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OutputFileOptions;Lll3;Lnl3;Lnl3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic takePicture$default(Landroidx/camera/core/ImageCapture;Lll3;Lnl3;Lnl3;Le02;ILjava/lang/Object;)Ljava/lang/Object;
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
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    move-object p3, v0

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/core/ImageCaptureExtKt;->takePicture(Landroidx/camera/core/ImageCapture;Lll3;Lnl3;Lnl3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
