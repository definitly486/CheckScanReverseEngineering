.class public final Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/stabilization/VideoStabilization;
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

    invoke-direct {p0}, Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;-><init>()V

    return-void
.end method

.method public static synthetic from$camera_core$default(Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;IIILjava/lang/Object;)Landroidx/camera/core/impl/stabilization/VideoStabilization;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;->from$camera_core(II)Landroidx/camera/core/impl/stabilization/VideoStabilization;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final from$camera_core(II)Landroidx/camera/core/impl/stabilization/VideoStabilization;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    sget-object p0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    return-object p0

    :cond_1
    if-ne p2, p0, :cond_2

    sget-object p0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->ON:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    return-object p0

    :cond_2
    sget-object p0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->UNSPECIFIED:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->OFF:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    return-object p0
.end method
