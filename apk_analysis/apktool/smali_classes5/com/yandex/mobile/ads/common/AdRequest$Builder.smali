.class public final Lcom/yandex/mobile/ads/common/AdRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/common/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Ljava/util/Map;

.field private d:Ljava/lang/String;

.field private e:Lcom/yandex/mobile/ads/common/AdTheme;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/common/AdRequest$Builder;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/yandex/mobile/ads/common/AdRequest;
    .locals 7

    new-instance v0, Lcom/yandex/mobile/ads/common/AdRequest;

    iget-object v1, p0, Lcom/yandex/mobile/ads/common/AdRequest$Builder;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/yandex/mobile/ads/common/AdRequest$Builder;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/yandex/mobile/ads/common/AdRequest$Builder;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/yandex/mobile/ads/common/AdRequest$Builder;->e:Lcom/yandex/mobile/ads/common/AdTheme;

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/common/AdRequest;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/common/AdTargeting;Ljava/util/Map;Ljava/lang/String;Lcom/yandex/mobile/ads/common/AdTheme;Ljh2;)V

    return-object v0
.end method
