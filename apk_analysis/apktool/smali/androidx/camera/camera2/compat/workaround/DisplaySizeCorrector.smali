.class public final Landroidx/camera/camera2/compat/workaround/DisplaySizeCorrector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final smallDisplaySizeQuirk:Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class v1, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;

    iput-object v0, p0, Landroidx/camera/camera2/compat/workaround/DisplaySizeCorrector;->smallDisplaySizeQuirk:Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;

    return-void
.end method


# virtual methods
.method public final getDisplaySize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/DisplaySizeCorrector;->smallDisplaySizeQuirk:Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;->getDisplaySize()Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
