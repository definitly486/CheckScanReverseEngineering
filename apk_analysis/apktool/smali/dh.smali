.class public final synthetic Ldh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/audio/DefaultGainProvider$FadeProvider;
.implements Lyads/l66;
.implements Lyads/jv;


# direct methods
.method public static b(DDDD)D
    .locals 0

    sub-double/2addr p0, p2

    mul-double/2addr p0, p4

    add-double/2addr p0, p6

    return-wide p0
.end method

.method public static c(IIIII)I
    .locals 0

    mul-int/2addr p0, p1

    div-int/2addr p0, p2

    add-int/2addr p0, p3

    invoke-static {p0, p4}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static d(Landroidx/camera/camera2/pipe/core/Debug;J)J
    .locals 2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static e(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Lyads/kv;
    .locals 0

    .line 11
    invoke-static {p1}, Lyads/m04;->a(Landroid/os/Bundle;)Lyads/m04;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lyads/e91;->b(J)Z

    move-result p0

    return p0
.end method

.method public getGainFactorAt(JJ)F
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroidx/media3/common/audio/DefaultGainProvider;->b(JJ)F

    move-result p0

    return p0
.end method
