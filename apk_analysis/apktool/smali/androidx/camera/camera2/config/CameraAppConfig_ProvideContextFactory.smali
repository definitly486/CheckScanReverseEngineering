.class public final Landroidx/camera/camera2/config/CameraAppConfig_ProvideContextFactory;
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
.field private final module:Landroidx/camera/camera2/config/CameraAppConfig;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/config/CameraAppConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/config/CameraAppConfig_ProvideContextFactory;->module:Landroidx/camera/camera2/config/CameraAppConfig;

    return-void
.end method

.method public static create(Landroidx/camera/camera2/config/CameraAppConfig;)Landroidx/camera/camera2/config/CameraAppConfig_ProvideContextFactory;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/config/CameraAppConfig_ProvideContextFactory;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/config/CameraAppConfig_ProvideContextFactory;-><init>(Landroidx/camera/camera2/config/CameraAppConfig;)V

    return-object v0
.end method

.method public static provideContext(Landroidx/camera/camera2/config/CameraAppConfig;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/camera2/config/CameraAppConfig;->provideContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/CameraAppConfig_ProvideContextFactory;->module:Landroidx/camera/camera2/config/CameraAppConfig;

    invoke-static {p0}, Landroidx/camera/camera2/config/CameraAppConfig_ProvideContextFactory;->provideContext(Landroidx/camera/camera2/config/CameraAppConfig;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Landroidx/camera/camera2/config/CameraAppConfig_ProvideContextFactory;->get()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method
