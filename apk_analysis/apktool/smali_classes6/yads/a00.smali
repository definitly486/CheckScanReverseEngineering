.class public final Lyads/a00;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lyads/zz;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lyads/uz;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/uz;

    iget-object p0, p0, Lyads/uz;->a:Lyads/by4;

    iget-object p0, p0, Lyads/by4;->h:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "unknown"

    :cond_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lyads/vz;

    if-eqz v0, :cond_2

    const-string p0, "default"

    return-object p0

    :cond_2
    instance-of v0, p0, Lyads/tz;

    if-eqz v0, :cond_3

    const-string p0, "custom"

    return-object p0

    :cond_3
    instance-of v0, p0, Lyads/wz;

    if-eqz v0, :cond_4

    const-string p0, "error"

    return-object p0

    :cond_4
    instance-of v0, p0, Lyads/xz;

    if-eqz v0, :cond_5

    const-string p0, "browser"

    return-object p0

    :cond_5
    instance-of p0, p0, Lyads/yz;

    if-eqz p0, :cond_6

    const-string p0, "internal_browser"

    return-object p0

    :cond_6
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
