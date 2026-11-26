.class public final Landroidx/camera/core/ImageCaptureExtKt$takePicture$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageCapture$OnImageSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/ImageCaptureExtKt;->takePicture(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OutputFileOptions;Lll3;Lnl3;Lnl3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $continuation:La31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La31<",
            "Landroidx/camera/core/ImageCapture$OutputFileResults;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $delegatingCallback:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Landroidx/camera/core/DelegatingImageSavedCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onCaptureProcessProgressed:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onCaptureStarted:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onPostviewBitmapAvailable:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroid/graphics/Bitmap;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lll3;Lnl3;Lnl3;Lr07;La31;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lr07<",
            "Landroidx/camera/core/DelegatingImageSavedCallback;",
            ">;",
            "La31<",
            "-",
            "Landroidx/camera/core/ImageCapture$OutputFileResults;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/core/ImageCaptureExtKt$takePicture$4$1;->$onCaptureStarted:Lll3;

    iput-object p2, p0, Landroidx/camera/core/ImageCaptureExtKt$takePicture$4$1;->$onCaptureProcessProgressed:Lnl3;

    iput-object p3, p0, Landroidx/camera/core/ImageCaptureExtKt$takePicture$4$1;->$onPostviewBitmapAvailable:Lnl3;

    iput-object p4, p0, Landroidx/camera/core/ImageCaptureExtKt$takePicture$4$1;->$delegatingCallback:Lr07;

    iput-object p5, p0, Landroidx/camera/core/ImageCaptureExtKt$takePicture$4$1;->$continuation:La31;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureProcessProgressed(I)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/ImageCaptureExtKt$takePicture$4$1;->$onCaptureProcessProgressed:Lnl3;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onCaptureStarted()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/ImageCaptureExtKt$takePicture$4$1;->$onCaptureStarted:Lll3;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onError(Landroidx/camera/core/ImageCaptureException;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/core/ImageCaptureExtKt$takePicture$4$1;->$delegatingCallback:Lr07;

    iget-object v0, v0, Lr07;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/camera/core/DelegatingImageSavedCallback;

    invoke-virtual {v0}, Landroidx/camera/core/DelegatingImageSavedCallback;->dispose()V

    iget-object p0, p0, Landroidx/camera/core/ImageCaptureExtKt$takePicture$4$1;->$continuation:La31;

    new-instance v0, Lk57$a;

    invoke-direct {v0, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Le02;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p0, "delegatingCallback"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onImageSaved(Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/core/ImageCaptureExtKt$takePicture$4$1;->$delegatingCallback:Lr07;

    iget-object v0, v0, Lr07;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/camera/core/DelegatingImageSavedCallback;

    invoke-virtual {v0}, Landroidx/camera/core/DelegatingImageSavedCallback;->dispose()V

    iget-object p0, p0, Landroidx/camera/core/ImageCaptureExtKt$takePicture$4$1;->$continuation:La31;

    invoke-interface {p0, p1}, Le02;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p0, "delegatingCallback"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onPostviewBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/core/ImageCaptureExtKt$takePicture$4$1;->$onPostviewBitmapAvailable:Lnl3;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
