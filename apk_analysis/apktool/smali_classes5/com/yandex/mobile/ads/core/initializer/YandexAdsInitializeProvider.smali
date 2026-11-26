.class public final Lcom/yandex/mobile/ads/core/initializer/YandexAdsInitializeProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# instance fields
.field private final a:Lyads/sh;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 13
    invoke-direct {p0, v0, v1, v0}, Lcom/yandex/mobile/ads/core/initializer/YandexAdsInitializeProvider;-><init>(Lyads/sh;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lyads/sh;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/yandex/mobile/ads/core/initializer/YandexAdsInitializeProvider;->a:Lyads/sh;

    return-void
.end method

.method public synthetic constructor <init>(Lyads/sh;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lyads/sh;

    invoke-direct {p1}, Lyads/sh;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/core/initializer/YandexAdsInitializeProvider;-><init>(Lyads/sh;)V

    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/core/initializer/YandexAdsInitializeProvider;->a:Lyads/sh;

    new-instance v1, Lyads/do6;

    invoke-direct {v1, v0}, Lyads/do6;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lyads/sh;->a:Ly22;

    new-instance v2, Lyads/rh;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lyads/rh;-><init>(Landroid/content/Context;Lyads/do6;Le02;)V

    const/4 v0, 0x3

    invoke-static {p0, v3, v3, v2, v0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
