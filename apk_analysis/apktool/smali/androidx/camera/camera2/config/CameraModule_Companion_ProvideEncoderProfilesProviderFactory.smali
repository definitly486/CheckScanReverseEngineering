.class public final Landroidx/camera/camera2/config/CameraModule_Companion_ProvideEncoderProfilesProviderFactory;
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
.field private final cameraIdStringProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Ljava/lang/String;",
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


# direct methods
.method private constructor <init>(Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Ljava/lang/String;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/compat/quirk/CameraQuirks;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideEncoderProfilesProviderFactory;->cameraIdStringProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideEncoderProfilesProviderFactory;->cameraQuirksProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;)Landroidx/camera/camera2/config/CameraModule_Companion_ProvideEncoderProfilesProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Ljava/lang/String;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/compat/quirk/CameraQuirks;",
            ">;)",
            "Landroidx/camera/camera2/config/CameraModule_Companion_ProvideEncoderProfilesProviderFactory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideEncoderProfilesProviderFactory;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideEncoderProfilesProviderFactory;-><init>(Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static provideEncoderProfilesProvider(Ljava/lang/String;Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/core/impl/EncoderProfilesProvider;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/config/CameraModule;->Companion:Landroidx/camera/camera2/config/CameraModule$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/camera/camera2/config/CameraModule$Companion;->provideEncoderProfilesProvider(Ljava/lang/String;Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/core/impl/EncoderProfilesProvider;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/camera/core/impl/EncoderProfilesProvider;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideEncoderProfilesProviderFactory;->cameraIdStringProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideEncoderProfilesProviderFactory;->cameraQuirksProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    invoke-static {v0, p0}, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideEncoderProfilesProviderFactory;->provideEncoderProfilesProvider(Ljava/lang/String;Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/core/impl/EncoderProfilesProvider;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0}, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideEncoderProfilesProviderFactory;->get()Landroidx/camera/core/impl/EncoderProfilesProvider;

    move-result-object p0

    return-object p0
.end method
