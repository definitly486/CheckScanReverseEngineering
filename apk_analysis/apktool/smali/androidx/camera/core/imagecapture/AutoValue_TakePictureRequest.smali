.class final Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;
.super Landroidx/camera/core/imagecapture/TakePictureRequest;
.source "SourceFile"


# instance fields
.field private final appExecutor:Ljava/util/concurrent/Executor;

.field private final captureMode:I

.field private final cropRect:Landroid/graphics/Rect;

.field private final inMemoryCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

.field private final jpegQuality:I

.field private final onDiskCallback:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

.field private final outputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

.field private final rotationDegrees:I

.field private final secondaryOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

.field private final sensorToBufferTransform:Landroid/graphics/Matrix;

.field private final sessionConfigCameraCaptureCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CameraCaptureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final simultaneousCapture:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;Landroidx/camera/core/ImageCapture$OutputFileOptions;Landroidx/camera/core/ImageCapture$OutputFileOptions;Landroid/graphics/Rect;Landroid/graphics/Matrix;IIIZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;",
            "Landroidx/camera/core/ImageCapture$OnImageSavedCallback;",
            "Landroidx/camera/core/ImageCapture$OutputFileOptions;",
            "Landroidx/camera/core/ImageCapture$OutputFileOptions;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Matrix;",
            "IIIZ",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CameraCaptureCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iput-object p1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->appExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->inMemoryCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    iput-object p3, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->onDiskCallback:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    iput-object p4, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->outputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    iput-object p5, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->secondaryOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    if-eqz p6, :cond_2

    iput-object p6, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->cropRect:Landroid/graphics/Rect;

    if-eqz p7, :cond_1

    iput-object p7, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->sensorToBufferTransform:Landroid/graphics/Matrix;

    iput p8, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->rotationDegrees:I

    iput p9, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->jpegQuality:I

    iput p10, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->captureMode:I

    iput-boolean p11, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->simultaneousCapture:Z

    if-eqz p12, :cond_0

    iput-object p12, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->sessionConfigCameraCaptureCallbacks:Ljava/util/List;

    return-void

    :cond_0
    const-string p0, "Null sessionConfigCameraCaptureCallbacks"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "Null sensorToBufferTransform"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "Null cropRect"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p0, "Null appExecutor"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/imagecapture/TakePictureRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Landroidx/camera/core/imagecapture/TakePictureRequest;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->appExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getAppExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->inMemoryCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getInMemoryCallback()Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getInMemoryCallback()Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->onDiskCallback:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getOnDiskCallback()Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getOnDiskCallback()Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->outputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getOutputFileOptions()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getOutputFileOptions()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->secondaryOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getSecondaryOutputFileOptions()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getSecondaryOutputFileOptions()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->sensorToBufferTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getSensorToBufferTransform()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->rotationDegrees:I

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getRotationDegrees()I

    move-result v3

    if-ne v1, v3, :cond_5

    iget v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->jpegQuality:I

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getJpegQuality()I

    move-result v3

    if-ne v1, v3, :cond_5

    iget v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->captureMode:I

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getCaptureMode()I

    move-result v3

    if-ne v1, v3, :cond_5

    iget-boolean v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->simultaneousCapture:Z

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->isSimultaneousCapture()Z

    move-result v3

    if-ne v1, v3, :cond_5

    iget-object p0, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->sessionConfigCameraCaptureCallbacks:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getSessionConfigCameraCaptureCallbacks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method public getAppExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->appExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public getCaptureMode()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->captureMode:I

    return p0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->cropRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getInMemoryCallback()Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->inMemoryCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    return-object p0
.end method

.method public getJpegQuality()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->jpegQuality:I

    return p0
.end method

.method public getOnDiskCallback()Landroidx/camera/core/ImageCapture$OnImageSavedCallback;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->onDiskCallback:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    return-object p0
.end method

.method public getOutputFileOptions()Landroidx/camera/core/ImageCapture$OutputFileOptions;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->outputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    return-object p0
.end method

.method public getRotationDegrees()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->rotationDegrees:I

    return p0
.end method

.method public getSecondaryOutputFileOptions()Landroidx/camera/core/ImageCapture$OutputFileOptions;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->secondaryOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    return-object p0
.end method

.method public getSensorToBufferTransform()Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->sensorToBufferTransform:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getSessionConfigCameraCaptureCallbacks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CameraCaptureCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->sessionConfigCameraCaptureCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->appExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->inMemoryCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->onDiskCallback:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->outputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->secondaryOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->sensorToBufferTransform:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->rotationDegrees:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->jpegQuality:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->captureMode:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->simultaneousCapture:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x4cf

    goto :goto_4

    :cond_4
    const/16 v2, 0x4d5

    :goto_4
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->sessionConfigCameraCaptureCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isSimultaneousCapture()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->simultaneousCapture:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TakePictureRequest{appExecutor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->appExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inMemoryCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->inMemoryCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onDiskCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->onDiskCallback:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputFileOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->outputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryOutputFileOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->secondaryOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cropRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sensorToBufferTransform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->sensorToBufferTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rotationDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->rotationDegrees:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", jpegQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->jpegQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", captureMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->captureMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", simultaneousCapture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->simultaneousCapture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sessionConfigCameraCaptureCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;->sessionConfigCameraCaptureCallbacks:Ljava/util/List;

    const-string v1, "}"

    invoke-static {v1, p0, v0}, Lbg;->e(Ljava/lang/String;Ljava/util/List;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
