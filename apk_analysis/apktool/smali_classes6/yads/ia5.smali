.class public final Lyads/ia5;
.super Lf02;
.source "SourceFile"


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/ia5;->c:Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/ia5;->b:Ljava/lang/Object;

    iget p1, p0, Lyads/ia5;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/ia5;->d:I

    iget-object p1, p0, Lyads/ia5;->c:Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;->loadAd(Lcom/yandex/mobile/ads/common/AdRequest;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
