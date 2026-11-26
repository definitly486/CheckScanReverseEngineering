.class public final Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;
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

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;-><init>()V

    return-void
.end method

.method private final isAPI33()Z
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final isAffectedOnePlusDevices()Z
    .locals 1

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAffectedOnePlusModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAPI33()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final isAffectedOnePlusModel()Z
    .locals 2

    invoke-static {}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;->access$getAFFECTED_ONE_PLUS_MODELS$cp()Ljava/util/List;

    move-result-object p0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final isAffectedOppoDevices()Z
    .locals 1

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAffectedOppoModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAPI33()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final isAffectedOppoModel()Z
    .locals 2

    invoke-static {}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;->access$getAFFECTED_OPPO_MODELS$cp()Ljava/util/List;

    move-result-object p0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final isAffectedPixelBuild()Z
    .locals 1

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isTp1aBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isTd1aBuild()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final isAffectedPixelDevices()Z
    .locals 1

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAffectedPixelModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAffectedPixelBuild()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final isAffectedPixelModel()Z
    .locals 2

    invoke-static {}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;->access$getAFFECTED_PIXEL_MODELS$cp()Ljava/util/List;

    move-result-object p0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final isAffectedSamsungDevices()Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isTp1aBuild()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final isAffectedXiaomiDevices()Z
    .locals 2

    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isRedmiDevice()Z

    move-result v1

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isXiaomiDevice()Z

    move-result v0

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isTkq1Build()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isTp1aBuild()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final isTd1aBuild()Z
    .locals 2

    sget-object p0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "TD1A"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final isTkq1Build()Z
    .locals 2

    sget-object p0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "TKQ1"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final isTp1aBuild()Z
    .locals 2

    sget-object p0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "TP1A"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAffectedSamsungDevices()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAffectedPixelDevices()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAffectedXiaomiDevices()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAffectedOppoDevices()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAffectedOnePlusDevices()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
