.class public final Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraBackendConfig"
.end annotation


# instance fields
.field private final cameraBackends:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/CameraBackendId;",
            "Landroidx/camera/camera2/pipe/CameraBackendFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultBackend:Ljava/lang/String;

.field private final internalBackend:Landroidx/camera/camera2/pipe/CameraBackend;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/CameraBackend;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraBackend;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/CameraBackendId;",
            "+",
            "Landroidx/camera/camera2/pipe/CameraBackendFactory;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;->internalBackend:Landroidx/camera/camera2/pipe/CameraBackend;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;->defaultBackend:Ljava/lang/String;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;->cameraBackends:Ljava/util/Map;

    if-eqz p2, :cond_3

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraBackendId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackendId;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_2

    const-string p2, "null"

    goto :goto_1

    :cond_2
    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " does not exist in cameraBackends! Available backends are: "

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lzg;->g(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/CameraBackend;Ljava/lang/String;Ljava/util/Map;ILjh2;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 59
    sget-object p3, Lmx2;->b:Lmx2;

    .line 60
    :cond_2
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;-><init>(Landroidx/camera/camera2/pipe/CameraBackend;Ljava/lang/String;Ljava/util/Map;Ljh2;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/CameraBackend;Ljava/lang/String;Ljava/util/Map;Ljh2;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;-><init>(Landroidx/camera/camera2/pipe/CameraBackend;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getCameraBackends()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/CameraBackendId;",
            "Landroidx/camera/camera2/pipe/CameraBackendFactory;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;->cameraBackends:Ljava/util/Map;

    return-object p0
.end method

.method public final getDefaultBackend-AKmI2lo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;->defaultBackend:Ljava/lang/String;

    return-object p0
.end method

.method public final getInternalBackend()Landroidx/camera/camera2/pipe/CameraBackend;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;->internalBackend:Landroidx/camera/camera2/pipe/CameraBackend;

    return-object p0
.end method
