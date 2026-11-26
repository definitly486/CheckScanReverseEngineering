.class public final Lcom/yandex/mobile/ads/banner/BannerAdSize;
.super Lyads/n05;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/banner/BannerAdSize$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/mobile/ads/banner/BannerAdSize$a;


# instance fields
.field private final b:Lyads/sl5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/banner/BannerAdSize$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/banner/BannerAdSize$a;-><init>(Ljh2;)V

    sput-object v0, Lcom/yandex/mobile/ads/banner/BannerAdSize;->a:Lcom/yandex/mobile/ads/banner/BannerAdSize$a;

    return-void
.end method

.method public constructor <init>(Lyads/sl5;)V
    .locals 0

    invoke-direct {p0}, Lyads/n05;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/banner/BannerAdSize;->b:Lyads/sl5;

    return-void
.end method


# virtual methods
.method public final a()Lyads/sl5;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/banner/BannerAdSize;->b:Lyads/sl5;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/yandex/mobile/ads/banner/BannerAdSize;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/banner/BannerAdSize;

    iget-object p0, p0, Lcom/yandex/mobile/ads/banner/BannerAdSize;->b:Lyads/sl5;

    iget-object p1, p1, Lcom/yandex/mobile/ads/banner/BannerAdSize;->b:Lyads/sl5;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/banner/BannerAdSize;->b:Lyads/sl5;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/banner/BannerAdSize;->b:Lyads/sl5;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
