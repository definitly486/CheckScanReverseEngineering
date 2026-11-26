.class public interface abstract Landroidx/camera/camera2/pipe/CameraColorSpaceProfiles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/UnsafeWrapper;


# virtual methods
.method public abstract getSupportedColorSpaces-hNQ4ISI(I)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraColorSpace;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedColorSpacesForDynamicRange-sNWL0t8(IJ)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraColorSpace;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedDynamicRangeProfiles-6Yu6yh8(Ljava/lang/String;I)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedImageFormatsForColorSpace-jRxjvBE(Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamFormat;",
            ">;"
        }
    .end annotation
.end method
