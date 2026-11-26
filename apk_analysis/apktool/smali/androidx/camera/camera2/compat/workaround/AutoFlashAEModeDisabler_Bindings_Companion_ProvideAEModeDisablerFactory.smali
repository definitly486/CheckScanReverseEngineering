.class public final Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler_Bindings_Companion_ProvideAEModeDisablerFactory;
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

    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler_Bindings_Companion_ProvideAEModeDisablerFactory;->cameraQuirksProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;)Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler_Bindings_Companion_ProvideAEModeDisablerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/compat/quirk/CameraQuirks;",
            ">;)",
            "Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler_Bindings_Companion_ProvideAEModeDisablerFactory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler_Bindings_Companion_ProvideAEModeDisablerFactory;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler_Bindings_Companion_ProvideAEModeDisablerFactory;-><init>(Lxs6;)V

    return-object v0
.end method

.method public static provideAEModeDisabler(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler$Bindings;->Companion:Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler$Bindings$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler$Bindings$Companion;->provideAEModeDisabler(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler_Bindings_Companion_ProvideAEModeDisablerFactory;->cameraQuirksProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    invoke-static {p0}, Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler_Bindings_Companion_ProvideAEModeDisablerFactory;->provideAEModeDisabler(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler_Bindings_Companion_ProvideAEModeDisablerFactory;->get()Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;

    move-result-object p0

    return-object p0
.end method
