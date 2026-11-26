.class public final Lyads/qn6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/j80;


# direct methods
.method public static final a(Lyads/qn6;)Lj59;
    .locals 0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Lso9;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lso9;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lll3;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lyads/qn6;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "YandexNativeAdImageLoadingListenerAdapter(imageLoadingListener=null)"

    return-object p0
.end method
