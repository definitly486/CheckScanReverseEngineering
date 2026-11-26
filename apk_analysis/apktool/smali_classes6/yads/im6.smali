.class public final Lyads/im6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/common/AdRequest;)Lyads/n8;
    .locals 14

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/common/AdRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/common/AdRequest;->getTargeting()Lcom/yandex/mobile/ads/common/AdTargeting;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/common/AdRequest;->getTargeting()Lcom/yandex/mobile/ads/common/AdTargeting;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/common/AdRequest;->getTargeting()Lcom/yandex/mobile/ads/common/AdTargeting;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/common/AdRequest;->getTargeting()Lcom/yandex/mobile/ads/common/AdTargeting;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/common/AdRequest;->getTargeting()Lcom/yandex/mobile/ads/common/AdTargeting;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/common/AdRequest;->getParameters()Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/common/AdRequest;->getParameters()Ljava/util/Map;

    move-result-object p0

    move-object v7, p0

    goto :goto_0

    :cond_0
    move-object v7, v0

    :goto_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/common/AdRequest;->getBiddingData()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/common/AdRequest;->getBiddingData()Ljava/lang/String;

    move-result-object p0

    move-object v8, p0

    goto :goto_1

    :cond_1
    move-object v8, v0

    :goto_1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/common/AdRequest;->getPreferredTheme()Lcom/yandex/mobile/ads/common/AdTheme;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/common/AdRequest;->getPreferredTheme()Lcom/yandex/mobile/ads/common/AdTheme;

    move-result-object p0

    invoke-static {p0}, Lyads/k85;->a(Lcom/yandex/mobile/ads/common/AdTheme;)Lyads/i85;

    move-result-object v0

    :cond_2
    move-object v10, v0

    sget-object p0, Lyads/zg5;->l:Lyads/zg5;

    if-nez p0, :cond_4

    sget-object p0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object p1, Lyads/zg5;->l:Lyads/zg5;

    if-nez p1, :cond_3

    new-instance p1, Lyads/zg5;

    invoke-direct {p1}, Lyads/zg5;-><init>()V

    sput-object p1, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit p0

    move-object p0, p1

    goto :goto_4

    :goto_3
    monitor-exit p0

    throw p1

    :cond_4
    :goto_4
    invoke-virtual {p0}, Lyads/zg5;->a()Lyads/fb;

    new-instance v0, Lyads/n8;

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Lyads/n8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/location/Location;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lyads/i85;ZLjava/lang/String;Lyads/o70;)V

    return-object v0
.end method
