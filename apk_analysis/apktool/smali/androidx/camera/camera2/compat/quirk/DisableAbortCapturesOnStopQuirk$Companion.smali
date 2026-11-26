.class public final Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk;
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

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 0

    sget-object p0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {p0}, Landroidx/camera/camera2/compat/quirk/Device;->isTecnoDevice()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk;->access$isSamsungNote10PlusDevice$cp()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk;->access$isPocoX3ProDevice$cp()Z

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
