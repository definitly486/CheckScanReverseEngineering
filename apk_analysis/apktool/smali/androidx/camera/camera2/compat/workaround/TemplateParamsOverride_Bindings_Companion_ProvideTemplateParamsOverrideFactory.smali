.class public final Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride_Bindings_Companion_ProvideTemplateParamsOverrideFactory;
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
.field private final cameraQuirksProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/compat/quirk/CameraQuirks;",
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
            "Landroidx/camera/camera2/compat/quirk/CameraQuirks;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride_Bindings_Companion_ProvideTemplateParamsOverrideFactory;->cameraQuirksProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;)Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride_Bindings_Companion_ProvideTemplateParamsOverrideFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/compat/quirk/CameraQuirks;",
            ">;)",
            "Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride_Bindings_Companion_ProvideTemplateParamsOverrideFactory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride_Bindings_Companion_ProvideTemplateParamsOverrideFactory;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride_Bindings_Companion_ProvideTemplateParamsOverrideFactory;-><init>(Lxs6;)V

    return-object v0
.end method

.method public static provideTemplateParamsOverride(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride$Bindings;->Companion:Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride$Bindings$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride$Bindings$Companion;->provideTemplateParamsOverride(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride_Bindings_Companion_ProvideTemplateParamsOverrideFactory;->cameraQuirksProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    invoke-static {p0}, Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride_Bindings_Companion_ProvideTemplateParamsOverrideFactory;->provideTemplateParamsOverride(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride_Bindings_Companion_ProvideTemplateParamsOverrideFactory;->get()Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    move-result-object p0

    return-object p0
.end method
