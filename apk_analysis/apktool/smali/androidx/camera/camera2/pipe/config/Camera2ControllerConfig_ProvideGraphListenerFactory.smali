.class public final Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideGraphListenerFactory;
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
.field private final module:Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideGraphListenerFactory;->module:Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    return-void
.end method

.method public static create(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideGraphListenerFactory;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideGraphListenerFactory;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideGraphListenerFactory;-><init>(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)V

    return-object v0
.end method

.method public static provideGraphListener(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/graph/GraphListener;
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->provideGraphListener()Landroidx/camera/camera2/pipe/graph/GraphListener;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/graph/GraphListener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideGraphListenerFactory;->module:Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideGraphListenerFactory;->provideGraphListener(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/graph/GraphListener;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideGraphListenerFactory;->get()Landroidx/camera/camera2/pipe/graph/GraphListener;

    move-result-object p0

    return-object p0
.end method
