.class public final Landroidx/camera/camera2/pipe/CameraBackend$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static getCameraIds(Landroidx/camera/camera2/pipe/CameraBackend;)Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraBackend;",
            ")",
            "Lhd3<",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraBackend;->access$getCameraIds$jd(Landroidx/camera/camera2/pipe/CameraBackend;)Lhd3;

    move-result-object p0

    return-object p0
.end method

.method public static getCameraIds(Landroidx/camera/camera2/pipe/CameraBackend;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraBackend;",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraBackend;->access$getCameraIds$jd(Landroidx/camera/camera2/pipe/CameraBackend;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getCameraMetadata-0r8Bogc(Landroidx/camera/camera2/pipe/CameraBackend;Ljava/lang/String;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraBackend;",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraBackend;->access$getCameraMetadata-0r8Bogc$jd(Landroidx/camera/camera2/pipe/CameraBackend;Ljava/lang/String;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getConcurrentCameraIds(Landroidx/camera/camera2/pipe/CameraBackend;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraBackend;",
            "Le02<",
            "-",
            "Ljava/util/Set<",
            "+",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraBackend;->access$getConcurrentCameraIds$jd(Landroidx/camera/camera2/pipe/CameraBackend;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isConfigSupported-NpXggIU(Landroidx/camera/camera2/pipe/CameraBackend;Landroidx/camera/camera2/pipe/CameraGraph$Config;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraBackend;",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/ConfigQueryResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraBackend;->access$isConfigSupported-NpXggIU$jd(Landroidx/camera/camera2/pipe/CameraBackend;Landroidx/camera/camera2/pipe/CameraGraph$Config;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static prewarmGraphConfigQuery-0r8Bogc(Landroidx/camera/camera2/pipe/CameraBackend;Ljava/lang/String;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraBackend;",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraBackend;->access$prewarmGraphConfigQuery-0r8Bogc$jd(Landroidx/camera/camera2/pipe/CameraBackend;Ljava/lang/String;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static prewarmIsConfigSupported-EfqyGwQ(Landroidx/camera/camera2/pipe/CameraBackend;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraBackend;->access$prewarmIsConfigSupported-EfqyGwQ$jd(Landroidx/camera/camera2/pipe/CameraBackend;Ljava/lang/String;)V

    return-void
.end method
