.class public final Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraDevices;


# instance fields
.field private final cameraBackends:Landroidx/camera/camera2/pipe/CameraBackends;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraBackends;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->cameraBackends:Landroidx/camera/camera2/pipe/CameraBackends;

    return-void
.end method

.method public static final synthetic access$getCameraBackends$p(Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;)Landroidx/camera/camera2/pipe/CameraBackends;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->cameraBackends:Landroidx/camera/camera2/pipe/CameraBackends;

    return-object p0
.end method

.method private final getCameraBackend-SeavPBo(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;
    .locals 2

    const-string v0, "Failed to load CameraBackend "

    sget-object v1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v1, "getCameraBackend"

    :try_start_0
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->access$getCameraBackends$p(Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;)Landroidx/camera/camera2/pipe/CameraBackends;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CameraBackends;->getDefault()Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CameraBackend;->getId-QwmhuAM()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->access$getCameraBackends$p(Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;)Landroidx/camera/camera2/pipe/CameraBackends;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/CameraBackends;->get-SG3A4s8(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method


# virtual methods
.method public awaitCameraIds-SeavPBo(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->getCameraBackend-SeavPBo(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraBackend;->awaitCameraIds()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to load cameraIds from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraBackend;->getId-QwmhuAM()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CXCP"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p1
.end method

.method public awaitCameraMetadata-FpsL5FU(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->getCameraBackend-SeavPBo(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/CameraBackend;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to load metadata for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraBackend;->getId-QwmhuAM()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CXCP"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p2
.end method

.method public awaitConcurrentCameraIds-SeavPBo(Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->getCameraBackend-SeavPBo(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraBackend;->awaitConcurrentCameraIds()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public awaitMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;
    .locals 2
    .annotation runtime Lul2;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices;->awaitCameraMetadata-FpsL5FU$default(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v1
.end method

.method public cameraIdsFlow-SeavPBo(Ljava/lang/String;)Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lhd3<",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->getCameraBackend-SeavPBo(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraBackend;->getCameraIds()Lhd3;

    move-result-object p0

    return-object p0
.end method

.method public disconnect-FpsL5FU(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->getCameraBackend-SeavPBo(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/CameraBackend;->disconnect-EfqyGwQ(Ljava/lang/String;)V

    return-void
.end method

.method public disconnectAll-SeavPBo(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->getCameraBackend-SeavPBo(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraBackend;->disconnectAll()V

    return-void
.end method

.method public disconnectAllAsync-SeavPBo(Ljava/lang/String;)Lmk2;
    .locals 0
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

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->getCameraBackend-SeavPBo(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraBackend;->disconnectAllAsync()Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public disconnectAsync-FpsL5FU(Ljava/lang/String;Ljava/lang/String;)Lmk2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->getCameraBackend-SeavPBo(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/CameraBackend;->disconnectAsync-EfqyGwQ(Ljava/lang/String;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public findAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Landroidx/camera/camera2/pipe/CameraDevices;->awaitCameraIds-SeavPBo$default(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lkx2;->b:Lkx2;

    :cond_0
    return-object p0
.end method

.method public getCameraIds-iAq86To(Ljava/lang/String;Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraIds$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraIds$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraIds$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraIds$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraIds$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraIds$1;-><init>(Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraIds$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraIds$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraIds$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/camera2/pipe/CameraBackend;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->getCameraBackend-SeavPBo(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0

    iput-object p0, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraIds$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraIds$1;->label:I

    invoke-interface {p0, v0}, Landroidx/camera/camera2/pipe/CameraBackend;->getCameraIds(Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_4

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to load cameraIds from "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraBackend;->getId-QwmhuAM()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CXCP"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object p2
.end method

.method public getCameraMetadata-_mltaTw(Ljava/lang/String;Ljava/lang/String;Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraMetadata$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraMetadata$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraMetadata$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraMetadata$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraMetadata$1;

    invoke-direct {v0, p0, p3}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraMetadata$1;-><init>(Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;Le02;)V

    :goto_0
    iget-object p3, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraMetadata$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraMetadata$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraMetadata$1;->L$1:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/camera2/pipe/CameraBackend;

    iget-object p1, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraMetadata$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->getCameraBackend-SeavPBo(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0

    iput-object p1, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraMetadata$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraMetadata$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getCameraMetadata$1;->label:I

    invoke-interface {p0, p1, v0}, Landroidx/camera/camera2/pipe/CameraBackend;->getCameraMetadata-0r8Bogc(Ljava/lang/String;Le02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Landroidx/camera/camera2/pipe/CameraMetadata;

    if-nez p3, :cond_4

    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to load metadata for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraBackend;->getId-QwmhuAM()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CXCP"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object p3
.end method

.method public getConcurrentCameraIds-iAq86To(Ljava/lang/String;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->getCameraBackend-SeavPBo(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0

    invoke-interface {p0, p2}, Landroidx/camera/camera2/pipe/CameraBackend;->getConcurrentCameraIds(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getMetadata-0r8Bogc(Ljava/lang/String;Le02;)Ljava/lang/Object;
    .locals 8
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

    .annotation runtime Lul2;
    .end annotation

    instance-of v0, p2, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getMetadata$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getMetadata$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getMetadata$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getMetadata$1;->label:I

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getMetadata$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getMetadata$1;-><init>(Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;Le02;)V

    goto :goto_0

    :goto_1
    iget-object p2, v4, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getMetadata$1;->result:Ljava/lang/Object;

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, v4, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getMetadata$1;->label:I

    const/4 v7, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v7

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iput v2, v4, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$getMetadata$1;->label:I

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Landroidx/camera/camera2/pipe/CameraDevices;->getCameraMetadata-_mltaTw$default(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;Ljava/lang/String;Le02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    return-object p2

    :cond_4
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v7
.end method

.method public ids(Le02;)Ljava/lang/Object;
    .locals 5
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

    .annotation runtime Lul2;
    .end annotation

    instance-of v0, p1, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$ids$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$ids$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$ids$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$ids$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$ids$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$ids$1;-><init>(Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;Le02;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$ids$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$ids$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput v4, v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl$ids$1;->label:I

    invoke-static {p0, v3, v0, v4, v3}, Landroidx/camera/camera2/pipe/CameraDevices;->getCameraIds-iAq86To$default(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;Le02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_4

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0

    :cond_4
    return-object p1
.end method

.method public prewarm-FpsL5FU(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->getCameraBackend-SeavPBo(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/CameraBackend;->prewarm-EfqyGwQ(Ljava/lang/String;)V

    return-void
.end method
