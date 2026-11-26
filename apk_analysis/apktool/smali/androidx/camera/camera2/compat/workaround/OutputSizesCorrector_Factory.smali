.class public final Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector_Factory;
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
.field private final cameraMetadataProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final streamConfigurationMapProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;",
            "Lxs6<",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector_Factory;->cameraMetadataProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector_Factory;->streamConfigurationMapProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;)Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;",
            "Lxs6<",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ">;)",
            "Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector_Factory;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector_Factory;-><init>(Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/params/StreamConfigurationMap;)Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector_Factory;->cameraMetadataProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/CameraMetadata;

    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector_Factory;->streamConfigurationMapProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-static {v0, p0}, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector_Factory;->newInstance(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/params/StreamConfigurationMap;)Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector_Factory;->get()Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;

    move-result-object p0

    return-object p0
.end method
