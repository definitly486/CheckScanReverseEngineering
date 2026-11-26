.class public final Landroidx/camera/camera2/compat/quirk/Device;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/compat/quirk/Device;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/quirk/Device;-><init>()V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final equalsCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    invoke-static {p1, p2, p0}, Lra8;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final isDeviceFrom(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Landroidx/camera/camera2/compat/quirk/Device;->equalsCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Landroidx/camera/camera2/compat/quirk/Device;->equalsCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)Z

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


# virtual methods
.method public final isBluDevice()Z
    .locals 1

    const-string v0, "Blu"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isGoogleDevice()Z
    .locals 1

    const-string v0, "Google"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isHuaweiDevice()Z
    .locals 1

    const-string v0, "Huawei"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isInfinixDevice()Z
    .locals 1

    const-string v0, "Infinix"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isItelDevice()Z
    .locals 1

    const-string v0, "Itel"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isJioDevice()Z
    .locals 1

    const-string v0, "Jio"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isMotorolaDevice()Z
    .locals 1

    const-string v0, "Motorola"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isNokiaDevice()Z
    .locals 1

    const-string v0, "Nokia"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isOnePlusDevice()Z
    .locals 1

    const-string v0, "OnePlus"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isOppoDevice()Z
    .locals 1

    const-string v0, "Oppo"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isPocoDevice()Z
    .locals 1

    const-string v0, "Poco"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isPositivoDevice()Z
    .locals 1

    const-string v0, "Positivo"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isRealmeDevice()Z
    .locals 1

    const-string v0, "Realme"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isRedmiDevice()Z
    .locals 1

    const-string v0, "Redmi"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isSamsungDevice()Z
    .locals 1

    const-string v0, "Samsung"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isSonyDevice()Z
    .locals 1

    const-string v0, "Sony"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isTecnoDevice()Z
    .locals 1

    const-string v0, "Tecno"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Tecno-mobile"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

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

.method public final isUniSocChipsetDevice()Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const-string v0, "Spreadtrum"

    sget-object v1, Landroid/os/Build;->SOC_MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "ums"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroidx/camera/camera2/compat/quirk/Device;->isItelDevice()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "sp"

    invoke-static {p0, v0, v4}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isVivoDevice()Z
    .locals 1

    const-string v0, "Vivo"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isXiaomiDevice()Z
    .locals 1

    const-string v0, "Xiaomi"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/Device;->isDeviceFrom(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
