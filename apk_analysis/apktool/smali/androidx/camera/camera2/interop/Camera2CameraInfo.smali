.class public final Landroidx/camera/camera2/interop/Camera2CameraInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;


# instance fields
.field public final synthetic cameraId:Ljava/lang/String;

.field private final cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

.field private final extensionsSpecificChars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->Companion:Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            "Ljava/util/List<",
            "+",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    iput-object p2, p0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->extensionsSpecificChars:Ljava/util/List;

    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->cameraId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Ljava/util/List;ILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/interop/Camera2CameraInfo;-><init>(Landroidx/camera/camera2/impl/CameraProperties;Ljava/util/List;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Ljava/util/List;Ljh2;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/interop/Camera2CameraInfo;-><init>(Landroidx/camera/camera2/impl/CameraProperties;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getCameraProperties$p(Landroidx/camera/camera2/interop/Camera2CameraInfo;)Landroidx/camera/camera2/impl/CameraProperties;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    return-object p0
.end method

.method public static final create(Landroidx/camera/camera2/impl/CameraProperties;)Landroidx/camera/camera2/interop/Camera2CameraInfo;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->Companion:Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;->create(Landroidx/camera/camera2/impl/CameraProperties;)Landroidx/camera/camera2/interop/Camera2CameraInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final from(Landroidx/camera/core/CameraInfo;)Landroidx/camera/camera2/interop/Camera2CameraInfo;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->Companion:Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;->from(Landroidx/camera/core/CameraInfo;)Landroidx/camera/camera2/interop/Camera2CameraInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->extensionsSpecificChars:Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v2, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object p0

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {p0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/camera/camera2/compat/workaround/CameraMetadataSafeGetterKt;->getSafely(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getCameraId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->cameraId:Ljava/lang/String;

    return-object p0
.end method
