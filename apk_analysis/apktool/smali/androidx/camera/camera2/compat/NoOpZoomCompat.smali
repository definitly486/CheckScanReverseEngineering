.class public final Landroidx/camera/camera2/compat/NoOpZoomCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/ZoomCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/NoOpZoomCompat$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/NoOpZoomCompat$Companion;

.field private static final requiredCharacteristics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

.field private final maxZoomRatio:F

.field private final minZoomRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/NoOpZoomCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/NoOpZoomCompat$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/compat/NoOpZoomCompat;->Companion:Landroidx/camera/camera2/compat/NoOpZoomCompat$Companion;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/NoOpZoomCompat;->requiredCharacteristics:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/compat/NoOpZoomCompat;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/camera/camera2/compat/NoOpZoomCompat;->minZoomRatio:F

    iput p1, p0, Landroidx/camera/camera2/compat/NoOpZoomCompat;->maxZoomRatio:F

    return-void
.end method

.method public static final synthetic access$getRequiredCharacteristics$cp()Ljava/util/List;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/compat/NoOpZoomCompat;->requiredCharacteristics:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public applyAsync(FLandroidx/camera/camera2/impl/UseCaseCameraRequestControl;)Lmk2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;",
            ")",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lj59;->a:Lj59;

    invoke-static {p0}, Lga1;->a(Ljava/lang/Object;)Lyp1;

    move-result-object p0

    return-object p0
.end method

.method public getCropSensorRegion()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/compat/NoOpZoomCompat;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {p0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/compat/workaround/CameraMetadataSafeGetterKt;->getActiveArraySizeSafely(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getMaxZoomRatio()F
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/compat/NoOpZoomCompat;->maxZoomRatio:F

    return p0
.end method

.method public getMinZoomRatio()F
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/compat/NoOpZoomCompat;->minZoomRatio:F

    return p0
.end method

.method public resetAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)Lmk2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;",
            ")",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lj59;->a:Lj59;

    invoke-static {p0}, Lga1;->a(Ljava/lang/Object;)Lyp1;

    move-result-object p0

    return-object p0
.end method
