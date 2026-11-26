.class public final Lyads/km6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/m4;)Lcom/yandex/mobile/ads/common/AdRequestError;
    .locals 3

    new-instance v0, Lcom/yandex/mobile/ads/common/AdRequestError;

    iget v1, p0, Lyads/m4;->a:I

    iget-object v2, p0, Lyads/m4;->c:Ljava/lang/String;

    iget-object p0, p0, Lyads/m4;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/yandex/mobile/ads/common/AdRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
