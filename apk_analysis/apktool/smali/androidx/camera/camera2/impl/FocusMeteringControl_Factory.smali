.class public final Landroidx/camera/camera2/impl/FocusMeteringControl_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxs6;"
    }
.end annotation


# instance fields
.field private final cameraPropertiesProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final meteringRegionCorrectionProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private final state3AControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/State3AControl;",
            ">;"
        }
    .end annotation
.end field

.field private final threadsProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;"
        }
    .end annotation
.end field

.field private final zoomCompatProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/compat/ZoomCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/State3AControl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/compat/ZoomCompat;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/FocusMeteringControl_Factory;->cameraPropertiesProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/impl/FocusMeteringControl_Factory;->meteringRegionCorrectionProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/impl/FocusMeteringControl_Factory;->state3AControlProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/impl/FocusMeteringControl_Factory;->threadsProvider:Lxs6;

    iput-object p5, p0, Landroidx/camera/camera2/impl/FocusMeteringControl_Factory;->zoomCompatProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/impl/FocusMeteringControl_Factory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/State3AControl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/compat/ZoomCompat;",
            ">;)",
            "Landroidx/camera/camera2/impl/FocusMeteringControl_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/impl/FocusMeteringControl_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/impl/FocusMeteringControl_Factory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/compat/ZoomCompat;)Landroidx/camera/camera2/impl/FocusMeteringControl;
    .locals 6

    new-instance v0, Landroidx/camera/camera2/impl/FocusMeteringControl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/impl/FocusMeteringControl;-><init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/compat/ZoomCompat;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/impl/FocusMeteringControl;
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/impl/FocusMeteringControl_Factory;->cameraPropertiesProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/impl/CameraProperties;

    iget-object v1, p0, Landroidx/camera/camera2/impl/FocusMeteringControl_Factory;->meteringRegionCorrectionProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;

    iget-object v2, p0, Landroidx/camera/camera2/impl/FocusMeteringControl_Factory;->state3AControlProvider:Lxs6;

    invoke-interface {v2}, Lws6;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/impl/State3AControl;

    iget-object v3, p0, Landroidx/camera/camera2/impl/FocusMeteringControl_Factory;->threadsProvider:Lxs6;

    invoke-interface {v3}, Lws6;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/impl/UseCaseThreads;

    iget-object p0, p0, Landroidx/camera/camera2/impl/FocusMeteringControl_Factory;->zoomCompatProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/compat/ZoomCompat;

    invoke-static {v0, v1, v2, v3, p0}, Landroidx/camera/camera2/impl/FocusMeteringControl_Factory;->newInstance(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/compat/ZoomCompat;)Landroidx/camera/camera2/impl/FocusMeteringControl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/FocusMeteringControl_Factory;->get()Landroidx/camera/camera2/impl/FocusMeteringControl;

    move-result-object p0

    return-object p0
.end method
