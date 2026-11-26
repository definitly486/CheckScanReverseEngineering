.class public final Landroidx/camera/camera2/compat/quirk/SurfaceOrderQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/SurfaceOrderQuirk$Companion;
    }
.end annotation


# static fields
.field private static final BUILD_HARDWARE_SET:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Landroidx/camera/camera2/compat/quirk/SurfaceOrderQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/quirk/SurfaceOrderQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/SurfaceOrderQuirk$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/SurfaceOrderQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/SurfaceOrderQuirk$Companion;

    const-string v0, "samsungexynos7570"

    const-string v1, "samsungexynos7870"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/SurfaceOrderQuirk;->BUILD_HARDWARE_SET:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBUILD_HARDWARE_SET$cp()Ljava/util/List;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/compat/quirk/SurfaceOrderQuirk;->BUILD_HARDWARE_SET:Ljava/util/List;

    return-object v0
.end method
