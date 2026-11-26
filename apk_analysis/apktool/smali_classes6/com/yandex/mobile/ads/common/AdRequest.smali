.class public final Lcom/yandex/mobile/ads/common/AdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/common/AdRequest$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/yandex/mobile/ads/common/AdTheme;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/common/AdTargeting;Ljava/util/Map;Ljava/lang/String;Lcom/yandex/mobile/ads/common/AdTheme;Ljh2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/common/AdRequest;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/mobile/ads/common/AdRequest;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/yandex/mobile/ads/common/AdRequest;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/yandex/mobile/ads/common/AdRequest;->e:Lcom/yandex/mobile/ads/common/AdTheme;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/yandex/mobile/ads/common/AdRequest;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/common/AdRequest;

    iget-object v2, p0, Lcom/yandex/mobile/ads/common/AdRequest;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/common/AdRequest;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/yandex/mobile/ads/common/AdRequest;->c:Ljava/util/Map;

    iget-object v3, p1, Lcom/yandex/mobile/ads/common/AdRequest;->c:Ljava/util/Map;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/yandex/mobile/ads/common/AdRequest;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/common/AdRequest;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object p0, p0, Lcom/yandex/mobile/ads/common/AdRequest;->e:Lcom/yandex/mobile/ads/common/AdTheme;

    iget-object p1, p1, Lcom/yandex/mobile/ads/common/AdRequest;->e:Lcom/yandex/mobile/ads/common/AdTheme;

    if-ne p0, p1, :cond_5

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/common/AdRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getBiddingData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/common/AdRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getParameters()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/common/AdRequest;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final getPreferredTheme()Lcom/yandex/mobile/ads/common/AdTheme;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/common/AdRequest;->e:Lcom/yandex/mobile/ads/common/AdTheme;

    return-object p0
.end method

.method public final getTargeting()Lcom/yandex/mobile/ads/common/AdTargeting;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/common/AdRequest;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3c1

    iget-object v1, p0, Lcom/yandex/mobile/ads/common/AdRequest;->c:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/common/AdRequest;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/common/AdRequest;->e:Lcom/yandex/mobile/ads/common/AdTheme;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method
