.class public final Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final extraCroppingQuirk:Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;-><init>(Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;->extraCroppingQuirk:Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class p2, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;

    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;-><init>(Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;)V

    return-void
.end method


# virtual methods
.method public final getMaxPreviewResolution(Landroid/util/Size;)Landroid/util/Size;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;->extraCroppingQuirk:Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;->getVerifiedResolution(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;)Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v2, v0

    if-le v1, v2, :cond_2

    return-object p0

    :cond_2
    return-object p1
.end method
