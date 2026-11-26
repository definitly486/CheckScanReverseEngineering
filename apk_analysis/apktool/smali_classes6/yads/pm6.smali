.class public final Lyads/pm6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/banner/BannerAdEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lyads/pm6;)Lj59;
    .locals 0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/pm6;Lcom/yandex/mobile/ads/common/AdRequestError;)Lj59;
    .locals 0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/pm6;Lyads/tm6;)Lj59;
    .locals 0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Lyads/pm6;)Lj59;
    .locals 0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 25
    new-instance v0, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Lsk;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lsk;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lll3;)V

    return-void
.end method

.method public final a(Lyads/j5;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 28
    new-instance v0, Lyads/tm6;

    invoke-direct {v0, p1}, Lyads/tm6;-><init>(Lyads/j5;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    new-instance p1, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Lfb2;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, v0}, Lfb2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lll3;)V

    return-void
.end method

.method public final a(Lyads/m4;)V
    .locals 3

    new-instance v0, Lcom/yandex/mobile/ads/common/AdRequestError;

    iget v1, p1, Lyads/m4;->a:I

    iget-object v2, p1, Lyads/m4;->c:Ljava/lang/String;

    iget-object p1, p1, Lyads/m4;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/yandex/mobile/ads/common/AdRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Leb2;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, v0}, Leb2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lll3;)V

    return-void
.end method

.method public final b()V
    .locals 3

    new-instance v0, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Lim5;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lim5;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lll3;)V

    return-void
.end method
