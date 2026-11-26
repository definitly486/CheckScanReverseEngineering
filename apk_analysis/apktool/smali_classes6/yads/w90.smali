.class public final Lyads/w90;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/s70;)Lcom/yandex/mobile/ads/common/Creative;
    .locals 5

    new-instance v0, Lcom/yandex/mobile/ads/common/Creative;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    iget-object v2, p0, Lyads/s70;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p0, :cond_1

    iget-object v3, p0, Lyads/s70;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz p0, :cond_2

    iget-object v4, p0, Lyads/s70;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    if-eqz p0, :cond_3

    iget-object v1, p0, Lyads/s70;->d:Ljava/lang/String;

    :cond_3
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/yandex/mobile/ads/common/Creative;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
