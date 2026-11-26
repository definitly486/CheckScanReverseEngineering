.class public interface abstract Landroidx/camera/camera2/pipe/CameraBackend;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraBackend$DefaultImpls;
    }
.end annotation


# direct methods
.method public static synthetic access$getCameraIds$jd(Landroidx/camera/camera2/pipe/CameraBackend;)Lhd3;
    .locals 0

    invoke-super {p0}, Landroidx/camera/camera2/pipe/CameraBackend;->getCameraIds()Lhd3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$getCameraIds$jd(Landroidx/camera/camera2/pipe/CameraBackend;Le02;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Landroidx/camera/camera2/pipe/CameraBackend;->getCameraIds(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$getCameraMetadata-0r8Bogc$jd(Landroidx/camera/camera2/pipe/CameraBackend;Ljava/lang/String;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraBackend;->getCameraMetadata-0r8Bogc(Ljava/lang/String;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$getConcurrentCameraIds$jd(Landroidx/camera/camera2/pipe/CameraBackend;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Landroidx/camera/camera2/pipe/CameraBackend;->getConcurrentCameraIds(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$isConfigSupported-NpXggIU$jd(Landroidx/camera/camera2/pipe/CameraBackend;Landroidx/camera/camera2/pipe/CameraGraph$Config;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraBackend;->isConfigSupported-NpXggIU(Landroidx/camera/camera2/pipe/CameraGraph$Config;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$prewarmGraphConfigQuery-0r8Bogc$jd(Landroidx/camera/camera2/pipe/CameraBackend;Ljava/lang/String;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraBackend;->prewarmGraphConfigQuery-0r8Bogc(Ljava/lang/String;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$prewarmIsConfigSupported-EfqyGwQ$jd(Landroidx/camera/camera2/pipe/CameraBackend;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/camera/camera2/pipe/CameraBackend;->prewarmIsConfigSupported-EfqyGwQ(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic getCameraIds$suspendImpl(Landroidx/camera/camera2/pipe/CameraBackend;Le02;)Ljava/lang/Object;
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

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraBackend;->awaitCameraIds()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCameraMetadata-0r8Bogc$suspendImpl(Landroidx/camera/camera2/pipe/CameraBackend;Ljava/lang/String;Le02;)Ljava/lang/Object;
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

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/CameraBackend;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getConcurrentCameraIds$suspendImpl(Landroidx/camera/camera2/pipe/CameraBackend;Le02;)Ljava/lang/Object;
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

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraBackend;->awaitConcurrentCameraIds()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic isConfigSupported-NpXggIU$suspendImpl(Landroidx/camera/camera2/pipe/CameraBackend;Landroidx/camera/camera2/pipe/CameraGraph$Config;Le02;)Ljava/lang/Object;
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

    sget-object p0, Landroidx/camera/camera2/pipe/ConfigQueryResult;->Companion:Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;->getUNKNOWN-Xp6DSB4()I

    move-result p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->box-impl(I)Landroidx/camera/camera2/pipe/ConfigQueryResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic prewarmGraphConfigQuery-0r8Bogc$suspendImpl(Landroidx/camera/camera2/pipe/CameraBackend;Ljava/lang/String;Le02;)Ljava/lang/Object;
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

    .annotation runtime Lul2;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract awaitCameraIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;"
        }
    .end annotation
.end method

.method public abstract awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;
.end method

.method public abstract awaitConcurrentCameraIds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract createCameraController(Landroidx/camera/camera2/pipe/CameraContext;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/SurfaceTracker;)Landroidx/camera/camera2/pipe/CameraController;
.end method

.method public abstract disconnect-EfqyGwQ(Ljava/lang/String;)V
.end method

.method public abstract disconnectAll()V
.end method

.method public abstract disconnectAllAsync()Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end method

.method public abstract disconnectAsync-EfqyGwQ(Ljava/lang/String;)Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end method

.method public getCameraIds()Lhd3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraBackend;->awaitCameraIds()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lkx2;->b:Lkx2;

    :cond_0
    new-instance v0, Lrd3;

    invoke-direct {v0, p0}, Lrd3;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCameraIds(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 14
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraBackend;->getCameraIds$suspendImpl(Landroidx/camera/camera2/pipe/CameraBackend;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getCameraMetadata-0r8Bogc(Ljava/lang/String;Le02;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraBackend;->getCameraMetadata-0r8Bogc$suspendImpl(Landroidx/camera/camera2/pipe/CameraBackend;Ljava/lang/String;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getConcurrentCameraIds(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraBackend;->getConcurrentCameraIds$suspendImpl(Landroidx/camera/camera2/pipe/CameraBackend;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract getId-QwmhuAM()Ljava/lang/String;
.end method

.method public isConfigSupported-NpXggIU(Landroidx/camera/camera2/pipe/CameraGraph$Config;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/ConfigQueryResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraBackend;->isConfigSupported-NpXggIU$suspendImpl(Landroidx/camera/camera2/pipe/CameraBackend;Landroidx/camera/camera2/pipe/CameraGraph$Config;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract prewarm-EfqyGwQ(Ljava/lang/String;)V
.end method

.method public prewarmGraphConfigQuery-0r8Bogc(Ljava/lang/String;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraBackend;->prewarmGraphConfigQuery-0r8Bogc$suspendImpl(Landroidx/camera/camera2/pipe/CameraBackend;Ljava/lang/String;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public prewarmIsConfigSupported-EfqyGwQ(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public abstract shutdownAsync()Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end method
