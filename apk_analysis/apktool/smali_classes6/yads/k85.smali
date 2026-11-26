.class public final Lyads/k85;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/yandex/mobile/ads/common/AdTheme;)Lyads/i85;
    .locals 1

    sget-object v0, Lyads/j85;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lyads/i85;->c:Lyads/i85;

    return-object p0

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lyads/i85;->d:Lyads/i85;

    return-object p0
.end method
