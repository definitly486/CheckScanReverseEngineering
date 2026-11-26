.class public final Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate$Bindings$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate$Bindings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate$Bindings$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideUseFlashModeTorchFor3aUpdate(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    move-result-object p0

    const-class p1, Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;

    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdateImpl;->INSTANCE:Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdateImpl;

    return-object p0

    :cond_0
    sget-object p0, Landroidx/camera/camera2/compat/workaround/NotUseFlashModeTorchFor3aUpdate;->INSTANCE:Landroidx/camera/camera2/compat/workaround/NotUseFlashModeTorchFor3aUpdate;

    return-object p0
.end method
