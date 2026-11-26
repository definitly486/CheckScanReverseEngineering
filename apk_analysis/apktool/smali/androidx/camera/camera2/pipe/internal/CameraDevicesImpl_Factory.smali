.class public final Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl_Factory;
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
.field private final cameraBackendsProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraBackends;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraBackends;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl_Factory;->cameraBackendsProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;)Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraBackends;",
            ">;)",
            "Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl_Factory;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl_Factory;-><init>(Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/pipe/CameraBackends;)Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;-><init>(Landroidx/camera/camera2/pipe/CameraBackends;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl_Factory;->cameraBackendsProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraBackends;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl_Factory;->newInstance(Landroidx/camera/camera2/pipe/CameraBackends;)Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl_Factory;->get()Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;

    move-result-object p0

    return-object p0
.end method
