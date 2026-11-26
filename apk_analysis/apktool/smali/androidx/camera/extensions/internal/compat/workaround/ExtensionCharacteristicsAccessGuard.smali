.class public final Landroidx/camera/extensions/internal/compat/workaround/ExtensionCharacteristicsAccessGuard;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final avoidCaptureProcessProgressAvailabilityCheckQuirk:Landroidx/camera/extensions/internal/compat/quirk/AvoidCaptureProcessProgressAvailabilityCheckQuirk;

.field private final avoidPostviewAvailabilityCheckQuirk:Landroidx/camera/extensions/internal/compat/quirk/AvoidPostviewAvailabilityCheckQuirk;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroidx/camera/extensions/internal/compat/quirk/AvoidPostviewAvailabilityCheckQuirk;

    invoke-static {v0}, Landroidx/camera/extensions/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/extensions/internal/compat/quirk/AvoidPostviewAvailabilityCheckQuirk;

    iput-object v0, p0, Landroidx/camera/extensions/internal/compat/workaround/ExtensionCharacteristicsAccessGuard;->avoidPostviewAvailabilityCheckQuirk:Landroidx/camera/extensions/internal/compat/quirk/AvoidPostviewAvailabilityCheckQuirk;

    const-class v0, Landroidx/camera/extensions/internal/compat/quirk/AvoidCaptureProcessProgressAvailabilityCheckQuirk;

    invoke-static {v0}, Landroidx/camera/extensions/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/extensions/internal/compat/quirk/AvoidCaptureProcessProgressAvailabilityCheckQuirk;

    iput-object v0, p0, Landroidx/camera/extensions/internal/compat/workaround/ExtensionCharacteristicsAccessGuard;->avoidCaptureProcessProgressAvailabilityCheckQuirk:Landroidx/camera/extensions/internal/compat/quirk/AvoidCaptureProcessProgressAvailabilityCheckQuirk;

    return-void
.end method


# virtual methods
.method public final allowCaptureProcessProgressAvailabilityCheck()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/extensions/internal/compat/workaround/ExtensionCharacteristicsAccessGuard;->avoidCaptureProcessProgressAvailabilityCheckQuirk:Landroidx/camera/extensions/internal/compat/quirk/AvoidCaptureProcessProgressAvailabilityCheckQuirk;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final allowPostviewAvailabilityCheck()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/extensions/internal/compat/workaround/ExtensionCharacteristicsAccessGuard;->avoidPostviewAvailabilityCheckQuirk:Landroidx/camera/extensions/internal/compat/quirk/AvoidPostviewAvailabilityCheckQuirk;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
