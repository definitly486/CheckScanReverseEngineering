.class public final Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;
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
.field private final camera2MetadataProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final camera2QuirksProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2Quirks;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraErrorListenerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraInteropConfigProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraOpenerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/CameraOpener;",
            ">;"
        }
    .end annotation
.end field

.field private final threadsProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;"
        }
    .end annotation
.end field

.field private final timeSourceProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/TimeSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/CameraOpener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraErrorListener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2Quirks;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/TimeSource;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;->cameraOpenerProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;->camera2MetadataProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;->cameraErrorListenerProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;->camera2QuirksProvider:Lxs6;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;->timeSourceProvider:Lxs6;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;->cameraInteropConfigProvider:Lxs6;

    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;->threadsProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/CameraOpener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraErrorListener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2Quirks;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/TimeSource;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;)",
            "Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/pipe/compat/CameraOpener;Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/core/Threads;)Landroidx/camera/camera2/pipe/compat/CameraStateOpener;
    .locals 8

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;-><init>(Landroidx/camera/camera2/pipe/compat/CameraOpener;Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/core/Threads;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/compat/CameraStateOpener;
    .locals 8

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;->cameraOpenerProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/pipe/compat/CameraOpener;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;->camera2MetadataProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;->cameraErrorListenerProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;->camera2QuirksProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;->timeSourceProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/camera/camera2/pipe/core/TimeSource;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;->cameraInteropConfigProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;->threadsProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Landroidx/camera/camera2/pipe/core/Threads;

    invoke-static/range {v1 .. v7}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;->newInstance(Landroidx/camera/camera2/pipe/compat/CameraOpener;Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/core/Threads;)Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener_Factory;->get()Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    move-result-object p0

    return-object p0
.end method
