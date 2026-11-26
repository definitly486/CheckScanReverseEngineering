.class public final Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection_Factory;
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

.field private final capturePipelineImplProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl;",
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

.field private final torchControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/TorchControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/TorchControl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection_Factory;->cameraPropertiesProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection_Factory;->capturePipelineImplProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection_Factory;->threadsProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection_Factory;->torchControlProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/TorchControl;",
            ">;)",
            "Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection_Factory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/impl/CameraProperties;Lws6;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/TorchControl;)Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            "Lws6<",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl;",
            ">;",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            "Landroidx/camera/camera2/impl/TorchControl;",
            ")",
            "Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;-><init>(Landroidx/camera/camera2/impl/CameraProperties;Lws6;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/TorchControl;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection_Factory;->cameraPropertiesProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/impl/CameraProperties;

    iget-object v1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection_Factory;->capturePipelineImplProvider:Lxs6;

    iget-object v2, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection_Factory;->threadsProvider:Lxs6;

    invoke-interface {v2}, Lws6;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/impl/UseCaseThreads;

    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection_Factory;->torchControlProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/TorchControl;

    invoke-static {v0, v1, v2, p0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection_Factory;->newInstance(Landroidx/camera/camera2/impl/CameraProperties;Lws6;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/TorchControl;)Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection_Factory;->get()Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;

    move-result-object p0

    return-object p0
.end method
