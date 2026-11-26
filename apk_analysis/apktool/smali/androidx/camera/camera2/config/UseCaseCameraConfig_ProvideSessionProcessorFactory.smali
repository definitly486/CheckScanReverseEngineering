.class public final Landroidx/camera/camera2/config/UseCaseCameraConfig_ProvideSessionProcessorFactory;
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
.field private final module:Landroidx/camera/camera2/config/UseCaseCameraConfig;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/config/UseCaseCameraConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig_ProvideSessionProcessorFactory;->module:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    return-void
.end method

.method public static create(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Landroidx/camera/camera2/config/UseCaseCameraConfig_ProvideSessionProcessorFactory;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/config/UseCaseCameraConfig_ProvideSessionProcessorFactory;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/config/UseCaseCameraConfig_ProvideSessionProcessorFactory;-><init>(Landroidx/camera/camera2/config/UseCaseCameraConfig;)V

    return-object v0
.end method

.method public static provideSessionProcessor(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Landroidx/camera/core/impl/SessionProcessor;
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/camera2/config/UseCaseCameraConfig;->provideSessionProcessor()Landroidx/camera/core/impl/SessionProcessor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/camera/core/impl/SessionProcessor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig_ProvideSessionProcessorFactory;->module:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    invoke-static {p0}, Landroidx/camera/camera2/config/UseCaseCameraConfig_ProvideSessionProcessorFactory;->provideSessionProcessor(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Landroidx/camera/core/impl/SessionProcessor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Landroidx/camera/camera2/config/UseCaseCameraConfig_ProvideSessionProcessorFactory;->get()Landroidx/camera/core/impl/SessionProcessor;

    move-result-object p0

    return-object p0
.end method
