.class public final Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraExtensionMetadata;


# instance fields
.field private final _isCaptureProgressSupported:Lcl4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcl4<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _isPostviewSupported:Lcl4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcl4<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _requestKeys:Lcl4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcl4<",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final _resultKeys:Lcl4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcl4<",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final camera:Ljava/lang/String;

.field private final cameraExtension:I

.field private final extensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

.field private final isRedacted:Z

.field private final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedExtensionSizesByClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcl4<",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final supportedExtensionSizesByFormat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcl4<",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final supportedPostviewSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Size;",
            "Lcl4<",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;ZILandroid/hardware/camera2/CameraExtensionCharacteristics;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Landroid/hardware/camera2/CameraExtensionCharacteristics;",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->camera:Ljava/lang/String;

    iput-boolean p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->isRedacted:Z

    iput p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->cameraExtension:I

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->extensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->metadata:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->supportedExtensionSizesByFormat:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->supportedExtensionSizesByClass:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->supportedPostviewSizes:Ljava/util/Map;

    sget-object p1, Lpo4;->PUBLICATION:Lpo4;

    new-instance p2, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$1;

    invoke-direct {p2, p0, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;)V

    invoke-static {p1, p2}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->_requestKeys:Lcl4;

    new-instance p2, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$2;

    invoke-direct {p2, p0, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$2;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;)V

    invoke-static {p1, p2}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->_resultKeys:Lcl4;

    new-instance p2, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$1;

    invoke-direct {p2, p0, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;)V

    invoke-static {p1, p2}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->_isPostviewSupported:Lcl4;

    new-instance p2, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$2;

    invoke-direct {p2, p0, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$2;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;)V

    invoke-static {p1, p2}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->_isCaptureProgressSupported:Lcl4;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZILandroid/hardware/camera2/CameraExtensionCharacteristics;Ljava/util/Map;Ljh2;)V
    .locals 0

    .line 90
    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;-><init>(Ljava/lang/String;ZILandroid/hardware/camera2/CameraExtensionCharacteristics;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$getExtensionCharacteristics$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;)Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->extensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    return-object p0
.end method


# virtual methods
.method public get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public get(Landroidx/camera/camera2/pipe/Metadata$Key;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->metadata:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getCamera-Dz_R5H8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->camera:Ljava/lang/String;

    return-object p0
.end method

.method public getCameraExtension()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->cameraExtension:I

    return p0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;>;"
        }
    .end annotation

    sget-object p0, Lox2;->b:Lox2;

    return-object p0
.end method

.method public getOrDefault(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p2
.end method

.method public getOrDefault(Landroidx/camera/camera2/pipe/Metadata$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->metadata:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    return-object p0
.end method

.method public getOutputSizes(I)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->supportedExtensionSizesByFormat:Ljava/util/Map;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->supportedExtensionSizesByFormat:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 82
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 83
    sget-object v3, Lpo4;->PUBLICATION:Lpo4;

    new-instance v4, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$getOutputSizes$lambda$0$0$$inlined$lazyOrEmptySet$1;

    invoke-direct {v4, p0, p1, p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$getOutputSizes$lambda$0$0$$inlined$lazyOrEmptySet$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;ILandroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;I)V

    invoke-static {v3, v4}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v3

    .line 84
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 85
    :cond_0
    :goto_0
    check-cast v3, Lcl4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit v0

    .line 87
    invoke-interface {v3}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0

    .line 88
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public getOutputSizes(Ljava/lang/Class;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->supportedExtensionSizesByClass:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->supportedExtensionSizesByClass:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "#getExtensionSupportedSizes("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lpo4;->PUBLICATION:Lpo4;

    new-instance v4, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$getOutputSizes$lambda$1$0$$inlined$lazyOrEmptySet$1;

    invoke-direct {v4, v2, p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$getOutputSizes$lambda$1$0$$inlined$lazyOrEmptySet$1;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;Ljava/lang/Class;)V

    invoke-static {v3, v4}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    check-cast v2, Lcl4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public getPostviewSizes(Landroid/util/Size;I)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "I)",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    sget-object p0, Lox2;->b:Lox2;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->supportedPostviewSizes:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->supportedPostviewSizes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "#getPostviewSupportedSizes("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lpo4;->PUBLICATION:Lpo4;

    new-instance v4, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$getPostviewSizes$lambda$0$0$$inlined$lazyOrEmptySet$1;

    invoke-direct {v4, v2, p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$getPostviewSizes$lambda$0$0$$inlined$lazyOrEmptySet$1;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;Landroid/util/Size;I)V

    invoke-static {v3, v4}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    check-cast v2, Lcl4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public getRequestKeys()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->_requestKeys:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public getResultKeys()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->_resultKeys:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public isCaptureProgressSupported()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->_isCaptureProgressSupported:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isPostviewSupported()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->_isPostviewSupported:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isRedacted()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->isRedacted:Z

    return p0
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

    const-class v0, Landroid/hardware/camera2/CameraExtensionCharacteristics;

    invoke-static {p1, v0}, Lvh;->g(Lne4;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->extensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
