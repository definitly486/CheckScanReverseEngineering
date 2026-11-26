.class public interface abstract Landroidx/camera/extensions/internal/Camera2ExtensionsInfoProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getExtensionCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;
.end method

.method public abstract getSupportedOutputSizes(Ljava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isExtensionAvailable(Ljava/lang/String;I)Z
.end method
