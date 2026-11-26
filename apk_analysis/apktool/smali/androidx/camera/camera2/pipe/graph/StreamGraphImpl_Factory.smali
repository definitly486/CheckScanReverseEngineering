.class public final Landroidx/camera/camera2/pipe/graph/StreamGraphImpl_Factory;
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
.field private final cameraControllerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraController;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraMetadataProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final graphConfigProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ">;"
        }
    .end annotation
.end field

.field private final imageSourcesProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/media/ImageSources;",
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
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/media/ImageSources;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraController;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl_Factory;->cameraMetadataProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl_Factory;->graphConfigProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl_Factory;->imageSourcesProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl_Factory;->cameraControllerProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/pipe/graph/StreamGraphImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/media/ImageSources;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraController;",
            ">;)",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl_Factory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/media/ImageSources;Lws6;)Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            "Landroidx/camera/camera2/pipe/media/ImageSources;",
            "Lws6<",
            "Landroidx/camera/camera2/pipe/CameraController;",
            ">;)",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/media/ImageSources;Lws6;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl_Factory;->cameraMetadataProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/CameraMetadata;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl_Factory;->graphConfigProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl_Factory;->imageSourcesProvider:Lxs6;

    invoke-interface {v2}, Lws6;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/media/ImageSources;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl_Factory;->cameraControllerProvider:Lxs6;

    invoke-static {v0, v1, v2, p0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl_Factory;->newInstance(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/media/ImageSources;Lws6;)Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl_Factory;->get()Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    move-result-object p0

    return-object p0
.end method
