.class public final Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;
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
.field private final callbackMapProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraCallbackMap;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraConfigProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/config/CameraConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraInteropStateCallbackRepositoryProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;",
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

.field private final cameraQuirksProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/compat/quirk/CameraQuirks;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraXConfigProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/core/CameraXConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final requestListenerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/ComboRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private final templateParamsOverrideProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;",
            ">;"
        }
    .end annotation
.end field

.field private final zslControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/ZslControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraCallbackMap;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/ComboRequestListener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/config/CameraConfig;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/compat/quirk/CameraQuirks;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/ZslControl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/CameraXConfig;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->callbackMapProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->requestListenerProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->cameraConfigProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->cameraQuirksProvider:Lxs6;

    iput-object p5, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->zslControlProvider:Lxs6;

    iput-object p6, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->templateParamsOverrideProvider:Lxs6;

    iput-object p7, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->cameraMetadataProvider:Lxs6;

    iput-object p8, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->cameraXConfigProvider:Lxs6;

    iput-object p9, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->cameraInteropStateCallbackRepositoryProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraCallbackMap;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/ComboRequestListener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/config/CameraConfig;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/compat/quirk/CameraQuirks;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/ZslControl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/CameraXConfig;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;",
            ">;)",
            "Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/impl/ComboRequestListener;Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/camera2/compat/quirk/CameraQuirks;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/core/CameraXConfig;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;)Landroidx/camera/camera2/impl/CameraGraphConfigProvider;
    .locals 10

    new-instance v0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;-><init>(Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/impl/ComboRequestListener;Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/camera2/compat/quirk/CameraQuirks;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/core/CameraXConfig;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/impl/CameraGraphConfigProvider;
    .locals 10

    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->callbackMapProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/impl/CameraCallbackMap;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->requestListenerProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/camera/camera2/impl/ComboRequestListener;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->cameraConfigProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/camera/camera2/config/CameraConfig;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->cameraQuirksProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->zslControlProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/camera/camera2/adapter/ZslControl;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->templateParamsOverrideProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->cameraMetadataProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/camera/camera2/pipe/CameraMetadata;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->cameraXConfigProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/camera/core/CameraXConfig;

    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->cameraInteropStateCallbackRepositoryProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;

    invoke-static/range {v1 .. v9}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->newInstance(Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/impl/ComboRequestListener;Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/camera2/compat/quirk/CameraQuirks;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/core/CameraXConfig;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;)Landroidx/camera/camera2/impl/CameraGraphConfigProvider;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 86
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider_Factory;->get()Landroidx/camera/camera2/impl/CameraGraphConfigProvider;

    move-result-object p0

    return-object p0
.end method
