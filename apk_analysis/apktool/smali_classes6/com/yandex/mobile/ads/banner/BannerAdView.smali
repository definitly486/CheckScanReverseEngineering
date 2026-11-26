.class public final Lcom/yandex/mobile/ads/banner/BannerAdView;
.super Lyads/pn3;
.source "SourceFile"


# instance fields
.field private final l:Lyads/jm6;

.field private final m:Lyads/gm6;

.field private final n:Lcom/yandex/mobile/ads/common/VideoController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/banner/BannerAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/banner/BannerAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    new-instance v4, Lyads/e4;

    sget-object v0, Lyads/n70;->d:Lyads/n70;

    invoke-direct {v4, v0}, Lyads/e4;-><init>(Lyads/n70;)V

    new-instance v5, Lyads/do6;

    invoke-direct {v5, p1}, Lyads/do6;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lyads/pn3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILyads/e4;Lyads/do6;)V

    new-instance p0, Lyads/jm6;

    invoke-direct {p0}, Lyads/jm6;-><init>()V

    iput-object p0, v0, Lcom/yandex/mobile/ads/banner/BannerAdView;->l:Lyads/jm6;

    new-instance p0, Lyads/gm6;

    invoke-direct {p0}, Lyads/gm6;-><init>()V

    iput-object p0, v0, Lcom/yandex/mobile/ads/banner/BannerAdView;->m:Lyads/gm6;

    new-instance p0, Lcom/yandex/mobile/ads/common/VideoController;

    invoke-virtual {v0}, Lyads/pn3;->d()Lyads/gd6;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/common/VideoController;-><init>(Lyads/gd6;)V

    iput-object p0, v0, Lcom/yandex/mobile/ads/banner/BannerAdView;->n:Lcom/yandex/mobile/ads/common/VideoController;

    return-void
.end method


# virtual methods
.method public final getAdInfo()Lcom/yandex/mobile/ads/common/AdInfo;
    .locals 1

    invoke-virtual {p0}, Lyads/pn3;->c()Lyads/i70;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/banner/BannerAdView;->m:Lyads/gm6;

    invoke-virtual {p0, v0}, Lyads/gm6;->a(Lyads/i70;)Lcom/yandex/mobile/ads/common/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getAdSize()Lcom/yandex/mobile/ads/banner/BannerAdSize;
    .locals 1

    invoke-virtual {p0}, Lyads/pn3;->b()Lyads/r70;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/banner/BannerAdSize;

    iget-object p0, p0, Lyads/r70;->a:Lyads/sl5;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/banner/BannerAdSize;-><init>(Lyads/sl5;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVideoController()Lcom/yandex/mobile/ads/common/VideoController;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/banner/BannerAdView;->n:Lcom/yandex/mobile/ads/common/VideoController;

    return-object p0
.end method

.method public final setAdSize(Lcom/yandex/mobile/ads/banner/BannerAdSize;)V
    .locals 0

    invoke-static {p1}, Lcom/yandex/mobile/ads/banner/a;->a(Lcom/yandex/mobile/ads/banner/BannerAdSize;)Lyads/r70;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyads/pn3;->a(Lyads/r70;)V

    return-void
.end method

.method public final setBannerAdEventListener(Lcom/yandex/mobile/ads/banner/BannerAdEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lyads/pm6;

    invoke-direct {v0, p1}, Lyads/pm6;-><init>(Lcom/yandex/mobile/ads/banner/BannerAdEventListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lyads/pn3;->a(Lyads/pm6;)V

    return-void
.end method
