.class public final Landroidx/camera/camera2/adapter/CameraControlStateAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation


# instance fields
.field private final evCompControl:Landroidx/camera/camera2/impl/EvCompControl;

.field private final lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

.field private final torchControl:Landroidx/camera/camera2/impl/TorchControl;

.field private final zoomControl:Landroidx/camera/camera2/impl/ZoomControl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/ZoomControl;Landroidx/camera/camera2/impl/EvCompControl;Landroidx/camera/camera2/impl/TorchControl;Landroidx/camera/camera2/impl/LowLightBoostControl;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraControlStateAdapter;->zoomControl:Landroidx/camera/camera2/impl/ZoomControl;

    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraControlStateAdapter;->evCompControl:Landroidx/camera/camera2/impl/EvCompControl;

    iput-object p3, p0, Landroidx/camera/camera2/adapter/CameraControlStateAdapter;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    iput-object p4, p0, Landroidx/camera/camera2/adapter/CameraControlStateAdapter;->lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

    return-void
.end method


# virtual methods
.method public final getExposureState()Landroidx/camera/core/ExposureState;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlStateAdapter;->evCompControl:Landroidx/camera/camera2/impl/EvCompControl;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/EvCompControl;->getExposureState()Landroidx/camera/camera2/adapter/EvCompValue;

    move-result-object p0

    return-object p0
.end method

.method public final getLowLightBoostState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlStateAdapter;->lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->getLowLightBoostStateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final getTorchStateLiveData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlStateAdapter;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/TorchControl;->getTorchStateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final getTorchStrengthLiveData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlStateAdapter;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/TorchControl;->getTorchStrengthLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final getZoomStateLiveData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/camera/core/ZoomState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlStateAdapter;->zoomControl:Landroidx/camera/camera2/impl/ZoomControl;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/ZoomControl;->getZoomStateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method
