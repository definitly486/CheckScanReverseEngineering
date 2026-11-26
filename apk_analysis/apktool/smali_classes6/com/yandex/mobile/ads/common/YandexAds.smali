.class public final Lcom/yandex/mobile/ads/common/YandexAds;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/yandex/mobile/ads/common/YandexAds;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/common/YandexAds;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/common/YandexAds;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/common/YandexAds;->INSTANCE:Lcom/yandex/mobile/ads/common/YandexAds;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final initialize(Landroid/content/Context;Lcom/yandex/mobile/ads/common/InitializationListener;)V
    .locals 1

    new-instance v0, Lyads/um6;

    invoke-direct {v0, p1}, Lyads/um6;-><init>(Lcom/yandex/mobile/ads/common/InitializationListener;)V

    new-instance p1, Lyads/do6;

    invoke-direct {p1, p0}, Lyads/do6;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1, v0}, Lyads/ha4;->a(Landroid/content/Context;Lyads/do6;Lyads/t70;)V

    return-void
.end method
