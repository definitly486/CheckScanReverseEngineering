.class public interface abstract Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract awaitCameraExtensionMetadata-0r8Bogc(Ljava/lang/String;I)Landroidx/camera/camera2/pipe/CameraExtensionMetadata;
.end method

.method public abstract awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;
.end method

.method public abstract getCameraExtensionMetadata-RzXb1QE(Ljava/lang/String;ILe02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/CameraExtensionMetadata;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getCameraMetadata-0r8Bogc(Ljava/lang/String;Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getSupportedCameraExtensions-EfqyGwQ(Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
