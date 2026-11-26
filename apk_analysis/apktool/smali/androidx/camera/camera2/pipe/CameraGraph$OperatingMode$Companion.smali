.class public final Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;
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

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final custom-EP6OhB0(I)I
    .locals 1

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getNORMAL-2uNL3no()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getHIGH_SPEED-2uNL3no()I

    move-result p0

    if-eq p1, p0, :cond_0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->access$constructor-impl(I)I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Custom operating mode "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " conflicts with standard modes"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CXCP"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "kotlin.Unit"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getEXTENSION-2uNL3no()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->access$getEXTENSION$cp()I

    move-result p0

    return p0
.end method

.method public final getHIGH_SPEED-2uNL3no()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->access$getHIGH_SPEED$cp()I

    move-result p0

    return p0
.end method

.method public final getNORMAL-2uNL3no()I
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->access$getNORMAL$cp()I

    move-result p0

    return p0
.end method
