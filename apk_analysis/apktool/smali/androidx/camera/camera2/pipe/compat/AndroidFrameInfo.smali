.class public final Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/FrameInfo;


# instance fields
.field private final camera:Ljava/lang/String;

.field private final physicalResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

.field private final result:Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;

.field private final totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->camera:Ljava/lang/String;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    new-instance p2, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p2, p1, p3, v0}, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;-><init>(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;Ljh2;)V

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->result:Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;

    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string p1, "physicalCaptureResults"

    :try_start_0
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p2, 0x1f

    sget-object p3, Lmx2;->b:Lmx2;

    if-lt p1, p2, :cond_0

    :try_start_1
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->access$getTotalCaptureResult$p(Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Api31Compat;->getPhysicalCameraTotalResults(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/16 p2, 0x1c

    if-lt p1, p2, :cond_1

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->access$getTotalCaptureResult$p(Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->getPhysicalCaptureResults(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p3

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p3, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    invoke-direct {p3, p2}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v2

    new-instance v3, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CaptureResult;

    invoke-direct {v3, p2, v1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;-><init>(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;Ljh2;)V

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->physicalResults:Ljava/util/Map;

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public synthetic constructor <init>(Landroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;Landroidx/camera/camera2/pipe/RequestMetadata;Ljh2;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;-><init>(Landroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public static final synthetic access$getTotalCaptureResult$p(Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p0
.end method


# virtual methods
.method public get-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/FrameMetadata;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->physicalResults:Ljava/util/Map;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/FrameMetadata;

    return-object p0
.end method

.method public getCamera-Dz_R5H8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->camera:Ljava/lang/String;

    return-object p0
.end method

.method public getFrameNumber-Ugla2oM()J
    .locals 2

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->result:Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;->getFrameNumber-Ugla2oM()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->result:Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;

    return-object p0
.end method

.method public getRequestMetadata()Landroidx/camera/camera2/pipe/RequestMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FrameInfo(camera: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->result:Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", frameNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->result:Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;->getFrameNumber-Ugla2oM()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unwrapAs(Lne4;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Landroid/hardware/camera2/CaptureResult;

    invoke-static {p1, v0}, Lvh;->g(Lne4;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const-class v0, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
