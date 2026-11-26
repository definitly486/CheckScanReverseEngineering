.class public final Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;


# static fields
.field public static final INSTANCE:Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;

    invoke-direct {v0}, Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;->INSTANCE:Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDEVICE_MODELS()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "SM-N9208"

    invoke-static {p0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final isSamsungS6()Z
    .locals 2

    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v0, "Samsung"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lra8;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "zeroflte"

    invoke-static {p0, v0, v1}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final load()Z
    .locals 4

    sget-object v0, Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;->INSTANCE:Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;

    invoke-direct {v0}, Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;->getDEVICE_MODELS()Ljava/util/List;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {v0}, Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;->isSamsungS6()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
